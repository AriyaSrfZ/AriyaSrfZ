<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:090A0C,100:0EA5E9&height=180&section=header&text=Ariya%20Sarrafzadeh&fontColor=ffffff&fontSize=44&fontAlignY=36&desc=Systems%20Engineer%20%C2%B7%20Distributed%20Platforms%20%C2%B7%20Developer%20Tooling&descAlignY=58&descSize=16" alt="Ariya Sarrafzadeh, Systems Engineer" width="100%">
</p>

<p align="center">
  <b>Building robust distributed platforms, high-throughput telecom tooling, and developer microservices.</b><br>
  Zero-drift state machines · REST/SMPP messaging infrastructure · Computer vision document scanning · Offline telemetry
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" alt="Python">
  <img src="https://img.shields.io/badge/Go-00ADD8?style=flat-square&logo=go&logoColor=white" alt="Go">
  <img src="https://img.shields.io/badge/TypeScript-3178C6?style=flat-square&logo=typescript&logoColor=white" alt="TypeScript">
  <img src="https://img.shields.io/badge/FastAPI-009688?style=flat-square&logo=fastapi&logoColor=white" alt="FastAPI">
  <img src="https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white" alt="PostgreSQL">
  <img src="https://img.shields.io/badge/DuckDB-FFF000?style=flat-square&logo=duckdb&logoColor=black" alt="DuckDB">
  <img src="https://img.shields.io/badge/Redis-DC382D?style=flat-square&logo=redis&logoColor=white" alt="Redis">
  <img src="https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white" alt="Docker">
  <img src="https://img.shields.io/badge/Linux-FCC624?style=flat-square&logo=linux&logoColor=black" alt="Linux">
</p>

---

## Flagship Systems & Microservices

<table>
<tr>
<td width="50%" valign="top">
<h3><a href="https://github.com/AriyaSrfZ/doc-barcode-scanner">doc-barcode-scanner</a></h3>
Dual-engine service for scanning, localizing, and decoding barcodes from pictures and multi-page PDF documents, paired with a 1D (Code 128, EAN, UPC) and 2D (QR) generator and interactive canvas studio.
<br><br>
<sub>ZBar C engine · spatial bounding-box localization · PDF page extraction · SVG/PNG vector rendering</sub><br>
<sub><b>Python · FastAPI · Pillow · pyzbar · pypdf · Canvas</b></sub>
</td>
<td width="50%" valign="top">
<h3><a href="https://github.com/AriyaSrfZ/link-shortener">link-shortener</a></h3>
Lightweight, self-hosted URL shortener with UTM campaign tracking, offline click geolocation, device telemetry analytics, and multi-tenant account isolation.
<br><br>
<sub>Base62 custom slugs · offline GeoIP2 lookup · Chart.js analytics · multi-tenant customer scoping</sub><br>
<sub><b>Python · FastAPI · SQLAlchemy · SQLite · PostgreSQL · Chart.js</b></sub>
</td>
</tr>
<tr>
<td width="50%" valign="top">
<h3><a href="https://github.com/AriyaSrfZ/identity-service">identity-service</a></h3>
Standalone zero-trust authentication and multi-tenant user management microservice issuing RS256 asymmetric JWTs with local offline verification.
<br><br>
<sub>RS256 asymmetric signatures · JWKS public key distribution · tenant-isolated RBAC · Bcrypt auth</sub><br>
<sub><b>Python · FastAPI · Cryptography · PostgreSQL · Redis · Docker</b></sub>
</td>
<td width="50%" valign="top">
<h3><a href="https://github.com/AriyaSrfZ/sms-gateway-monitor">sms-gateway-monitor</a></h3>
Real-time availability, DNS resolution, and latency monitoring suite testing carrier gateways across distributed regional networks and Anycast resolvers.
<br><br>
<sub>Multi-carrier DNS probing · automated route failover alerts · latency benchmarking · Discord/ntfy hooks</sub><br>
<sub><b>Bash · Python · PostgreSQL · Chart.js · Docker</b></sub>
</td>
</tr>
<tr>
<td width="50%" valign="top">
<h3><a href="https://github.com/AriyaSrfZ/data-profiler">data-profiler</a></h3>
Columnar dataset profiling and anomaly detection pipeline consolidating 94M+ records into high-density Parquet datastores with sub-second DuckDB query gateways.
<br><br>
<sub>Out-of-core columnar scans · null density scoring · schema drift verification · automated reporting</sub><br>
<sub><b>Python · DuckDB · Apache Arrow · Parquet · FastAPI</b></sub>
</td>
<td width="50%" valign="top">
<h3><a href="https://github.com/AriyaSrfZ/sms-gateway-sdks">sms-gateway-sdks</a></h3>
Idiomatic, production-grade client SDKs across 10 programming languages and frameworks for REST-based telecommunication gateways.
<br><br>
<sub>10 polyglot libraries · unified API error taxonomy · DLR callback reconciliation · credit telemetry</sub><br>
<sub><b>Go · Python · Node.js · PHP · C# · Java · Ruby · Delphi</b></sub>
</td>
</tr>
</table>

---

## More Projects & Tooling

- **[portfolio](https://github.com/AriyaSrfZ/portfolio)** — Astro 4 & Tailwind dark luxury portfolio showcasing production systems, architecture blueprints, and interactive demos.
- **[data-enrichment](https://github.com/AriyaSrfZ/data-enrichment)** — High-performance columnar enrichment pipeline and querying gateway on DuckDB and FastAPI.
- **[wordpress-sms-gateway](https://github.com/AriyaSrfZ/wordpress-sms-gateway)** — WordPress plugin integrating unified SMS gateway transport drivers into WP SMS, Digits, and WooCommerce SMS.
- **[sms-gateway-docs](https://github.com/AriyaSrfZ/sms-gateway-docs)** — OpenAPI specifications, payload schemas, and Postman workspaces for enterprise messaging web services.
- **[maverick-agent-os](https://github.com/AriyaSrfZ/maverick-agent-os)** — Autonomous multi-harness agent orchestration framework connecting browser automation, media engines, and session state.

---

### 🕹️ Commit Activity

<!-- ARCADE:START -->
<picture>
  <source media="(prefers-color-scheme: dark)" srcset="./assets/arcade/breakout-contribution-graph-dark.svg">
  <source media="(prefers-color-scheme: light)" srcset="./assets/arcade/breakout-contribution-graph.svg">
  <img alt="Breakout game animated over contribution graph" src="./assets/arcade/breakout-contribution-graph.svg">
</picture>
<!-- ARCADE:END -->

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:0EA5E9,100:090A0C&height=90&section=footer" alt="" width="100%">
</p>

---

### Contact & Profiles
- 🌐 **Portfolio & Blueprints**: [ariya-sarrafzadeh.ir](https://ariya-sarrafzadeh.ir/)
- 💼 **LinkedIn**: [linkedin.com/in/ariya-sarrafzadeh](https://linkedin.com/in/ariya-sarrafzadeh)
- 📬 **Direct Contact**: [ariasg2002@gmail.com](mailto:ariasg2002@gmail.com)
