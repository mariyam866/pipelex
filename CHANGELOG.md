# Changelog

## [v0.2.9] - 2025-05-30

- Include `pyproject.toml` inside the project build
- Fix image handle factory: handle format is `platform/model_name`
- pipelex cli: Added `list-pipes` method that can list all the availables pipes with descriptions/
- Use a minimum version for `uv` instead of a fixed version
- Implement `AGENTS.md` for Codex
- Add tests for some of the `tools.misc`
- pipelex cli: Rename `pipelex run-setup` to `pipelex validate`

## [v0.2.8] - 2025-05-28

- Defaults to `uv`
- Simplify llm provider config
- Added logging level `OFF`, prevents any log from hitting the console

## [v0.2.7] - 2025-05-26

- Reboot repository

## [v0.2.6] - 2025-05-26

- Refactor: use `ActivityManagerProtocol`, rename `BaseModelTypeVar`

## [v0.2.5] - 2025-05-25

- Add custom LLM integration via OpenAI sdk with custom `base_url`

## [v0.2.4] - 2025-05-25

- Tidy tools
- Tidy inference API plugins
- Tidy WIP feature `ActivityManager`

## [v0.2.2] - 2025-05-22

- Simplify the use of native concepts
- Include "page views" in the outputs of Ocr features

## [v0.2.1] - 2025-05-22

- Added `OcrWorkerAbstract` and `MistralOcrWorker`, along with `PipeOcr` for OCR processing of images and PDFs.
- Introduced `MissionManager` for managing missions, cost reports, and activity tracking.
- Added detection and handling for pipe stack overflow, configurable with `pipe_stack_limit`.
- More possibilities for dependency injection and better class structure.
- Misc updates including simplified PR template, LLM deck overrides, removal of unused config vars, and disabling of an LLM platform id.

## [v0.2.0] - 2025-05-19

- Added OCR, thanks to Mistral
- Refactoring and cleanup

## [v0.1.14] - 2025-05-13

- Initial release 🎉
