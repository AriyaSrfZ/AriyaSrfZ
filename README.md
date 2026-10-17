<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:090A0C,100:0EA5E9&height=180&section=header&text=Ariya%20Sarrafzadeh&fontColor=ffffff&fontSize=44&fontAlignY=36&desc=Systems%20Architect%20%C2%B7%20High-Throughput%20Infrastructure%20%C2%B7%20Fintech%20Switches&descAlignY=58&descSize=16" alt="Ariya Sarrafzadeh, Systems Architect & Infrastructure Engineer" width="100%">
</p>

<p align="center">
  <a href="https://ariya-sarrafzadeh.ir">
    <img src="./assets/avatar.png" alt="Ariya Sarrafzadeh" width="140" height="140" />
  </a>
</p>

<p align="center">
  <b>I engineer zero-financial-drift state machines, sub-30ms switching rails, and high-throughput telecom switches.</b><br>
  Distributed ACID ledgers · ISO 8583 payment switches · SMPP 3.4 telecom windowing · Sub-15ms fraud telemetry
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Go-00ADD8?style=flat-square&logo=go&logoColor=white" alt="Go">
  <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" alt="Python">
  <img src="https://img.shields.io/badge/TypeScript-3178C6?style=flat-square&logo=typescript&logoColor=white" alt="TypeScript">
  <img src="https://img.shields.io/badge/Redis_SETNX-DC382D?style=flat-square&logo=redis&logoColor=white" alt="Redis">
  <img src="https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white" alt="PostgreSQL">
  <img src="https://img.shields.io/badge/ScyllaDB-545B66?style=flat-square&logo=scylladb&logoColor=white" alt="ScyllaDB">
  <img src="https://img.shields.io/badge/RabbitMQ-FF6600?style=flat-square&logo=rabbitmq&logoColor=white" alt="RabbitMQ">
  <img src="https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white" alt="Docker">
  <img src="https://img.shields.io/badge/Kubernetes-326CE5?style=flat-square&logo=kubernetes&logoColor=white" alt="Kubernetes">
  <img src="https://img.shields.io/badge/DuckDB-FFF000?style=flat-square&logo=duckdb&logoColor=black" alt="DuckDB">
  <img src="https://img.shields.io/badge/Elasticsearch-005571?style=flat-square&logo=elasticsearch&logoColor=white" alt="Elasticsearch">
  <img src="https://img.shields.io/badge/Prometheus-E6522C?style=flat-square&logo=prometheus&logoColor=white" alt="Prometheus">
  <img src="https://img.shields.io/badge/Linux_Kernel-FCC624?style=flat-square&logo=linux&logoColor=black" alt="Linux">
</p>

<div align="center">
  <table>
    <tr>
      <td align="center" width="25%">⚡ <b>Throughput Core</b><br><code>50,000+ TPS</code></td>
      <td align="center" width="25%">🛡️ <b>PSP Failover</b><br><code>&lt; 30ms SLA</code></td>
      <td align="center" width="25%">🔒 <b>Financial Drift</b><br><code>0.00% (2PC Mutex)</code></td>
      <td align="center" width="25%">📡 <b>Edge Fraud Radar</b><br><code>&lt; 15ms Telemetry</code></td>
    </tr>
  </table>
</div>

<!-- TERMINAL:START -->
<p align="center">
  <img src="./assets/intro.gif" width="940" alt="Animated terminal demo session: checking system specs, node status, role invariants, and running ariya-cli infrastructure diagnostics." />
</p>
<!-- TERMINAL:END -->

---

## What I build

- **Zero-drift distributed ledgers.** Strict double-entry state machines, two-phase commit (2PC) reconciliation with Redis `SETNX` distributed locks, and deterministic idempotent pipelines guaranteeing zero financial drift across 50K+ TPS clearing rails.
- **Smart payment switching rails (ISO 8583).** Dynamic multi-rail dispatch, sub-30ms automated PSP failovers, sliding-window throttling, and automated Paya / Satna clearing state machines.
- **High-throughput telecom infrastructure (SMPP 3.4).** Asynchronous queue workers, carrier sliding-window throttling, multi-trunk automated failover, and strict carrier SLA monitoring.
- **Forensic fraud & risk loops.** Real-time multi-hop correlation, national eKYC verification, device telemetry scoring, and sub-15ms edge fraud perimeter enforcement.
- **High-performance analytical pipelines.** Columnar ingestion and enrichment with DuckDB, PyArrow and Parquet, high-cardinality indexing with Elasticsearch, and real-time observability via Prometheus & Grafana.

<details>
<summary><b>Capabilities, and the repos that prove them</b></summary>
<br>

| Capability | Proof |
|---|---|
| **Payment Switching & ISO 8583** (Dynamic multi-rail routing, sub-30ms automated failover, Paya/Satna clearing) | [portfolio](https://github.com/AriyaSrfZ/portfolio) · [sms-gateway-docs](https://github.com/AriyaSrfZ/sms-gateway-docs) |
| **Distributed Ledgers & 2PC Mutex** (Double-entry accounting, Redis SETNX locks, idempotency keys, drift elimination) | [link-shortener](https://github.com/AriyaSrfZ/link-shortener) · [portfolio](https://github.com/AriyaSrfZ/portfolio) |
| **High-Throughput Telecom Switches** (SMPP 3.4 windowing, queue isolation, carrier trunk failover, live telemetry) | [sms-gateway-monitor](https://github.com/AriyaSrfZ/sms-gateway-monitor) · [sms-gateway-sdks](https://github.com/AriyaSrfZ/sms-gateway-sdks) · [sms-gateway-docs](https://github.com/AriyaSrfZ/sms-gateway-docs) |
| **Identity, Auth & Zero-Trust Isolation** (RS256 asymmetric JWTs, JWKS public key distribution, tenant-isolated RBAC) | [identity-service](https://github.com/AriyaSrfZ/identity-service) |
| **Analytical Data Pipelines & Columnar Storage** (DuckDB, PyArrow, Parquet, 94M+ records consolidation) | [data-profiler](https://github.com/AriyaSrfZ/data-profiler) · [data-enrichment](https://github.com/AriyaSrfZ/data-enrichment) |
| **Computer Vision & Document Decoding** (ZBar C engine, PDF multi-page extraction, vector rendering) | [doc-barcode-scanner](https://github.com/AriyaSrfZ/doc-barcode-scanner) |
| **Autonomous Multi-Agent Orchestration & Modeling** (Multi-harness coordination, financial state machines) | [maverick-agent-os](https://github.com/AriyaSrfZ/maverick-agent-os) · [ai-equity-systems](https://github.com/AriyaSrfZ/ai-equity-systems) · [Heretic](https://github.com/AriyaSrfZ/Heretic) |

</details>

---

## Flagship Systems & Microservices

<table>
<tr>
<td width="50%" valign="top">
<a href="https://github.com/AriyaSrfZ/sms-gateway-monitor"><img src="./assets/diagrams/sms-routing-architecture.svg" alt="Telecom Gateway & Routing Switch Topology" width="100%"></a>
<h3><a href="https://github.com/AriyaSrfZ/sms-gateway-monitor">sms-gateway-monitor</a></h3>
Real-time availability, DNS resolution, and latency monitoring suite testing carrier gateways across distributed regional networks and Anycast resolvers.
<br><br>
<sub>Multi-carrier DNS probing · automated route failover alerts · latency benchmarking · Discord/ntfy hooks</sub><br>
<sub><b>Go · Python · PostgreSQL · Chart.js · Docker</b></sub>
</td>
<td width="50%" valign="top">
<a href="https://github.com/AriyaSrfZ/portfolio"><img src="./assets/diagrams/payment-switch-architecture.svg" alt="Event-Driven Payment Settlement Architecture" width="100%"></a>
<h3><a href="https://github.com/AriyaSrfZ/portfolio">portfolio · Systems Blueprint</a></h3>
Architectural blueprint and production switch engine: idempotent transaction log, two-phase commit (2PC) reconciliation, and double-entry ledger immutability.
<br><br>
<sub>ISO 8583 message parsing · Outbox pattern · Redis SETNX mutex · ScyllaDB ledger immutability · Sub-30ms automated failover</sub><br>
<sub><b>Astro · React 18 · TypeScript · ScyllaDB · Redis</b></sub>
</td>
</tr>
<tr>
<td width="50%" valign="top">
<a href="https://github.com/AriyaSrfZ/identity-service"><img src="./assets/diagrams/fraud-tracing-architecture.svg" alt="Identity & Fraud Tracing Perimeter Architecture" width="100%"></a>
<h3><a href="https://github.com/AriyaSrfZ/identity-service">identity-service</a></h3>
Standalone zero-trust authentication and multi-tenant user management microservice issuing RS256 asymmetric JWTs with local offline verification.
<br><br>
<sub>RS256 asymmetric signatures · JWKS public key distribution · tenant-isolated RBAC · Bcrypt auth</sub><br>
<sub><b>Python · FastAPI · Cryptography · PostgreSQL · Redis · Docker</b></sub>
</td>
<td width="50%" valign="top">
<a href="https://github.com/AriyaSrfZ/link-shortener"><img src="./assets/diagrams/double-entry-ledger-schematic.svg" alt="High-Throughput Switch & Ledger Schematic" width="100%"></a>
<h3><a href="https://github.com/AriyaSrfZ/link-shortener">link-shortener</a></h3>
Lightweight, self-hosted URL shortener with UTM campaign tracking, offline click geolocation, device telemetry analytics, and multi-tenant account isolation.
<br><br>
<sub>Base62 custom slugs · offline GeoIP2 lookup · Chart.js analytics · multi-tenant customer scoping</sub><br>
<sub><b>Python · FastAPI · SQLAlchemy · SQLite · PostgreSQL · Chart.js</b></sub>
</td>
</tr>
<tr>
<td width="50%" valign="top">
<a href="https://github.com/AriyaSrfZ/data-profiler"><img src="./assets/diagrams/data-pipeline-architecture.svg" alt="Columnar Data Profiler & Query Gateway" width="100%"></a>
<h3><a href="https://github.com/AriyaSrfZ/data-profiler">data-profiler</a></h3>
Columnar dataset profiling and anomaly detection pipeline consolidating 94M+ records into high-density Parquet datastores with sub-second DuckDB query gateways.
<br><br>
<sub>Out-of-core columnar scans · null density scoring · schema drift verification · automated reporting</sub><br>
<sub><b>Python · DuckDB · Apache Arrow · Parquet · FastAPI</b></sub>
</td>
<td width="50%" valign="top">
<a href="https://github.com/AriyaSrfZ/doc-barcode-scanner"><img src="./assets/diagrams/multi-bank-reconciliation.svg" alt="Barcode & Document Processing Pipeline" width="100%"></a>
<h3><a href="https://github.com/AriyaSrfZ/doc-barcode-scanner">doc-barcode-scanner</a></h3>
Dual-engine service for scanning, localizing, and decoding barcodes from pictures and multi-page PDF documents, paired with 1D/2D generator and interactive canvas studio.
<br><br>
<sub>ZBar C engine · spatial bounding-box localization · PDF page extraction · SVG/PNG vector rendering</sub><br>
<sub><b>Python · FastAPI · Pillow · pyzbar · pypdf · Canvas</b></sub>
</td>
</tr>
</table>

---

## More Systems & Microservices

<table>
<tr>
<td width="33%" valign="top">
<b><a href="https://github.com/AriyaSrfZ/sms-gateway-sdks">sms-gateway-sdks</a></b><br>
<sub>Idiomatic client SDKs across 10 programming languages for telecommunication gateways.</sub>
</td>
<td width="33%" valign="top">
<b><a href="https://github.com/AriyaSrfZ/data-enrichment">data-enrichment</a></b><br>
<sub>High-performance columnar enrichment pipeline and querying gateway on DuckDB and FastAPI.</sub>
</td>
<td width="33%" valign="top">
<b><a href="https://github.com/AriyaSrfZ/maverick-agent-os">maverick-agent-os</a></b><br>
<sub>Autonomous multi-harness agent orchestration framework connecting browser automation and session state.</sub>
</td>
</tr>
<tr>
<td width="33%" valign="top">
<b><a href="https://github.com/AriyaSrfZ/wordpress-sms-gateway">wordpress-sms-gateway</a></b><br>
<sub>WordPress plugin integrating unified SMS gateway transport drivers into WP SMS and WooCommerce.</sub>
</td>
<td width="33%" valign="top">
<b><a href="https://github.com/AriyaSrfZ/sms-gateway-docs">sms-gateway-docs</a></b><br>
<sub>OpenAPI specifications, payload schemas, and Postman workspaces for enterprise messaging web services.</sub>
</td>
<td width="33%" valign="top">
<b><a href="https://github.com/AriyaSrfZ/ai-equity-systems">ai-equity-systems</a></b><br>
<sub>Autonomous multi-agent execution pipelines for quantitative financial models and state verification.</sub>
</td>
</tr>
</table>

<details>
<summary><b>Off the clock: High-Performance Simulation & 3D Web Engines</b></summary>
<br>
Experimenting with browser-based WebGL/WebGPU physics engines, spatial rendering, orbital Kepler solvers, and arcade mechanics rendered directly on the browser canvas.
</details>

<p align="center"><sub>All architecture blueprints represent high-throughput systems designed for production auditability. Open any repo for technical specs and runbooks.</sub></p>

### 🕹️ Commit arcade

<!-- ARCADE:START -->
<picture>
  <source media="(prefers-color-scheme: dark)" srcset="./assets/arcade/breakout-contribution-graph-dark.svg">
  <source media="(prefers-color-scheme: light)" srcset="./assets/arcade/breakout-contribution-graph.svg">
  <img alt="Breakout game animated over Ariya's GitHub contribution graph: a ball bounces around breaking contribution-day bricks" src="./assets/arcade/breakout-contribution-graph.svg">
</picture>
<p><sub>My last year of commits as Breakout bricks, regenerated daily. <a href="https://abozanona.github.io/pacman-contribution-graph/">Play it yourself</a> · made with <a href="https://github.com/abozanona/pacman-contribution-graph">pacman-contribution-graph</a></sub></p>
<!-- ARCADE:END -->

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:0EA5E9,100:090A0C&height=90&section=footer" alt="" width="100%">
</p>

---

### Engineering & Contact Links
- 🌐 **Production Blueprint**: [ariya-sarrafzadeh.ir](https://ariya-sarrafzadeh.ir/)
- 💼 **LinkedIn**: [linkedin.com/in/ariya-sarrafzadeh](https://linkedin.com/in/ariya-sarrafzadeh)
- 📬 **Direct Contact**: [ariasg2002@gmail.com](mailto:ariasg2002@gmail.com)
