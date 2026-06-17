# AI Models & LLMs

> Foundation model rankings change daily — this file focuses on niche models, novel architectures, and notable local options rather than tracking the general leaderboard. For live benchmarks see the resources section below.

### Notable & Niche Models
#### [GLM-5.2](https://huggingface.co/zai-org/GLM-5.2) — `06.2026` — `open-source` `free`
Zhipu AI's fully open 744B (40B active) MoE with a stable 1M-token context — released as a direct open-source response after the US ordered Anthropic to disable Fable 5/Mythos 5 for foreign nationals; near-frontier on long-horizon coding benchmarks. *(supersedes GLM-4.7-Flash)*
#### [DiffusionGemma](https://huggingface.co/google/diffusiongemma-26B-A4B-it) — `06.2026` — `open-source` `local` `free`
Google's diffusion-based (non-autoregressive) text model on the Gemma 4 26B-A4B backbone; generates text up to 4x faster via parallel block denoising, with outsized gains on constrained tasks like Sudoku.
#### [MiniMax M3](https://huggingface.co/MiniMaxAI/MiniMax-M3) — `06.2026` — `open-source` `free`
MiniMax's 428B MoE (23B active) with sparse attention (MSA) for a 1M-token context, native multimodal input, and computer-use; beats GPT-5.5 and Gemini 3.1 Pro on SWE-Bench Pro.
#### [Marlin-2B](https://huggingface.co/NemoStation/Marlin-2B) — `05.2026` — `open-source` `local` `free`
Tiny 2B video model purpose-built for video search and surveillance — lightweight video understanding without the overhead of large generation models.
#### [Talkie](https://talkie-lm.com/introducing-talkie) — `04.2026` — `online` `<!-- TODO: verify cost -->`
Vintage language model trained only on pre-1930 data — knows nothing after 1930. Unique niche use case.
#### [Kimi K2.6](https://huggingface.co/moonshotai/Kimi-K2.6) — `04.2026` — `open-source` `free`
Moonshot AI's 1T-parameter MoE (32B active) with a 256K context and an Agent Swarm system scaling to 300 sub-agents / 4,000 coordinated steps; ties top closed models on Humanity's Last Exam. *(supersedes Kimi K2)*
#### [NVIDIA Nemotron 3 Super](https://developer.nvidia.com/blog/introducing-nemotron-3-super-an-open-hybrid-mamba-transformer-moe-for-agentic-reasoning/) — `03.2026` — `open-source` `local` `free`
NVIDIA's open hybrid Mamba-Transformer MoE (120B total, 12B active); optimized for long-context agentic reasoning and software engineering. 1M token context window.
#### [Dolphin 3.0 R1 Mistral 24B](https://huggingface.co/dphn/Dolphin3.0-R1-Mistral-24B) — `2026` — `open-source` `local` `free`
Cognitive Computations' flagship uncensored reasoning model fine-tuned on Mistral Small 24B; best uncensored local model at release.
#### [MiMo V2 Flash](https://github.com/xiaomimimo/MiMo-V2-Flash) — `12.2025` — `open-source` `local` `free`
Xiaomi's 309B (15B active) MoE with hybrid sliding-window attention and multi-token prediction; best open-source coding model at release, tailored for loop-based coding agents.
#### [MiroThinker](https://github.com/MiroMindAI/MiroThinker) — `11.2025` — `open-source` `research`
Moves from LLM chatbots toward accurate long-chain solvers for critical tasks.
#### [VibeThinker 1.5B](https://huggingface.co/WeiboAI/VibeThinker-1.5B) — `11.2025` — `open-source` `local` `free`
Weibo AI's ultra-compact mathematical reasoning model; outperforms DeepSeek-R1 on benchmarks despite being 100x smaller.
#### [Emu3.5](https://github.com/baaivision/Emu3.5) — `10.2025` — `open-source` `local` `free`
Strong multimodal model for vision-language tasks.
#### [Babel-9B](https://github.com/babel-llm/babel-llm) — `03.2025` — `open-source` `local` `free`
SUTD's open multilingual LLM supporting 25+ languages covering 90% of global speakers via layer-extension techniques; top for German and non-English tasks.

### AI Agents
#### [openclaude](https://github.com/Gitlawb/openclaude) — `06.2026` — `open-source` `free`
Model-agnostic agentic coding CLI supporting 200+ models (OpenAI, Gemini, DeepSeek, Ollama, etc.) via OpenAI-compatible APIs, with MCP support and a headless gRPC mode for CI/CD integration.
#### [Odysseus](https://github.com/pewdiepie-archdaemon/odysseus) — `06.2026` — `open-source` `local` `free`
Self-hosted, privacy-first AI workspace unifying chat, autonomous agents, deep research, and productivity tools (email, calendar, docs) — runs entirely on user-controlled hardware.
#### [OpenServ](https://www.openserv.ai/) — `06.2026` — `online` `<!-- TODO: verify cost -->`
Agent-building platform with a proprietary reasoning engine (SERV) claimed to boost frontier-model price/performance up to 122x while cutting hallucinations; OpenAI/Anthropic API-compatible.

### Best Local LLMs (as of 01.2025, for 16GB RAM)

> Snapshot — verify current rankings at [ollama.com/library](https://ollama.com/library)

1. `internlm/internlm3-8b-instruct`
2. `Qwen2.5-7B-Instruct-Uncensored.Q8_0.gguf`
3. `Llama-3.1-8B-Lexi-Uncensored_V2_Q8.gguf`
4. `Qwen2.5-Coder-7B-Instruct-Q4` *(coding)*

### Favorite Local Models (RTX 4060, 06.2026)

> Personal day-to-day picks, not a benchmark ranking.

- `cognitivecomputations/Dolphin-Mistral` — daily driver, best all-around for everyday usage
- `gemma-4-12B` — multimodal (text/image/audio/video); brings agentic AI abilities to a laptop
- `Qwen2.5-Coder-14B` — most optimized model for running coding agents
- `Qwen3-30B-A3B-abliterated-erotic-i1` — uncensored Qwen
- `Qwen3-Coder-30B` — slow but efficient coder
- `Llama-3.1-8B-Lexi-Uncensored` — classic, most uncensored model before later safety hardening
- `Qwen3-VL-30B` — vision-capable, slow

### local LLM runners

| Tool | Link | Notes |
| --- | --- | --- |
| #1 LM Studio | [lmstudio.ai](https://lmstudio.ai/) | GUI-first |
| Ollama | [ollama.com](https://ollama.com/) | Best library, easiest setup |
| Jan | [jan.ai](https://jan.ai/) | Privacy-focused |
| OpenWebUI | [openwebui.com](https://openwebui.com/) | Web interface for Ollama |

### Benchmark Resources

| Resource | Link | Focus |
| --- | --- | --- |
| #1 Arena | [arena.ai](https://arena.ai/) | User-rated, all modalities (formerly lmarena.ai) |
| LiveBench | [livebench.ai](https://livebench.ai/) | LLM capabilities |
| Agents' Last Exam | [agents-last-exam.org](https://agents-last-exam.org/) | New benchmark for assessing agentic AI model capability |
| Artificial Analysis | [artificialanalysis.ai](https://artificialanalysis.ai/) | Speed & price benchmarks |
| MMMU | [mmmu-benchmark.github.io](https://mmmu-benchmark.github.io/#leaderboard) | Multimodal understanding |
| ARC Prize | [arcprize.org](https://arcprize.org/leaderboard) | Reasoning |
| Gorilla | [gorilla.cs.berkeley.edu](https://gorilla.cs.berkeley.edu/leaderboard.html) | Tool use / API calling |
| HuggingFace | [huggingface.co](https://huggingface.co/) | Model hub & community evals |
| OpenRouter | [openrouter.ai/rankings](https://openrouter.ai/rankings) | Model rankings + top agent apps |
| ProgramBench | [programbench.com](https://programbench.com/) | Re-implement executables from binary + docs — 200 tasks |
