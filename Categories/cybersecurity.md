# AI Cybersecurity

> AI tools and agents for offensive and defensive security research. Early-stage category — more entries coming.

---

#### [Aikido Altar](https://huggingface.co/AikidoSec/altar-1) — `09.2026` — `open-source` `local`
Aikido Security's open-weight pentesting model — GLM-5.3 compressed 78% (1.51TB → 328GB via expert pruning + W4A16 quantization) so vulnerability detection and exploit validation can run on-prem or air-gapped; needs roughly a 4×H200 node, served via vLLM.

#### [GPT-Red](https://openai.com/index/unlocking-self-improvement-gpt-red/) — `07.2026` — `research`
OpenAI's internal automated red-teaming model, trained via self-play reinforcement learning to generate adversarial prompt-injection attacks and adversarially harden production models. Kept internal, not publicly released.

#### [Aardvark](https://openai.com/index/introducing-aardvark/) — `10.2025` — `online`
OpenAI's agentic security researcher — autonomously finds and fixes software vulnerabilities.

#### [CodeMender](https://deepmind.google/blog/introducing-codemender-an-ai-agent-for-code-security/) — `10.2025` — `research`
Google DeepMind's AI agent for automated code security analysis and patching.

### Reverse Engineering

> Agent-driven reverse engineering took off once frontier models effectively saturated SRE-Bench in 09.2026 (see Benchmark Resources in `ai-models.md`). Top picks: **#1 REA**, **#2 Ghidra MCP**. The two decompilers at the bottom are not AI tools themselves — they are the classic backends the agent tooling above drives.

#### [AI Game Modding Guides](https://github.com/trevaintdead/ai-game-modding-guides) — `10.2026` — `free`
Community guides for building game mods with AI coding agents — passthrough mods linking two running games (e.g. Minecraft inside Skyrim), Rust engine rewrites, mod loaders, prompting, and troubleshooting, with worked examples and starter templates; single-player/offline games only, still marked as a draft.

#### [Universal Modder](https://github.com/rehan-remade/universal-modder) — `09.2026` — `open-source`
Skills, a `um` CLI, and the fal MCP server that let Claude Code, Codex, Gemini CLI, Cursor, or OpenCode mod almost any PC game you own — engine recon, reverse engineering (ILSpy, Cpp2IL, Ghidra/IDA over MCP), fal-generated art/3D/audio, in-game testing, and showcase videos; asset generation needs a fal API key.

#### [Hex-Rays IDA MCP](https://github.com/HexRaysSA/ida-mcp) — `09.2026` — `open-source` `local`
Official Hex-Rays MCP server for IDA — connects coding agents (Claude Code, Codex CLI, Copilot CLI) to IDA in GUI or headless mode; MIT-licensed, but requires a licensed IDA 9.4+.

#### [REA](https://github.com/morluto/rea) — `04.2026` — `open-source` `local` `free`
"Reverse Engineer Anything" — CLI + MCP toolkit that lets a coding agent investigate an app without its source (native binaries, JavaScript/Electron apps, .NET assemblies, websites) via Hopper or Ghidra, explain how a feature works with the evidence behind each conclusion, then rebuild it in your own project; analysis runs fully locally.

#### [Ghidra MCP](https://github.com/bethington/ghidra-mcp) — `08.2025` — `open-source` `local` `free`
The most complete MCP server for Ghidra — 215 tools with full write access (renaming, typing, struct creation, script execution, P-code emulation, live debugging), enforced naming conventions, cross-binary documentation transfer, and GUI, headless, and Docker modes.

#### [Cpp2IL](https://github.com/SamboyCoding/Cpp2IL) — `06.2019` — `open-source` `local` `free`
Reverses Unity's IL2CPP build process back into managed DLLs — the standard route into IL2CPP Unity games; last stable release is 2022.0.7, with a major rewrite ongoing on the development branch.

#### [ILSpy](https://github.com/icsharpcode/ILSpy) — `02.2011` — `open-source` `local` `free`
The reference open-source, cross-platform .NET decompiler (v11.1 as of 09.2026) — the backend agents use to read Unity/Mono and other .NET code.
