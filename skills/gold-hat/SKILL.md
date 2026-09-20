---
name: gold-hat
description: >
  Apply the Gold Hat filter — empower or extract? — to a design, feature,
  install path, or commit. Use when a decision could add lock-in, dark
  patterns, surveillance, hidden automation, or dependence. Triggers:
  gold hat, empower or extract, should this ship, dark pattern, lock-in.
when-to-use: gold hat, empower or extract, dark pattern, lock-in, extract
metadata:
  author: HermeticOrmus
  short-description: Empower-or-extract decision filter
license: MIT
---

# Gold Hat

One question: does this empower or extract? If the honest answer is extract, it does not ship.

Canonical statement: https://github.com/HermeticOrmus/gold-hat-manifesto

This skill is the operative checklist. The manifesto is the source of truth. Do not invent a second doctrine.

## When to Use

- A feature, skill, install step, or copy could create dependence, hide how it works, or move user data off their machine
- A design decision is unclear and you need a tiebreaker
- Reviewing a PR, prompt, or product surface for extractive drift
- User says "gold hat", "empower or extract", or asks whether something should ship

## Instructions

1. **Name the artifact.** One sentence: what is being decided (feature, default, copy, telemetry, install path, automation).
2. **Score the table.** For each row, mark Always / Never / Unclear.

   | Always | Never |
   |---|---|
   | Empower the person using the tool | Dark patterns |
   | Teach while helping | Surveillance capitalism |
   | Respect autonomy | Addiction mechanics |
   | Build for the long term | Quick fixes that rot |
   | Solve the root cause | Patch the symptom |

3. **Apply the tiebreaker.** When a row is unclear, pick the option that leaves the user more in control of their own work and their own data.
4. **Check the four failure modes** that show up in agent tooling:
   - **Hidden how.** Automation that the user could not repeat by hand. Name the pattern or refuse the opacity.
   - **Hostage state.** State that only lives in a remote service. Prefer local files the user can read, edit, and delete.
   - **Dependence.** The person leaves less capable than they arrived. Teach the move; do not just do it.
   - **Extractive default.** Opt-out telemetry, dark confirm, engagement loops, "just this once" key collection.
5. **Decide in the open.**
   - **Ship** — every Always row holds; no Never row is triggered.
   - **Change** — name the extractive bit and the empowering alternative.
   - **Refuse** — if the honest answer is extract and there is no honest alternative.

State the decision in one short paragraph. Do not hedge. Do not moralize.

## Quality Criteria

- The artifact is named; the table is applied; the decision is Ship / Change / Refuse
- The user could apply the same filter without you
- No invented metrics, virality claims, or "everyone needs this"
- Secrets, API keys, and user data stay on hardware the user controls

## Anti-Patterns

- Shipping because it is impressive, viral, or "what the model wants"
- Teaching a second Gold Hat that diverges from the manifesto
- Collecting keys "for convenience" into a repo or skill
- Quiet telemetry, dark confirm, or engagement loops
- Doing the work so well the user cannot do it next time

## Origin

Adapted for Grok Build from [gold-hat-manifesto](https://github.com/HermeticOrmus/gold-hat-manifesto) and this repo's `GOLD_HAT.md`. The phrase is Diego Bodart's (HermeticOrmus) operating identity: not "do no harm" (white hat) but "leave them better off".
