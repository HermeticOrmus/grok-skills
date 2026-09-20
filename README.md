<p align="center">
  <img src="https://ormus.solutions/mascot/pixellab_liquid_to_flame.gif" alt="Grok Skills" width="128" style="image-rendering: pixelated;" />
</p>

<h1 align="center">Grok Skills</h1>

<p align="center">
  <em>Grok versions of HermeticOrmus skills — adapted for Grok Build's truth-seeking, tool-using, maximally helpful style. Gold Hat, Vibe Engineer, Reality OS discipline.</em>
</p>

<p align="center">
  <a href="https://github.com/HermeticOrmus/grok-skills/stargazers"><img src="https://img.shields.io/github/stars/HermeticOrmus/grok-skills?style=flat-square&color=aa8142" alt="Stars" /></a>
  <a href="https://github.com/HermeticOrmus/grok-skills/blob/main/LICENSE"><img src="https://img.shields.io/github/license/HermeticOrmus/grok-skills?style=flat-square&color=aa8142" alt="License" /></a>
  <a href="https://github.com/HermeticOrmus/grok-skills/commits"><img src="https://img.shields.io/github/last-commit/HermeticOrmus/grok-skills?style=flat-square&color=aa8142" alt="Last Commit" /></a>
  <img src="https://img.shields.io/badge/Hermetic_Grok-aa8142?style=flat-square" alt="Hermetic Grok" />
  <img src="https://img.shields.io/badge/Grok-aa8142?style=flat-square" alt="Grok" />
</p>

---

> Operating skills for Grok Build. Direct tools, session continuity pointers, and the Gold Hat filter. No invented virality.

Companion collections: [grok-build-skills](https://github.com/HermeticOrmus/grok-build-skills) (broader Grok-native pack) and [claude-exorcist](https://github.com/HermeticOrmus/claude-exorcist) (on-ramp when leaving Claude-built projects).

## Quick Start

Grok Build discovers skills from these locations ([xAI docs](https://docs.x.ai/build/features/skills-plugins-marketplaces)):

- `~/.grok/skills/<name>/SKILL.md` — user-global (`$GROK_HOME` if set)
- `./.grok/skills/<name>/SKILL.md` — this repo, walked up to the git root
- Extra directories listed under `[skills].paths` in `~/.grok/config.toml`

Each skill is a **directory that contains `SKILL.md`**. A clone parked at `~/.grok/skills/grok-skills` is **not** enough by itself — Grok will not see nested `skills/*/SKILL.md` unless you add that folder to `[skills].paths`.

### 1. User-global (usual)

```bash
git clone https://github.com/HermeticOrmus/grok-skills ~/src/grok-skills
cd ~/src/grok-skills
chmod +x install.sh
./install.sh
```

`install.sh` symlinks each `skills/<name>` to `~/.grok/skills/<name>`. Pull later and the links stay current.

Manual equivalent:

```bash
mkdir -p ~/.grok/skills
ln -sfn "$PWD/skills/gold-hat"            ~/.grok/skills/gold-hat
ln -sfn "$PWD/skills/commit-standard"     ~/.grok/skills/commit-standard
ln -sfn "$PWD/skills/liquid-gold-teach"   ~/.grok/skills/liquid-gold-teach
```

Copy instead of symlink if you want a snapshot:

```bash
mkdir -p ~/.grok/skills
cp -R skills/* ~/.grok/skills/
```

### 2. Keep the checkout, add a discovery path

```bash
git clone https://github.com/HermeticOrmus/grok-skills ~/.grok/skills/grok-skills
```

Then in `~/.grok/config.toml`:

```toml
[skills]
paths = ["/home/YOU/.grok/skills/grok-skills/skills"]
```

Replace `YOU` with your home path. Without that line, the nested clone stays invisible.

### 3. Project-local

```bash
cd /path/to/your-project
mkdir -p .grok/skills
cp -R /path/to/grok-skills/skills/* .grok/skills/
```

### Confirm

Start a **new** Grok Build session (or wait for skill reload) and run `/skills`. You should see `gold-hat`, `commit-standard`, and `liquid-gold-teach`. Invoke with `/gold-hat`, `/commit-standard`, or `/liquid-gold-teach`.

Doctrine first: copy [grok-build-reality-os](https://github.com/HermeticOrmus/grok-build-reality-os) `AGENTS.md` to `~/.grok/AGENTS.md` (or `.grok/AGENTS.md` in a project) so sessions load Gold Hat + Liquid Gold before any skill fires.

## Skills in this repo

These three are the highest-leverage operating layer. They are not stubs.

| Skill | Job | Invoke |
|-------|-----|--------|
| [gold-hat](./skills/gold-hat/SKILL.md) | Empower-or-extract filter. Ship / Change / Refuse | `/gold-hat` |
| [commit-standard](./skills/commit-standard/SKILL.md) | Ormus Commit Standard v1.0, Grok-adapted (no Claude/Grok AI footers) | `/commit-standard` |
| [liquid-gold-teach](./skills/liquid-gold-teach/SKILL.md) | Teach while helping. Name the pattern so the user can repeat it | `/liquid-gold-teach` |

Full OCS examples and the commit-msg hook live in [commit-standard-skills](https://github.com/HermeticOrmus/commit-standard-skills). The manifesto lives in [gold-hat-manifesto](https://github.com/HermeticOrmus/gold-hat-manifesto).

## Suite (doctrine, UI, decisions)

Install these beside this collection. They are sibling repos, not files in this tree.

| Repo | Role |
|------|------|
| [grok-build-reality-os](https://github.com/HermeticOrmus/grok-build-reality-os) | Reality OS — `AGENTS.md`, Gold Hat, 22-chapter Grok Build user guide |
| [LibreUIUX-Grok-Build](https://github.com/HermeticOrmus/LibreUIUX-Grok-Build) | UI/UX skills melted for Grok Build |
| [ormus-jev](https://github.com/HermeticOrmus/ormus-jev) | TypeSafe Jev teaching pack for Grok Bot (decision gate, claim verify, context screen) |
| [grok-build-skills](https://github.com/HermeticOrmus/grok-build-skills) | Broader Grok-native pack (prime, distill, create-skill, ship, check-work, …) |
| [claude-to-grok](https://github.com/HermeticOrmus/claude-to-grok) | Migration hub |
| [claude-exorcist](https://github.com/HermeticOrmus/claude-exorcist) | Remove Claude residue before you adopt Grok-native tools |

Session continuity (handoff / pickup / absorb / explore) lives in the `ormus-*` public repos and in [LibreSessionFlow-Grok-Build](https://github.com/HermeticOrmus/LibreSessionFlow-Grok-Build). Clone those into `~/.grok/skills/<name>/` the same way — one skill directory per discovery entry.

## Migration note (Claude → Grok)

- Run **claude-exorcist** on old projects and old skills first
- Session tools transfer; continuity does not have to reset
- These skills are written for Grok: aggressive tool use, direct language, no theater
- Project rules: `.grok/AGENTS.md` — see Reality OS `user-guide/12-project-rules.md`

## Structure

```
grok-skills/
  README.md
  install.sh                 # symlink skills/* → ~/.grok/skills/
  GOLD_HAT.md
  skills/
    gold-hat/SKILL.md
    commit-standard/SKILL.md
    liquid-gold-teach/SKILL.md
```

## Philosophy

Same extraction process as the Claude collections, filtered through:

- Gold Hat ("empower or extract?")
- Vibe Engineer (hypothesis first, scoped, validate, reject working-but-wrong)
- Karpathy rules (think before, simplicity, surgical, verifiable goals)
- The 7 Hermetic Principles as operative directives
- Grok voice: no preamble, no disclaimers, high signal, truth over comfort

## Contributing

Real work only. Adapt or create for Grok Build. Keep the directness.

See [CONTRIBUTING.md](CONTRIBUTING.md). Update the catalog table in this README when you add a skill.

## License

MIT © 2026 Diego Bodart — see [LICENSE](LICENSE). Built under the [Gold Hat principle](https://github.com/HermeticOrmus/gold-hat-manifesto).
