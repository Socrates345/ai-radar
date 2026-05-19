# AI Models & LLMs

> Foundation model rankings change daily — this file focuses on niche models, novel architectures, and notable local options rather than tracking the general leaderboard. For live benchmarks see the resources section below.

---

## Notable & Niche Models

### [Dolphin 3.0 R1 Mistral 24B](https://huggingface.co/dphn/Dolphin3.0-R1-Mistral-24B) — `2026`

Cognitive Computations' flagship uncensored reasoning model fine-tuned on Mistral Small 24B; best uncensored local model at release.
`open-source` `local` `free`

### [NVIDIA Nemotron 3 Super](https://developer.nvidia.com/blog/introducing-nemotron-3-super-an-open-hybrid-mamba-transformer-moe-for-agentic-reasoning/) — `03.2026`

NVIDIA's open hybrid Mamba-Transformer MoE (120B total, 12B active); optimized for long-context agentic reasoning and software engineering. 1M token context window.
`open-source` `local` `free`

### [Kimi K2](https://github.com/MoonshotAI/Kimi-K2) — `08.2025`

Moonshot AI's 1-trillion parameter MoE model; state-of-the-art agentic intelligence across math, code, and knowledge — matches top closed-source models.
`open-source` `free`

### [GLM-4.7-Flash](https://huggingface.co/zai-org/GLM-4.7-Flash) — `12.2025`

Zhipu AI's 30B-A3B MoE with interleaved thinking; top open-source model at December 2025 release, optimized for accurate lightweight deployment.
`open-source` `local` `free`

### [Talkie](https://talkie-lm.com/introducing-talkie) — `04.2026`

Vintage language model trained only on pre-1930 data — knows nothing after 1930. Unique niche use case.
`online` `<!-- TODO: verify cost -->`

### [MiroThinker](https://github.com/MiroMindAI/MiroThinker) — `11.2025`

Moves from LLM chatbots toward accurate long-chain solvers for critical tasks.
`open-source` `research`

### [Emu3.5](https://github.com/baaivision/Emu3.5) — `10.2025`

Strong multimodal model for vision-language tasks.
`open-source` `local` `free`

### [VibeThinker 1.5B](https://huggingface.co/WeiboAI/VibeThinker-1.5B) — `11.2025`

Weibo AI's ultra-compact mathematical reasoning model; outperforms DeepSeek-R1 on benchmarks despite being 100x smaller.
`open-source` `local` `free`

### [Babel-9B](https://github.com/babel-llm/babel-llm) — `03.2025`

SUTD's open multilingual LLM supporting 25+ languages covering 90% of global speakers via layer-extension techniques; top for German and non-English tasks.
`open-source` `local` `free`

### [MiMo V2 Flash](https://github.com/xiaomimimo/MiMo-V2-Flash) — `12.2025`

Xiaomi's 309B (15B active) MoE with hybrid sliding-window attention and multi-token prediction; best open-source coding model at release, tailored for loop-based coding agents.
`open-source` `local` `free`

---

## Best Local LLMs (as of 01.2025, for 16GB RAM)

> Snapshot — verify current rankings at [ollama.com/library](https://ollama.com/library)

1. `internlm/internlm3-8b-instruct`
2. `Qwen2.5-7B-Instruct-Uncensored.Q8_0.gguf`
3. `Llama-3.1-8B-Lexi-Uncensored_V2_Q8.gguf`
4. `Qwen2.5-Coder-7B-Instruct-Q4` *(coding)*

---

## Local LLM Runners

| Tool | Link | Notes |
| --- | --- | --- |
| Ollama | [ollama.com](https://ollama.com/) | Best library, easiest setup |
| LM Studio | [lmstudio.ai](https://lmstudio.ai/) | GUI-first |
| Jan | [jan.ai](https://jan.ai/) | Privacy-focused |
| OpenWebUI | [openwebui.com](https://openwebui.com/) | Web interface for Ollama |

---

## Benchmark Resources

| Resource | Link | Focus |
| --- | --- | --- |
| LM Arena | [lmarena.ai](https://lmarena.ai/) | User-rated, all modalities |
| LiveBench | [livebench.ai](https://livebench.ai/) | LLM capabilities |
| Artificial Analysis | [artificialanalysis.ai](https://artificialanalysis.ai/) | Speed & price benchmarks |
| MMMU | [mmmu-benchmark.github.io](https://mmmu-benchmark.github.io/#leaderboard) | Multimodal understanding |
| ARC Prize | [arcprize.org](https://arcprize.org/leaderboard) | Reasoning |
| Gorilla | [gorilla.cs.berkeley.edu](https://gorilla.cs.berkeley.edu/leaderboard.html) | Tool use / API calling |
| HuggingFace | [huggingface.co](https://huggingface.co/) | Model hub & community evals |
