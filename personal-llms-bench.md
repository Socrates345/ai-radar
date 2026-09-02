## Current local llms Ranking (coding + general knowledge/reasoning)
Specs: NVIDIA GeForce RTX 4060

| Rank | Model | Why |
|---|---|---|
| **1. Gemma-4-12B-Coder (fable5-composer2.5-v1)** | Coding-focused fine-tune of the Gemma 4 12B base — now the only coding-specialized model in the lineup since Qwen2.5-Coder-14B was dropped from rotation. Same strong base as the general-purpose Gemma 4 12B entries below, tuned toward code. |
| **2. Gemma-4-12B-Obliterated** | Same Gemma 4 12B base as the coder variant, uncensored instead of coding-tuned — best general knowledge/reasoning pick in the current roster. The base model is what carries the capability; "obliterated" and "coder" are both fine-tunes on top of it. |
| **3. Qwen3.5-9B** (plain + `hauhaucs-aggressive` uncensored variant) | Smaller, faster generalist — two variants of the same base (stock vs. uncensored). Expect solid all-around performance a notch below the 12B Gemma models given the parameter gap, but noticeably faster and lighter on VRAM. |
| **4. Dolphin-Mistral-24B (Venice)** | Decent general-purpose model (Mistral Small 24B base), strong creative writing on top of the base's STEM leanings — no independent coding/reasoning benchmark data found for it, only the refusal-rate metric. Treat as a capable generalist, not a coding or reasoning leader. Largest and slowest model in the lineup. |
| **5. Bonsai-27B** (Q1_0) | Nominally 27B params — would beat everything else on paper — but Q1_0 is an extremely aggressive quantization (barely above 1-bit-class) that typically causes real quality loss. That's *how* it fits in 4.7GB. Treat the parameter count with suspicion until tested head-to-head against the 12B models; don't assume it outperforms them just because it's "bigger." |
| **6. Llama-3.1-8B-Lexi-Uncensored** | Oldest gem, uncensored. Smallest and fastest option here, oldest architecture — mainly worth it if you're VRAM-constrained or want max throughput over capability. |

*Not ranked: **GLM-OCR** (891M) — a dedicated OCR/document-extraction model, not a coding or reasoning generalist, so it doesn't belong in this comparison. Useful for a different job.*

## Practical takeaway
- **Best single pick for coding**: Gemma-4-12B-Coder (fable5-composer2.5-v1) — the only coding-tuned model left since Qwen2.5-Coder-14B and Qwen3.6-27B rotated out.
- **Best for general reasoning/knowledge**: Gemma-4-12B-Obliterated.
- **Fastest / most VRAM-friendly**: Qwen3.5-9B or Llama-3.1-8B, depending on how much you're willing to trade capability for speed.
- **Untested wildcard**: Bonsai-27B's Q1_0 quant — worth a quick side-by-side against the 12B Gemma models before trusting it over them.

**Personal takeaway**: at this scale, you can generally get a decent single response and some usable code out of these models directly — but none of them are good enough to drive an agentic coding workflow (Hermes Agent, Pi, etc.). Those setups lean on sustained multi-step tool use and self-correction that a local 8-27B model on a 4060 just doesn't hold up under; stick to a hosted frontier model for agent work and save local models for one-shot prompts and drafting.

### Current list

| Arch | Params | Publisher | LLM | Quant | Size |
| :--- | :--- | :--- | :--- | :--- | :--- |
| qwen35 | 9B | HauhauCS | qwen3.5-9b-uncensored-hauhaucs-aggressive | Q4_K_M | 6.5 GB |
| gemma4 | 7.5B | lmstudio-community | google/gemma-4-e4b | Q4_K_M | 6.3 GB |
| qwen35 | 27B | lmstudio-community | prism-m1/bonsai-27b | Q1_0 | 4.7 GB |
| glm4 | 891M | ggml-org | glm-ocr | Q8_0 | 1.4 GB |
| qwen35 | 9B | lmstudio-community | qwen/qwen3.5-9b | Q4_K_M | 6.5 GB |
| gemma4 | 12B | OBLITERATUS | gemma-4-12b-obliterated | Q4_K_M | 7.4 GB |
| gemma4 | 12B | yuxinlu1 | gemma-4-12b-coder-fable5-composer2.5-v1 | Q3_K_M | 6.1 GB |
| llama | 24B | bartowski | cognitivecomputations_dolphin-mistral-24b-venice-edition | Q4_K_S | 13.5 GB |
| llama | 8B | Orenguteng | llama-3.1-8b-lexi-uncensored-v2 | Q4 | 4.7 GB |
