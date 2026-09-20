---
name: commit-standard
description: >
  Write git commits to the Ormus Commit Standard (OCS) v1.0, adapted for
  Grok Build. Use when drafting, rewriting, or reviewing a commit message.
  Triggers: commit message, OCS, conventional commit, git commit, no emoji.
when-to-use: commit message, OCS, conventional commit, git commit
metadata:
  author: HermeticOrmus
  short-description: OCS v1.0 commit messages for Grok Build
license: MIT
---

# Commit standard (OCS v1.0, Grok adaptation)

Apply to every commit that will land on a shared branch.

Source of truth (examples, hook, commitlint): https://github.com/HermeticOrmus/commit-standard-skills

This skill is the Grok-usable subset. Do not invent a second standard. If upstream style differs, follow upstream.

## When to Use

- Writing or rewriting a commit message
- Reviewing whether a commit is atomic and signal-dense
- User says "commit standard", "OCS", or "write the commit"

## Shape

```
<type>(<scope>): <imperative summary, ≤72 chars, no trailing period>

<why this change exists — 1-2 sentences>

<what the diff does not show — invariants, alternatives>

Refs: #123
Fixes: #789
```

## Types

`feat` `fix` `refactor` `perf` `docs` `test` `style` `chore` `build` `ci` `revert`

| Type | Use when |
|---|---|
| `feat` | New behavior visible to a user or caller |
| `fix` | Observable wrong behavior is now right |
| `refactor` | Internal restructure, no behavior change |
| `perf` | Faster, no behavior change |
| `docs` | Documentation only |
| `test` | Tests only |
| `style` | Formatting. No logic change |
| `chore` | Deps, config, repo plumbing |
| `build` | Build system, packaging |
| `ci` | CI pipeline only |
| `revert` | Reverts a previous commit; body names the SHA |

Scope is optional, lowercase, kebab-case. Skip only when the change is genuinely repo-wide.

## Subject

- Imperative: `add`, not `added` or `adds`
- Lowercase first letter of the summary
- No trailing period
- ≤72 chars total (aim ≤50)
- No emoji
- No ` and ` — that is two commits hiding as one

## Body

- Blank line after the subject
- Lead with why, then what the diff does not show
- Wrap at 72 (URLs/paths may run longer)
- 2-4 short paragraphs. More means the change is too big
- Do not restate the diff
- No hype, no apologies, no self-references

## Footers

`Refs` `Fixes` `Closes` `BREAKING CHANGE` `Risk` `Verified` `Co-Authored-By`

`Co-Authored-By` is for authentic human collaboration only.

## Banned (Grok adaptation)

The Claude-era bans still apply, plus the Grok equivalents:

- Emoji prefixes (`fix:`, Gitmoji, decorative marks in the subject)
- AI tool footers: `Generated with Claude Code`, `Co-Authored-By: Claude`, `Generated with Grok`, `Co-Authored-By: Grok`, Cursor/agent trailer blocks unless the user explicitly asked for that commit
- Marketing language: "powerful", "stunning", "best-in-class"
- Bare `chore: misc` or scope-less catch-alls
- WIP commits on shared branches — squash first

The work is the user's unless they opt in to an AI trailer.

## Atomicity

- One concern per commit
- Tests for a behavior change ship in the same commit
- Squash WIP before push
- Do not amend a published commit on a shared branch
- Prefer rebase over merge commits

## Instructions

1. Read the staged diff. If nothing is staged, stop and say so.
2. Split if the subject would need ` and `.
3. Pick type and scope from the taxonomy. Do not default to `chore`.
4. Write the subject, then the why-first body when the change is non-trivial.
5. Run the checklist. If a box fails, rewrite before `git commit`.

## Pre-commit checklist

1. Subject ≤ 72? Aim 50.
2. Imperative mood?
3. Lowercase first letter, no trailing period?
4. Type chosen deliberately?
5. Scope present and meaningful, or genuinely repo-wide?
6. Body leads with why (non-trivial changes)?
7. No emoji?
8. No AI footers (Claude, Grok, or otherwise)?
9. No ` and ` in the subject?
10. Diff matches the message? No unnamed drive-bys.

## Quality Criteria

- `git log --oneline` is readable five years later
- A reviewer learns why without reading the marketing brief
- The message would pass the hook in commit-standard-skills

## Anti-Patterns

- Past-tense subjects (`fixed`, `updated`)
- Restating the diff in the subject
- Bundling feat + refactor + docs
- Adding an AI footer "for honesty" when the user did not ask
- Inventing issue numbers

## Origin

Adapted for Grok Build from [commit-standard-skills](https://github.com/HermeticOrmus/commit-standard-skills) (OCS v1.0: Conventional Commits + Chris Beams + Tim Pope, minus Gitmoji and AI footers). The only Grok-specific delta is banning Grok/agent trailers the same way Claude trailers were banned.
