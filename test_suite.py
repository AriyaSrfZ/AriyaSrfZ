#!/usr/bin/env python3
"""
Test and Verification Suite for AriyaSrfZ Profile & Infrastructure Repository.
Validates:
1. JSON integrity for all n8n workflows, templates, and floorplan graphs.
2. SVG XML validity for all architectural diagrams and arcade assets.
3. Local markdown reference integrity in README.md.
4. Bash syntax check (`bash -n`) across all shell scripts.
5. Shell hook execution (`setup_env.sh`) for VHS terminal recordings.
6. Floorplan query CLI execution and overview schema.
7. Docker Compose configuration syntax for n8n.
8. VHS tape script validation.
"""

import glob
import json
import os
import re
import subprocess
import sys
import unittest
import xml.etree.ElementTree as ET

REPO_ROOT = os.path.dirname(os.path.abspath(__file__))


class TestAriyaSrfZRepository(unittest.TestCase):

    def test_json_validity(self):
        """Ensure all JSON files across n8n and floorplan are syntactically valid."""
        json_files = glob.glob(os.path.join(REPO_ROOT, "**/*.json"), recursive=True)
        self.assertGreater(len(json_files), 0, "No JSON files discovered in repository.")
        for path in json_files:
            with self.subTest(file=os.path.relpath(path, REPO_ROOT)):
                with open(path, "r", encoding="utf-8") as f:
                    try:
                        data = json.load(f)
                        self.assertIsInstance(data, (dict, list))
                    except Exception as e:
                        self.fail(f"Invalid JSON in {path}: {e}")

    def test_svg_xml_validity(self):
        """Ensure all architectural and arcade SVG files are well-formed XML."""
        svg_files = glob.glob(os.path.join(REPO_ROOT, "assets/**/*.svg"), recursive=True)
        self.assertGreater(len(svg_files), 0, "No SVG files discovered in assets/.")
        for path in svg_files:
            with self.subTest(file=os.path.relpath(path, REPO_ROOT)):
                try:
                    tree = ET.parse(path)
                    root = tree.getroot()
                    self.assertTrue(root.tag.endswith("svg"), f"Root tag of {path} is not svg: {root.tag}")
                except Exception as e:
                    self.fail(f"Invalid SVG XML in {path}: {e}")

    def test_readme_local_links(self):
        """Ensure all local file references in README.md exist on disk."""
        readme_path = os.path.join(REPO_ROOT, "README.md")
        self.assertTrue(os.path.isfile(readme_path), "README.md does not exist.")
        with open(readme_path, "r", encoding="utf-8") as f:
            content = f.read()

        html_links = re.findall(r"(?:src|href)=[\"\x27]([^\"]+)[\"\x27]", content)
        md_links = re.findall(r"\[.*?\]\((.*?)\)", content)
        all_links = set(html_links + md_links)

        for link in all_links:
            if link.startswith(("http://", "https://", "mailto:", "#")):
                continue
            clean_path = link.split("#")[0].split("?")[0]
            if clean_path:
                full_path = os.path.join(REPO_ROOT, clean_path)
                self.assertTrue(
                    os.path.exists(full_path),
                    f"Broken local link in README.md: {link} (resolved to {full_path})"
                )

    def test_shell_syntax(self):
        """Ensure all shell scripts pass `bash -n` syntax check."""
        scripts = [
            os.path.join(REPO_ROOT, "setup_env.sh"),
            os.path.join(REPO_ROOT, "update.sh"),
            os.path.join(REPO_ROOT, "n8n/scripts/start_tunnel.sh"),
            os.path.join(REPO_ROOT, "n8n/scripts/import_all_workflows.sh"),
        ]
        for script in scripts:
            with self.subTest(script=os.path.relpath(script, REPO_ROOT)):
                res = subprocess.run(["bash", "-n", script], capture_output=True, text=True)
                self.assertEqual(res.returncode, 0, f"Syntax error in {script}: {res.stderr}")

    def test_setup_env_hooks(self):
        """Ensure setup_env.sh defines expected functions and responds to spec queries."""
        cmd = "source ./setup_env.sh && whoami --spec && node status: test && sys --query role && ariya-cli"
        res = subprocess.run(
            ["bash", "-c", cmd],
            cwd=REPO_ROOT,
            capture_output=True,
            text=True
        )
        self.assertEqual(res.returncode, 0, f"setup_env.sh execution failed: {res.stderr}")
        self.assertIn("Ariya Sarrafzadeh", res.stdout)
        self.assertIn("ISO 8583 Switches", res.stdout)
        self.assertIn("ONLINE 200 OK", res.stdout)
        self.assertIn("ROLE:", res.stdout)
        self.assertIn("Core Rails:", res.stdout)

    def test_floorplan_query_cli(self):
        """Ensure floorplan/query.mjs overview and find work via node."""
        overview_res = subprocess.run(
            ["node", "floorplan/query.mjs", "overview"],
            cwd=REPO_ROOT,
            capture_output=True,
            text=True
        )
        self.assertEqual(overview_res.returncode, 0, f"query.mjs overview failed: {overview_res.stderr}")
        overview_data = json.loads(overview_res.stdout)
        self.assertEqual(overview_data.get("project"), "Ariyasrfz")
        self.assertIn("systems", overview_data)

        find_res = subprocess.run(
            ["node", "floorplan/query.mjs", "find", "setup_env.sh"],
            cwd=REPO_ROOT,
            capture_output=True,
            text=True
        )
        self.assertEqual(find_res.returncode, 0, f"query.mjs find failed: {find_res.stderr}")
        find_data = json.loads(find_res.stdout)
        self.assertTrue(any("setup_env.sh" in item.get("path", "") for item in find_data))

    def test_docker_compose_validity(self):
        """Ensure n8n/docker-compose.yml is valid according to docker compose config."""
        compose_file = os.path.join(REPO_ROOT, "n8n/docker-compose.yml")
        res = subprocess.run(
            ["docker", "compose", "-f", compose_file, "config"],
            cwd=REPO_ROOT,
            capture_output=True,
            text=True
        )
        self.assertEqual(res.returncode, 0, f"docker compose config failed: {res.stderr}")
        self.assertNotIn("the attribute `version` is obsolete", res.stderr)

    def test_vhs_tape_validation(self):
        """Ensure intro.tape is valid with VHS if vhs binary is available."""
        tape_file = os.path.join(REPO_ROOT, "intro.tape")
        self.assertTrue(os.path.isfile(tape_file), "intro.tape not found.")
        vhs_check = subprocess.run(["which", "vhs"], capture_output=True, text=True)
        if vhs_check.returncode == 0:
            res = subprocess.run(["vhs", "validate", tape_file], cwd=REPO_ROOT, capture_output=True, text=True)
            self.assertEqual(res.returncode, 0, f"vhs validate failed: {res.stderr}")


if __name__ == "__main__":
    unittest.main()
