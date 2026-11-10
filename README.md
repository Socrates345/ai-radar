# AI Radar

A personally curated list of the best AI tools in their category at a given point in time — not a directory of everything that exists.

The focus is on **niche and specific domains** (3D, audio, video, TTS, OCR) that are rarely covered by mainstream AI tool aggregators, and on tools that have been **personally tested or closely evaluated**. Entries are dated so you can track how the landscape has evolved since 2024.

**What makes this different from other lists:**

Most AI tool directories ([awesome-ai-tools](https://github.com/mahseema/awesome-ai-tools), [futuretools.io](https://futuretools.io), [theresanaiforthat.com](https://theresanaiforthat.com)) optimize for breadth — thousands of entries, shallow descriptions, no curation philosophy. This list goes the other direction:

- Best-of-class picks per category, not exhaustive catalogues
- Covers niche domains aggregators skip: 3D, audio synthesis, OCR, cybersecurity
- Includes academic research tools and papers alongside commercial products
- Explicit local/offline tagging — useful if you care about privacy or running without a cloud dependency
- Dated entries since 2024 — older entries show what was state-of-the-art at the time

---

## Categories

| Category | Description |
| --- | --- |
| [AI Agents](Categories/ai-agents.md) | Agentic coding apps, agent frameworks, multi-step AI automation |
| [Video Generation](Categories/video-generation.md) | Text-to-video, image-to-video, live generation, world generation |
| [Video Editing](Categories/video-editing.md) | Editing and transforming existing footage |
| [Image Generation](Categories/image-generation.md) | Text-to-image models, platforms, research demos |
| [Image Editing & Design](Categories/image-editing-design.md) | Image editing tools, upscalers, UI/design platforms |
| [Voice, TTS & Transcription](Categories/voice-tts.md) | Text-to-speech, voice cloning, speech-to-text, translation |
| [Music & Audio](Categories/music-audio.md) | Music generation, AI singing, video-to-audio |
| [3D Tools](Categories/3d-tools.md) | Scene generation, asset creation, reconstruction, rigging |
| [AI Models & LLMs](Categories/ai-models.md) | Niche and notable LLMs, local model runners, benchmark resources |
| [General Tools](Categories/general-tools.md) | Dev tools, production platforms, search, browser extensions |
| [Fine-Tuning & LoRA](Categories/finetuning-lora.md) | Fine-tuning frameworks, model customization platforms |
| [OCR & Document Understanding](Categories/ocr.md) | Optical character recognition and document extraction |
| [Cybersecurity](Categories/cybersecurity.md) | AI-powered security research, vulnerability tools, and agent-driven reverse engineering |
| [Web Scraping](Categories/web-scraping.md) | Web data extraction and LLM-ready conversion tools |

---

## Entry Format

Every entry follows this structure:

```markdown
#### [Tool Name](link) — `MM.YYYY` — `tag1` `tag2`
One-sentence description: what it does and what makes it notable.
```

**Tags** (use only the relevant ones):

| Tag | Meaning |
| --- | --- |
| `open-source` | Weights or code are publicly available |
| `local` | Can run on local hardware (no cloud required) |
| `online` | Cloud-only, requires internet access |
| `api` | Primarily accessed via API |
| `free` | Completely free to use |
| `freemium` | Free tier available, paid tiers exist |
| `paid` | Paid only |
| `research` | Academic / non-production tool |
| `platform` | A platform hosting multiple models or tools |

Entries missing a link, a confirmed date, or a specific tag simply omit that piece rather than being flagged with a placeholder comment.

---

## Sources

Scouting is based on personal research and the following channels:

- [The AI Search](https://www.youtube.com/@theAIsearch) — news and tool discovery focused on newly released models and demos
- [MrEflow](https://www.youtube.com/@mreflow) — practical AI breakdowns with a hands-on workflow perspective
- [The AI Search (Substack)](https://aisearch.substack.com/) and [FutureTools News](https://futuretools.io/news) — scouted automatically via the `/scout` command, which surfaces candidates into `new inputs.md` for review
- Videos from the two channels above (or any YouTube video) — processed via the `/videos` command, which reads the transcript instead of you watching it (see [Video Scouting](#video-scouting))

See [sources.md](sources.md) for the full landscape comparison.

---

## Scouting Workflow

Run `/scout` (a Claude Code project command, defined in `.claude/commands/scout.md`) whenever you want fresh candidates instead of watching videos:

1. It fetches new posts from [The AI Search Substack](https://aisearch.substack.com/) (via RSS) and new items from [FutureTools News](https://futuretools.io/news), going back only as far as the last run.
2. It checks each candidate against every file in `Categories/` and drops anything already in the list (including obvious version bumps of an already-catalogued tool).
3. Survivors get appended to `new inputs.md`, in the same raw one-line format used for manual entries, under a `## Scouted <date>` heading.
4. It does **not** touch any `Categories/*.md` file itself — it only stages candidates for you to review.

Your side of the workflow stays the same as always:

1. Prune `new inputs.md` down to what's actually worth adding — delete the rest.
2. Run `/merge` (`.claude/commands/merge.md`), or ask Claude, to merge what's left into the right `Categories/*.md` files (correct format, dedup/supersession per `CONTRIBUTING.md`, dates verified). Your own raw links in `new inputs.md` are merged too.
3. `new inputs.md` gets cleared back to just its header once merged, ready for the next batch.

`/scout` keeps its own state in `radar-data/scout-state.json` (gitignored) so re-runs don't resurface things you already pruned out. Delete that file if you ever want a full re-scan.

### Video Scouting

Run `/videos` (defined in `.claude/commands/videos.md`) to skip watching long AI news videos:

1. Paste YouTube URLs under `## Queue` in `videos.md` (gitignored).
2. For each video, it pulls the description, chapters and auto-caption transcript (`.claude/scripts/yt_fetch.py`). The AI Search lists every tool in its description; for MrEflow, tools are found in the transcript and looked up on [FutureTools](https://futuretools.io) for the official link, pricing and whether it's a Matt's Pick (`.claude/scripts/ft_lookup.py`).
3. Every mention is checked against `Categories/` and `new inputs.md`, then scored against `radar-data/interest-profile.md` (your taste: niche domains, open/local, fits an RTX 4060, skip robotics/bio/closed frontier LLMs/creator SaaS).
4. Picks are verified (link, `MM.YYYY` date, tags, target section) and appended to `new inputs.md` under `## From videos <date>` as ranked, ready-to-merge entries, each with a "why you" line and a timestamped link to the moment in the video. Skipped and already-listed tools are named on one line each, so nothing disappears unseen.

Review is the same as for `/scout`: prune, then merge. Picks you delete are remembered as rejections, so similar tools score lower next time.

`/videos learn` bootstraps the profile from history. It goes through the past two years of **weekly AI news episodes** from both channels (tutorials and reviews are ignored), up to your last merge. It checks which mentioned tools ended up in `Categories/` (`.claude/scripts/history_match.py`) and proposes keep-rate rules for the profile, with the last 6 months weighted over older history. Nothing is applied without your OK. Re-run it now and then; it only looks at episodes newer than the last learn run.

Setup, once: `python3 -m venv .claude/venv && .claude/venv/bin/pip install yt-dlp youtube-transcript-api`. Auto-pulling new news episodes from both channels is on (`autoPull.enabled` in `radar-data/videos-state.json`); pasted links are still processed, and a video pasted twice, or pasted and also auto-pulled, is processed once.

### Weekly run

Both steps also run by themselves every Sunday, on this PC, in the dev container (Windows Task Scheduler → `deploy/windows/ai-radar.ps1` → `.claude/scripts/weekly.sh` → `claude -p`):

| When | What runs | Your phone gets |
| --- | --- | --- |
| Sunday 09:00 | `/videos`: new weekly news episodes from both channels, plus anything under `## Queue` | "AI Radar: review new inputs.md", with the number of picks |
| Before 18:00 | You review `new inputs.md`: delete what you don't want, add your own links. Done early? Double-click `deploy\windows\merge-now.cmd` | |
| Sunday 18:00 | `/merge` of whatever is left in `new inputs.md` (nothing to do if merge-now already ran) | "AI Radar merge: done", with counts |

Then review `git diff Categories/` and commit: the weekly run never touches git. If the PC was off on Sunday, both steps run at your next login, and the merge still waits until 2 hours after `/videos` finished.

**Permissions.** Background Claude gets only an explicit list, set in `weekly.sh`, and everything else is refused: read the repo; edit `Categories/*.md`, `new inputs.md`, `videos.md`, `radar-data/videos-state.json` and `radar-data/interest-profile.md`; write the two run summaries in `radar-data/`; run the three helper scripts; WebFetch and WebSearch (no curl). Reads outside this repo are refused, and git is always denied, and each run is capped at $5. The run's data lives in `radar-data/` (gitignored) rather than `.claude/`, because Claude Code won't let an unattended run write in `.claude/`.

**Setup, once:**

1. Alerts: copy `deploy/weekly.env.example` to `radar-data/weekly.env`, set a random ntfy topic, subscribe to it in the ntfy app, then test from the container with `bash .claude/scripts/weekly.sh notify-test`.
2. Tasks: from PowerShell in the repo folder, `powershell -ExecutionPolicy Bypass -File deploy\windows\register-tasks.ps1`. It prints how to run a step now, check status and remove the tasks.
3. Start the container at boot (optional, the tasks start it anyway): tick *Start Docker Desktop when you sign in to your computer* in Docker Desktop's settings, and add `"runArgs": ["--restart=unless-stopped"]` to `.devcontainer/devcontainer.json`, then rebuild the container once.

Logs and backups of `new inputs.md` / `videos.md` from before each step are kept in `radar-data/logs/` (newest 30).

---

## Roadmap

- **Automated scouting** — done: `/scout` on demand, and `/videos` + `/merge` every Sunday (see [Weekly run](#weekly-run))
- **Human-in-the-loop validation** — every new entry reviewed before it lands in the list
- **Structured comparisons** — head-to-head notes within categories (e.g. best local video model in June 2025)

---

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).
