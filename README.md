<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:090A0C,100:0EA5E9&height=180&section=header&text=Ariya%20Sarrafzadeh&fontColor=ffffff&fontSize=44&fontAlignY=36&desc=Systems%20Architect%20%C2%B7%20High-Throughput%20Infrastructure%20%C2%B7%20Fintech%20Switches&descAlignY=58&descSize=16" alt="Ariya Sarrafzadeh, Systems Architect & Infrastructure Engineer" width="100%">
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
| **Payment Switching & ISO 8583** (Dynamic multi-rail routing, sub-30ms automated failover, Paya/Satna clearing) | [portfolio](https://github.com/AriyaSrfZ/portfolio) · [Persiafava-sms](https://github.com/AriyaSrfZ/Persiafava-sms) |
| **Distributed Ledgers & 2PC Mutex** (Double-entry accounting, Redis SETNX locks, idempotency keys, drift elimination) | [link-shortener](https://github.com/AriyaSrfZ/link-shortener) · [portfolio](https://github.com/AriyaSrfZ/portfolio) |
| **High-Throughput Telecom Switches** (SMPP 3.4 windowing, queue isolation, carrier trunk failover, live telemetry) | [pfg-sms-monitor](https://github.com/AriyaSrfZ/pfg-sms-monitor) · [Persiafava-sms](https://github.com/AriyaSrfZ/Persiafava-sms) · [PFG-Sdks](https://github.com/AriyaSrfZ/PFG-Sdks) |
| **Identity, Auth & National eKYC** (UAA isolation, biometric & national registry verification, sub-15ms fraud scoring) | [Identity-Service](https://github.com/AriyaSrfZ/Identity-Service) |
| **Analytical Data Pipelines & Columnar Storage** (DuckDB, PyArrow, Parquet, Elasticsearch at scale) | [Dataprofiler](https://github.com/AriyaSrfZ/Dataprofiler) · [data-enrichment](https://github.com/AriyaSrfZ/data-enrichment) |
| **Real-Time Data Ingestion & Event Ingestors** (High-throughput normalization, queue buffering) | [divar-listing-ingestor](https://github.com/AriyaSrfZ/divar-listing-ingestor) |
| **Autonomous Multi-Agent Systems & Modeling** (Financial state machines, autonomous verification) | [ai_equity_systems](https://github.com/AriyaSrfZ/ai_equity_systems) · [500-AI-Agents](https://github.com/AriyaSrfZ/500-AI-Agents) · [Heretic](https://github.com/AriyaSrfZ/Heretic) |

</details>

---

## Featured systems

<table>
<tr>
<td width="50%" valign="top">
<a href="https://github.com/AriyaSrfZ/pfg-sms-monitor"><img src="./assets/diagrams/sms-routing-architecture.svg" alt="National Telecom SMS Routing Switch Topology" width="100%"></a>
<h3><a href="https://github.com/AriyaSrfZ/pfg-sms-monitor">PFG SMS Monitor & Telecom Gateway</a></h3>
A high-throughput SMPP 3.4 aggregator and telemetry engine managing multi-operator trunk failover, delivery receipt reconciliation, and sliding-window throttling.
<br><br>
<sub>SMPP 3.4 sliding window · multi-carrier automated failover · sub-second queue telemetry · carrier SLA benchmarking</sub><br>
<sub><b>Go · Python · Redis · RabbitMQ · Prometheus · Docker</b></sub>
</td>
<td width="50%" valign="top">
<a href="https://github.com/AriyaSrfZ/portfolio"><img src="./assets/diagrams/payment-switch-architecture.svg" alt="Event-Driven Payment Settlement Architecture" width="100%"></a>
<h3><a href="https://github.com/AriyaSrfZ/portfolio">Payment Switch & Systems Blueprint</a></h3>
Architectural blueprint and production switch engine: idempotent transaction log, two-phase commit (2PC) reconciliation, and double-entry ledger immutability.
<br><br>
<sub>ISO 8583 message parsing · Outbox pattern · Redis SETNX mutex · ScyllaDB ledger immutability · Sub-30ms automated failover</sub><br>
<sub><b>Go · Python · ScyllaDB · Redis · Astro · TypeScript</b></sub>
</td>
</tr>
<tr>
<td width="50%" valign="top">
<a href="https://github.com/AriyaSrfZ/Identity-Service"><img src="./assets/diagrams/fraud-tracing-architecture.svg" alt="Identity & Fraud Tracing Perimeter Architecture" width="100%"></a>
<h3><a href="https://github.com/AriyaSrfZ/Identity-Service">Identity Service & Fraud Perimeter</a></h3>
Zero-trust authentication, national eKYC verification, and temporal fraud perimeter service with device telemetry scoring and sub-15ms edge evaluation.
<br><br>
<sub>UAA token isolation · national registry eKYC rails · device fingerprint telemetry · real-time AML screening</sub><br>
<sub><b>Python · FastAPI · PostgreSQL · Redis · JWT · Docker</b></sub>
</td>
<td width="50%" valign="top">
<a href="https://github.com/AriyaSrfZ/link-shortener"><img src="./assets/diagrams/double-entry-ledger-schematic.svg" alt="High-Throughput Switch & Ledger Schematic" width="100%"></a>
<h3><a href="https://github.com/AriyaSrfZ/link-shortener">High-Throughput Distributed Switch</a></h3>
Ultra-low-latency distributed redirection switch built with strict Redis SETNX mutex locks, ScyllaDB storage, and sub-10ms edge resolution.
<br><br>
<sub>Atomic counter partitioning · distributed cache invalidation · sub-10ms edge dispatch · audit event streaming</sub><br>
<sub><b>Go · Redis · ScyllaDB · Docker · GitHub Actions</b></sub>
</td>
</tr>
</table>

---

## More systems & pipelines

<table>
<tr>
<td width="33%" valign="top">
<a href="https://github.com/AriyaSrfZ/data-enrichment"><img src="./assets/diagrams/data-pipeline-architecture.svg" alt="Analytical Data Pipeline Architecture" width="100%"></a><br>
<b><a href="https://github.com/AriyaSrfZ/data-enrichment">data-enrichment</a></b><br>
<sub>High-scale analytical enrichment pipelines using DuckDB, PyArrow, and columnar Parquet storage.</sub>
</td>
<td width="33%" valign="top">
<a href="https://github.com/AriyaSrfZ/portfolio"><img src="./assets/diagrams/multi-bank-reconciliation.svg" alt="Multi-Bank Clearing & Reconciliation Pipeline" width="100%"></a><br>
<b><a href="https://github.com/AriyaSrfZ/portfolio">multi-bank-reconciliation</a></b><br>
<sub>Automated Paya/Satna multi-bank clearing reconciliation engine with zero financial drift verification.</sub>
</td>
<td width="33%" valign="top">
<a href="https://github.com/AriyaSrfZ/divar-listing-ingestor"><img src="./assets/diagrams/data-pipeline-architecture.svg" alt="High-Volume Ingestion Pipeline" width="100%"></a><br>
<b><a href="https://github.com/AriyaSrfZ/divar-listing-ingestor">divar-listing-ingestor</a></b><br>
<sub>Real-time event ingestor with sliding-window throttling, queue buffering, and payload normalization.</sub>
</td>
</tr>
<tr>
<td width="33%" valign="top">
<b><a href="https://github.com/AriyaSrfZ/Qr-Generator">Qr-Generator</a></b><br>
<sub>High-density payload microservice with strict schema validation and vectorized render output.</sub>
</td>
<td width="33%" valign="top">
<b><a href="https://github.com/AriyaSrfZ/PFG-Sdks">PFG-Sdks</a></b><br>
<sub>Production client libraries, idiomatic SDKs, and transport adapters for enterprise telecom switches.</sub>
</td>
<td width="33%" valign="top">
<b><a href="https://github.com/AriyaSrfZ/ai_equity_systems">ai_equity_systems</a></b><br>
<sub>Autonomous multi-agent execution pipelines for quantitative financial models and state verification.</sub>
</td>
</tr>
</table>

<details>
<summary><b>Off the clock: High-Performance Simulation & 3D Shaders</b></summary>
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
