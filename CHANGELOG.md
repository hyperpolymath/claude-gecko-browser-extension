<!--
SPDX-License-Identifier: MPL-2.0
SPDX-FileCopyrightText: 2026 Jonathan D.A. Jewell (hyperpolymath)
-->

# Changelog

All notable changes to `claude-gecko-browser-extension` will be documented in this file.

This file is generated from conventional commits by the
[`changelog-reusable.yml`](https://github.com/hyperpolymath/standards/blob/main/.github/workflows/changelog-reusable.yml)
workflow (`hyperpolymath/standards#206`). Adopt the workflow in this repo's CI to keep this file in sync automatically — see
[`templates/cliff.toml`](https://github.com/hyperpolymath/standards/blob/main/templates/cliff.toml)
for the canonical config.

The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/);
this project aims to follow [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Fixed

- fix(examples): migrate SafeDOMExample.affine to current AffineScript grammar (Refs gitbot-fleet#148, #208) (#30)
- fix(licence): gecko MPL-2.0 throughout (owner-ruled, full repo) (#24)
- fix(licence): gecko scaffold/variant -> MPL-2.0 (owner-ruled) (#23)
- fix(ci): sync hypatia-scan.yml to canonical (413: env.HOME+Phase-2+SARIF) (#18)
- fix(ci): adopt canonical hypatia-scan.yml (env.HOME/scanner-layout + Comment-step gate) (#16)
- fix(ci): rsr-antipattern.yml duplicate heredoc (#15)
- fix: remove duplicate SCM files from root
- fix(security): update editorconfig SHA and CodeQL language

### CI

- ci(secret-scanner): drop duplicate --fail from trufflehog extra_args (#14)
- ci: fix workflow-linter YAML parse error + self-flag bug
- ci: fix workflow-linter self-flag bug
- ci(antipattern): fix top-level dir matching + benchmarks/lsp/bench filename allowlists (#10)
- ci(antipattern): TS check reads .claude/CLAUDE.md exemption table (#9)

## Pre-history

Prior commits to this file's introduction are recorded in git history but not formally classified into Keep-a-Changelog sections. To backfill, run `git cliff -o CHANGELOG.md` locally using the canonical [`cliff.toml`](https://github.com/hyperpolymath/standards/blob/main/templates/cliff.toml) — this is one-shot mechanical work.

---

<!-- This file was seeded by the 2026-05-26 estate tech-debt audit follow-up (Row-2 Phase 3); see [`hyperpolymath/standards/docs/audits/2026-05-26-estate-documentation-debt.md`](https://github.com/hyperpolymath/standards/blob/main/docs/audits/2026-05-26-estate-documentation-debt.md). -->
