# Contributing to Grok Skills

This collection grows through real Grok Build work, not theoretical exercises.

## What Makes a Good Skill

A skill must:

1. **Emerge from real work** — extracted from an actual session, not invented for the repo
2. **Be self-contained** — a reader can apply it without external context
3. **Include an Origin section** — document the session or source repo that produced it
4. **Follow Gold Hat** — empower users, never extract from them
5. **Stay honest** — no invented virality, star-count theater, or unverified multipliers

## Structure

Each skill is a directory containing at minimum a `SKILL.md`:

```
skills/your-skill-name/
  SKILL.md             # Required
  references/          # Optional: supporting files, templates, examples
```

Grok discovers `~/.grok/skills/<name>/SKILL.md` or `./.grok/skills/<name>/SKILL.md`. Do not nest a skill inside another skill directory.

## SKILL.md Format

```markdown
---
name: your-skill-name
description: "What it does. Trigger phrases so Grok auto-invokes it."
when-to-use: optional extra trigger phrases
metadata:
  author: HermeticOrmus
  short-description: short UI label
---

# Skill Name

[What it does in 1-2 sentences]

## When to Use
[Situations this applies]

## Instructions
[Step-by-step process]

## Quality Criteria
[How to know the output is good]

## Anti-Patterns
[Common mistakes to avoid]

## Origin
[What session or source produced this]
```

`description` controls auto-invocation. Put the trigger words there.

## Submitting

1. Fork the repo
2. Create a branch: `skill/your-skill-name`
3. Add the skill under `skills/`
4. Update the catalog table in README.md
5. Submit a PR against `main`

## Code of Conduct

We follow the Gold Hat Philosophy: every contribution should empower users, never extract from them. Be genuine, be clear, be conscious.
