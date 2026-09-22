# 3D Tools

> Personal selection of the best 3D generation, reconstruction, rigging, and scene tools. Sorted newest first within each section.

### 3D Scene & World Generation
#### [WorldSculpt](https://github.com/AlayaLab/WorldSculpt) — `09.2026` — `open-source` `research`
Alaya Lab/University of Tokyo's compositional scene generation — reconstructs cluttered scenes of hundreds of objects into complete, editable per-object meshes by adapting the single-object Pixal3D prior to occluded multi-view input.
#### [Hunyuan3D-WorldClaw](https://tencent-hunyuan.github.io/Hunyuan3D-WorldClaw/) — `08.2026` — `research`
Tencent's agentic pipeline for generating explicit, editable 3D open-worlds from a text prompt, orchestrating multiple models inside Blender; paper/demo only, no public code or weights yet.
#### [4DAnyone](https://4danyone.github.io/) — `08.2026` — `open-source` `local` `research` `free`
Reconstructs photorealistic 4D Gaussian Splatting human models from a single casual smartphone video, with generated multi-view consistency and no calibration/rig needed.
#### [AnchorWorld](https://yuli0103.github.io/AnchorWorld/) — `06.2026` — `research`
First-person interactive 3D world simulation driven by human body motion, with anchor-view text prompts to evolve the scene.
#### [Lift4D](https://lift4d.github.io/) — `06.2026` — `open-source` `research`
Reconstructs a full 4D scene (3D geometry + appearance + deformation over time), including unobserved regions, from a single monocular in-the-wild video.
#### [PanoWorld](https://jjrcn.github.io/PanoWorld-project-home/) — `05.2026` — `open-source` `research`
Panoramic world generation — creates wide-field immersive 3D environments from a single view.
#### [Map2World](https://robot0321.github.io/Map2World/index.html) — `05.2026` — `research`
Generates explorable 3D worlds conditioned on user-defined segment maps, with consistent object scales across large environments.
#### [UniMesh](https://aigeeksgroup.github.io/UniMesh/) — `04.2026` — `open-source` `research`
Edit 3D models using text prompts.
#### [Vista4D](https://eyeline-labs.github.io/Vista4D/) — `04.2026` — `open-source` `research`
Reconstruct a 4D scene (3D + time) from a video.
#### [Meta ShapeR](https://facebookresearch.github.io/ShapeR/) — `03.2026` — `open-source` `research`
Meta's metric 3D shape reconstruction from casual multi-view image sequences and sparse SLAM points.
#### [Video to World](https://lukashoel.github.io/video_to_world/) — `03.2026` — `open-source` `research`
Generate a navigable 3D world from a video.
#### [VIGA](https://fugtemypt123.github.io/VIGA-website/) — `02.2026` — `open-source` `research`
Vision as inverse graphics agent — converts a photo into a full 3D scene editable in Blender.
#### [MV-Inverse](https://maddog241.github.io/mvinverse-page/) — `12.2025` — `open-source` `local` `research`
Image-to-3D scene with multi-layer decomposition; runs locally.
#### [Pixie 3D](https://pixie-3d.github.io/) — `08.2025` — `open-source` `research`
Generate 3D scenes with correct physics simulation.
#### [Hunyuan World](https://3d-models.hunyuan.tencent.com/world/) — `05.2025` — `open-source` `research`
Tencent's world creator — generates full navigable maps and environments.
#### [3DRegen](https://3dregen.jdihlmann.com/) — `03.2025` — `open-source` `research`
Image-to-3D scene reconstruction with multi-layer depth for interior spaces.
#### [IGGT](https://lifuguan.github.io/IGGT_official/) — `02.2025` — `open-source` `research`
Reconstruct a room in 3D from photos, with object identification.
#### [Genie 2](https://deepmind.google/discover/blog/genie-2-a-large-scale-foundation-world-model/) — `12.2024` — `research`
Google DeepMind's large-scale foundation world model.
#### [Lyra 2](https://research.nvidia.com/labs/sil/projects/lyra2/) — `11.2024` — `open-source` `research`
NVIDIA's explorable generative 3D worlds.
#### [WorldLabs](https://www.worldlabs.ai/blog/marble-world-model) — `10.2024` — `online`
Image-to-interactive-3D world generation.

### 3D Asset Generation
#### [Tripo P2.0 Preview](https://www.tripo3d.ai/blog/tripo-p2-0-preview) — `08.2026` — `online` `freemium` `api`
Tripo AI's preview release of native quad-topology 3D mesh generation (up to 50K triangles/25K quads) aimed at game-ready, riggable assets.
#### [Multi-Agent-CAD](https://github.com/Pan-Chera/Multi-Agent-CAD) — `07.2026` — `open-source` `local` `free`
4-agent, LangGraph-orchestrated framework that converts natural-language descriptions into printable 3D CAD models, cutting token usage ~116x versus single-agent approaches.
#### [Arbor](https://arbor.jdihlmann.com/) — `06.2026` — `research`
Explicit geometric conditioning for controllable 3D asset generation, using constraint meshes as a native 3D control interface — unrelated to the "Arbor" research agent in `general-tools.md`.
#### [World-Tracing](https://haoz19.github.io/world-tracing-page/) — `06.2026` — `open-source` `research`
High-fidelity image-to-3D model generation.
#### [Mesh-Flow](https://mesh-flow.github.io/) — `06.2026` — `open-source` `research`
Fast 3D mesh generation.
#### [PhysForge](https://hku-mmlab.github.io/PhysForge/) — `05.2026` — `open-source` `research`
Generates simulation-ready 3D assets combining VLM-based physical planning with physics-grounded diffusion modeling.
#### [Pixal3D](https://ldyang694.github.io/projects/pixal3d/) — `05.2026` — `open-source` `research`
Creates high-fidelity 3D models from photographs via explicit pixel-to-3D geometry correspondence.
#### [Apple ML-Lito](https://apple.github.io/ml-lito/) — `05.2026` — `open-source` `research`
Apple's 3D model generator with physics-accurate lighting — models surfaces and illumination for realistic rendering.
#### [PartCrafter](https://wgsxm.github.io/projects/partcrafter/) — `11.2025` — `open-source` `research`
Image to 3D mesh with segmented parts — generates a full multi-part assembly.
#### [UltraShape 1.0](https://pku-yuangroup.github.io/UltraShape-1.0/) — `06.2025` — `open-source` `research`
Image-to-3D model generation.
#### [Ultra3D](https://buaacyw.github.io/ultra3d/) — `05.2025` — `open-source` `research`
Top-tier 3D model generation as of July 2025.
#### [Direct3D-S2](https://nju-3dv.github.io/projects/Direct3D-S2/) — `05.2025` — `open-source` `research`
Direct image-to-3D model generation.
#### [TRELLIS 2](https://microsoft.github.io/TRELLIS.2/) — `04.2025` — `open-source` `research`
Microsoft's top-tier 3D model generator from a single image.
#### [Elevate3D](https://elevate3d.pages.dev/) — `04.2025` — `open-source` `free`
Optimize and improve the quality of existing 3D models.
#### [Nano3D](https://jamesyjl.github.io/Nano3D/) — `04.2025` — `open-source` `research`
Edit 3D models with text prompts.
#### [Hi3DGen](https://stable-x.github.io/Hi3DGen/) — `03.2025` — `open-source` `research`
High-quality 3D model generation; best-in-class at time of discovery.
#### [Hunyuan3D 2.0 MV](https://3d-models.hunyuan.tencent.com/) — `03.2025` — `open-source` `free`
Tencent's open-source multi-view 3D model generation.
#### [Rodin AI 1.5](https://huggingface.co/collections/Nuanmanee/rodin-gen-1) — `03.2025` — `online`
3D-aware diffusion model for sculpting highly detailed digital avatars and objects from text or a single image.
#### [MeshPad](https://derkleineli.github.io/meshpad/) — `03.2025` — `open-source` `research`
Convert a 2D drawing into a 3D mesh.
#### [SPAR3D](https://huggingface.co/spaces/ilcve21/Sparc3D) — `02.2025` — `open-source` `research`
Stability AI's high-resolution 3D shape modeling framework based on sparse representation.
#### [DiffSplat](https://chenguolin.github.io/projects/DiffSplat/) — `01.2025` — `open-source` `research`
Diffusion-based 3D Gaussian splatting generation.
#### [TRELLIS](https://trellis3d.github.io/) — `11.2024` — `open-source` `research`
Image to 3D asset generation; predecessor to TRELLIS 2.
#### [MaterialAnything](https://xhuangcv.github.io/MaterialAnything/) — `11.2024` — `open-source` `research`
PBR material generator — apply physically-based rendering materials to any 3D object.
#### [Meshy 5](https://www.meshy.ai/) — `online` `freemium` `platform`
Text and image to 3D mesh; production-ready asset generation platform.

### 3D Reconstruction & Point Cloud
#### [Lucida (R2S)](https://lucida-r2s.github.io/) — `08.2026` — `research`
ByteDance Seed's real-to-sim scene modeling — parses multi-view images into object instances, generates complete 3D assets from partial views, and refines poses via closed-loop GizmoAct placement; outputs editable per-object meshes rather than a merged point cloud. Unrelated to the local image-editing "Lucida" in `image-editing-design.md`.
#### [FixAnything](https://fix-anything.github.io/) — `08.2026` — `research`
Repairs rendering artifacts from 3D representations (Gaussian Splatting, NeRF, meshes, point clouds) using a pretrained video diffusion model with a lightweight LoRA adapter.
#### [ARDY](https://research.nvidia.com/labs/sil/projects/ardy/) — `07.2026` — `open-source` `local` `research`
NVIDIA's autoregressive diffusion model for real-time, text-and-keyframe-controllable 3D human motion generation, demonstrated on games and robot control.
#### [Surflo](https://anttwo.github.io/surflo/) — `06.2026` — `open-source` `research`
Converts an image into a 3D point/surface splat representation.
#### [GenRecon](https://kasothaphie.github.io/GenRecon/) — `06.2026` — `open-source` `research`
Reconstructs a 3D scene from ordinary phone-captured video.
#### [RecGen](https://reconstruction-by-generation.github.io/) — `04.2026` — `open-source` `research`
Reconstructs complete 3D multi-object scenes — shape, texture, and pose — from RGB-D images, even under heavy occlusion.
#### [Depth Anything 3](https://depth-anything-3.github.io/) — `11.2025` — `open-source` `research`
Image and video to 3D scene reconstruction via monocular depth estimation.
#### [ArtiFixer](https://research.nvidia.com/labs/sil/projects/artifixer/) — `06.2025` — `open-source` `research`
Enhanced 3D reconstruction using auto-regressive diffusion models (NVIDIA).
#### [Utonia](https://pointcept.github.io/Utonia/) — `05.2025` — `open-source` `research`
3D model that understands and processes point cloud data.
#### [WildDet3D](https://allenai.github.io/WildDet3D/) — `04.2025` — `open-source` `research`
3D person and object detection from in-the-wild images and video.
#### [4K Gaussian Splatting](https://yxlao.github.io/lgtm/) — `04.2025` — `open-source` `research`
Feed-forward 4K textured Gaussian splatting reconstruction.
#### [AnyRecon](https://yutian10.github.io/AnyRecon/) — `03.2025` — `open-source` `research`
Convert photos into a 3D point cloud.

### Character, Rigging & Animation
#### [UniMate](https://github.com/Friedrich-M/UniMate) — `09.2026` — `open-source` `free`
Princeton/UC Berkeley/MIT's unified motion model — animates arbitrary skeletons (bipedal, quadrupedal, avian, marine, insectoid...) from a rigged 3D asset + text prompt, with no per-skeleton retraining; ships with the 13K-sequence UniML3D dataset.
#### [ViDiHand](https://vidihand.github.io/) — `07.2026` — `research`
Reconstructs 3D/4D hand motion from egocentric video using a pretrained video diffusion model — no detection, inpainting, or test-time optimization needed.
#### [VideoMDM](https://videomdm.github.io/) — `06.2026` — `open-source` `research`
Generates 3D human motion sequences.
#### [MAMMA](https://mamma.is.tue.mpg.de/) — `06.2026` — `research`
Multi-person motion capture from video (Max Planck/TUE).
#### [Flex4DHuman](https://andy-cheng.github.io/Flex4DHuman/) — `06.2026` — `open-source` `research`
Multi-view video diffusion model that turns monocular or sparse multi-view video of dynamic subjects into synchronized dense multi-view video, enabling 4D Gaussian-splat reconstruction.
#### [Articraft](https://articraft3d.github.io/) — `05.2026` — `research`
Agentic system for generating complex articulated 3D assets with movable joints at scale.
#### [SegviGen](https://fenghora.github.io/SegviGen-Page/) — `03.2026` — `open-source` `research`
Auto-colored 3D models ready for easy segmentation.
#### [SkinTokens](https://arxiv.org/html/2602.04805v1) — `02.2026` — `open-source` `research`
Autoregressive rigging of 3D characters.
#### [MorphAny3D](https://xiaokunsun.github.io/MorphAny3D.github.io/) — `01.2026` — `open-source` `research`
Smooth 3D model transitions — morph between two 3D models.
#### [PhysX-Anything](https://physx-anything.github.io/) — `11.2025` — `open-source` `research`
Predict 3D object kinematics and physics from an image.
#### [GeoSAM2](https://detailgen3d.github.io/GeoSAM2/) — `08.2025` — `open-source` `research`
Segment 3D objects and meshes with SAM2-like precision.
#### [Skeleton-Conditioned Generation](https://sk-adapter.github.io/) — `06.2025` — `open-source` `research`
Generate 3D content conditioned on skeleton input.
#### [MoCapAnything V2](https://animotionlab.github.io/MoCapAnythingV2/) — `05.2025` — `open-source` `research`
Accurate skeleton mesh and motion capture from any input.
#### [Hunyuan3D Part](https://github.com/Tencent-Hunyuan/Hunyuan3D-Part) — `05.2025` — `open-source` `research`
Segment and decompose 3D objects into individual parts.
#### [One-to-All Animation](https://github.com/ssj9596/One-to-All-Animation) — `05.2025` — `open-source` `research`
Animate a character image across multiple motion styles.
#### [AniGen](https://github.com/VAST-AI-Research/AniGen) — `04.2025` — `open-source` `research`
Co-generates 3D shape, hierarchical skeleton, and skinning weights simultaneously from a single image — bypasses traditional brittle rigging pipelines.
#### [SAM 3D](https://github.com/facebookresearch/sam-3d-objects) — `03.2025` — `open-source` `research`
Meta AI's foundation model for full 3D object shape, texture, and layout reconstruction from a single real-world image.

### 3D Editing
#### [MoCA](https://lizhiqi49.github.io/MoCA) — `12.2025` — `open-source` `research`
Image-to-3D model with split, individually movable parts.
#### [VoxHammer](https://huanngzh.github.io/VoxHammer-Page/) — `08.2025` — `open-source` `research`
Voxel-based 3D editing tool.
#### [Tinker](https://aim-uofa.github.io/Tinker/) — `08.2025` — `open-source` `research`
3D video editor for scene and object manipulation.
#### [SARAH](https://evonneng.github.io/sarah/) — `06.2025` — `open-source` `research`
Real-time streaming 3D motion generation for virtual avatars responding dynamically to human movement and speech via flow matching.
#### [3D Agent](https://moonlakeai.com/blog/3d-agent) — `05.2025` — `online`
Agentic 3D world building that works directly with tools like Blender.
#### [OccluGaussian](https://occlugaussian.github.io) — `04.2025` — `open-source` `research`
Occlusion-aware 3D Gaussian Splatting for reconstructing large scenes and dynamic human rendering in heavily occluded views.

> **Incoming from other files:** WorldLabs, Genie 2, WildDet3D → from `video-generation.md` · PartCrafter → from `image-editing-design.md`
