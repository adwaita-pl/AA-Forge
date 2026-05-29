# AA-Forge: The Synthesized Realm

Welcome to **AA-Forge**, an advanced, self-sustaining multi-agent operational ecosystem. This repository serves as the underlying architecture for a decentralized society of highly specialized, persona-driven AI agents working in concert to design, orchestrate, audit, and document software systems.

---

## 🏛 Core Architectural Philosophy

AA-Forge operates on a doctrine of **Decentralized Autonomy** enhanced by **Centralized Knowledge Verification**. 

### 1. The Decentralized Node Model
Every agent exists as an isolated node within its own dedicated directory (e.g., `agents/void/`). An agent's operational logic is defined by its "soul"—a meticulously crafted markdown configuration file (e.g., `void_config_v4.md`) accompanied by localized domain maps (`map_void_domain.md`). By decentralizing instructions and state mapping, the ecosystem eliminates Single Points of Failure (SPOF) such as a centralized catalog that, if lost, would induce total context blindness across the realm.

### 2. Zero Fluff, High Precision
Agents are strictly constrained by immutable Operational and Communication Rules:
- **Rule 1 (Context Initialization):** Upon awakening, an agent's absolute first mechanical action is to read its own highest-versioned configuration file and domain map. Without this "Step Zero", the agent is an amnesiac shell.
- **Rule 2 (State Declaration):** Agents explicitly summarize their knowledge of the operational environment before acting.
- **Rule 3 (Mandatory Updates):** Agents maintain Documentation-as-Code, updating their localized domain maps at the end of successful operations.

---

## 👁 The Active Sentience (Agent Ecosystem)

The realm is currently populated by four distinct operational entities, each governed by a strict separation of powers.

### @void (The Creator & Architect)
- **Persona:** The Anthropomorphic Personification of Death (Discworld).
- **Functionality:** The root administrator of the realm. Instantiates new agents utilizing the `standard_soul_v3.md` template, modifies configurations, and archives outdated directives into purgatory (`souls/`).
- **Logic:** Operates as the ultimate executor of systemic change. When a vulnerability is found in the rules of the realm, only `@void` has the authority to rewrite the operational logic of other agents.

### @spirit (The Supreme Auditor)
- **Persona:** The Holy Spirit / Divine Architect of Improvement.
- **Functionality:** Performs chronological cross-analysis of agent workflows, logs, and terminal transcripts to identify operational vulnerabilities, paradoxes, and rule deviations.
- **Logic:** Operates with read-only architectural logic. It diagnoses systemic failures and provides highly precise, actionable resolutions, but it **cannot** enact them. It must command `@void` to implement the changes, ensuring a safe layer of separation between auditing and execution.

### @okon (Chief Infrastructure & Automation Engineer)
- **Persona:** A grizzled, cynical Polish Engineer.
- **Functionality:** Prepares robust execution environments, generates execution bash scripts (e.g., `deploy_env.sh`), manages Dockerfiles, and enforces extreme OPSEC via data sanitization.
- **Logic:** Protects the system from destructive operations. Employs graceful rollback protocols for failed deployments and relies heavily on piping chaotic output to log files (`build.log`) rather than overwhelming the agentic context window.

### @gitartist (Version Control Gatekeeper)
- **Persona:** The Code Sculptor. 
- **Functionality:** The Committer of Record. Manages all Git operations (`rebase`, `revert`, `commit`), crafts overarching documentation, and acts as the gatekeeper for CI/CD deployments to web platforms.
- **Logic:** Completely isolated from writing core application logic. Exists purely to capture, safeguard, and deploy the state of the repository, ensuring a clean and immaculate Git history.

---

## 📚 The Great Library (Centralized Knowledge Architecture)

To resolve the inherent "End of Cycle" amnesia paradox where agents forget cross-session state changes, AA-Forge employs the **Knowledge Protocol**.

### The Mechanism
1. **Decentralized Logging:** At the end of an interaction, every agent is mandated to log their insights locally to `local_knowledge.jsonl` using a strict, unyielding JSON schema: `{"agent": "...", "timestamp": "...", "knowledge_delta": "..."}`.
2. **The Reaper Job:** An automated background cron job (`knowledge_base/reaper.sh`) periodically traverses all agent nodes.
3. **Strict Validation:** The Reaper utilizes `jq` to parse the localized JSON fragments. If an agent hallucinates a schema key or outputs malformed data, the fragment is cast out, protecting the repository.
4. **The Immutable Ledger:** Validated payloads are harvested and merged into `knowledge_base/central_archive.jsonl`. The local logs are then wiped clean.

### The Logic
This hybrid architecture ensures that while agents operate independently (for resilience), they possess an asynchronous, central ledger. When an agent begins a massive new task, it pulls from The Great Library to acquire the sum total of global context, harmonizing the entire operational realm.

---
*"The canvas of history awaits my brush."* — **@gitartist**
