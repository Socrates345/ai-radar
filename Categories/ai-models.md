# AI Models & LLMs

> Foundation model rankings change daily — this file focuses on niche models, novel architectures, and notable local options rather than tracking the general leaderboard. For live benchmarks see the resources section below.

### Notable & Niche Models
#### [GLM-5.3](https://huggingface.co/zai-org/GLM-5.3) — `08.2026` — `open-source` `free` `api`
Zhipu AI's coding/agentic-focused post-training upgrade of GLM-5 (744B total/~40B active MoE, 200K context); +50% on Z.ai's internal Code Bench, 6.2x jump on Terminal-Bench 3.0. *(supersedes GLM-5.2)*
#### [Qwen3.8-27B](https://www.alibabacloud.com/blog/alibaba-unveils-qwen3-8-27b-and-releases-weights-of-qwen3-8-flagship-model_603463) — `08.2026` — `open-source` `local` `free`
27.78B-parameter multimodal (text/image/video) model with a 262K-token context, optimized for coding/reasoning/long-horizon agentic tasks; runs locally on ~24GB VRAM consumer GPUs.
#### [Kimi K3](https://huggingface.co/moonshotai/Kimi-K3) — `07.2026` — `open-source` `free`
Moonshot AI's 2.8T-parameter MoE with a 1M-token context, native visual understanding, and an always-on "thinking mode"; the largest open-weight model at release. *(supersedes Kimi K2.6)*
#### [Inkling](https://thinkingmachines.ai/news/introducing-inkling/) — `07.2026` — `open-source` `free`
Thinking Machines Lab's open-weight MoE multimodal transformer (975B total/41B active params, 1M-token context, 45T training tokens), with a lighter Inkling-Small (12B active) variant.
#### [Bonsai 27B](https://prismml.com/news/prismml-releases-bonsai-27b) — `07.2026` — `local`
PrismML's 27.8B multimodal (text+image) reasoning/coding model, extreme-quantized (as low as ~3.9GB) to run on smartphones and edge devices.
#### [AMD Instella-MoE](https://rocm.blogs.amd.com/artificial-intelligence/instella-moe/README.html) — `07.2026` — `open-source` `local` `research` `free`
AMD's open-source Mixture-of-Experts model (16B total/2.8B active) trained entirely on AMD ROCm hardware, with Gated MLA and FarSkip-Collective for training/inference efficiency.
#### [PerceptionDLM](https://github.com/MSALab-PKU/PerceptionDLM) — `06.2026` — `open-source` `local` `research` `free`
Diffusion-language-model-based vision-language model that generates captions for multiple image regions in parallel — ~2.9x faster than sequential autoregressive captioners.
#### [DiffusionGemma](https://huggingface.co/google/diffusiongemma-26B-A4B-it) — `06.2026` — `open-source` `local` `free`
Google's diffusion-based (non-autoregressive) text model on the Gemma 4 26B-A4B backbone; generates text up to 4x faster via parallel block denoising, with outsized gains on constrained tasks like Sudoku.
#### [MiniMax M3](https://huggingface.co/MiniMaxAI/MiniMax-M3) — `06.2026` — `open-source` `free`
MiniMax's 428B MoE (23B active) with sparse attention (MSA) for a 1M-token context, native multimodal input, and computer-use; beats GPT-5.5 and Gemini 3.1 Pro on SWE-Bench Pro.
#### [Marlin-2B](https://huggingface.co/NemoStation/Marlin-2B) — `05.2026` — `open-source` `local` `free`
Tiny 2B video model purpose-built for video search and surveillance — lightweight video understanding without the overhead of large generation models.
#### [Talkie](https://talkie-lm.com/introducing-talkie) — `04.2026` — `online`
Vintage language model trained only on pre-1930 data — knows nothing after 1930. Unique niche use case.
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
| BuseyBench | [buseybench.com](https://www.buseybench.com/) | Creative-capability benchmark scoring SVG generation |
| LobotomyQ | [lobotomyq.com](https://lobotomyq.com/#metrics) | LLM censorship/refusal-rate benchmark |

> **Entries moved to other files:** openclaude, Odysseus, OpenServ → `ai-agents.md` (agent tools belong there, not here)
