---
name: project-manager
description: |
  Spec-driven project management for AI assistants. Use when:
  - Starting a new project or feature
  - Planning work with specs, design, tasks
  - Tracking project progress
  - Managing multiple projects
  - Archiving completed work
  
  Commands: /pm:propose, /pm:plan, /pm:apply, /pm:verify, /pm:archive, /pm:status, /pm:list
---

# Project Manager

Spec-driven development workflow adapted from [OpenSpec](https://github.com/Fission-AI/OpenSpec).

## ⚠️ ВАЖНО: Используй КОМАНДЫ

**ВСЕГДА используй команды workflow:**

| Этап | Команда |
|------|---------|
| Новый проект | `/pm:propose <name>` |
| Планирование | `/pm:plan <name>` |
| Реализация | `/pm:apply <name>` |
| Верификация | `/pm:verify <name>` |
| Архив | `/pm:archive <name>` |

**НЕЛЬЗЯ просто создавать файлы вручную — только через навык!**

## Philosophy

```
fluid not rigid       — no phase gates, work on what makes sense
iterative not waterfall — learn as you build, refine as you go
easy not complex      — lightweight setup, minimal ceremony
brownfield-first      — works with existing codebases
```

## Quick Start

```
/pm:propose <project-name>    Create new project with proposal
/pm:plan <project-name>       Create specs + design + tasks
/pm:apply <project-name>      Work through tasks
/pm:archive <project-name>    Complete and archive
```

## Commands

| Command | What it does |
|---------|--------------|
| `/pm:propose <name>` | Create new project with proposal |
| `/pm:plan <name>` | Create specs, design, tasks |
| `/pm:next <name>` | Show next artifact to create |
| `/pm:status <name>` | Show project status |
| `/pm:apply <name>` | Work through tasks |
| `/pm:verify <name>` | Check implementation vs specs |
| `/pm:archive <name>` | Archive completed project |
| `/pm:list` | List all projects |
| `/pm:switch <name>` | Switch to different project |

## Project Structure

```
projects/
├── {project-name}/
│   ├── idea.md           # Initial idea
│   ├── research.md       # Research findings
│   ├── proposal.md       # Intent + Scope + Approach
│   ├── specs/            # Delta specifications
│   │   └── {domain}/
│   │       └── spec.md   # ADDED/MODIFIED/REMOVED
│   ├── design.md         # Technical design
│   ├── tasks.md          # Implementation checklist
│   ├── .progress.md      # Progress tracking
│   ├── log/              # Work logs
│   ├── review.md         # Final review
│   └── .openspec.yaml    # Metadata
│
└── archive/
    └── 2026-02-25-{project-name}/
```

## Artifact Flow

```
idea ──► research ──► proposal ──► specs ──► design ──► tasks
                                                    │
                                                    ▼
                                              implement
                                                    │
                                                    ▼
                                              review ──► archive
```

### Dependencies

| Artifact | Requires | Creates |
|----------|----------|---------|
| idea | - | idea.md |
| research | idea | research.md |
| proposal | idea | proposal.md |
| specs | proposal | specs/**/*.md |
| design | proposal | design.md |
| tasks | specs, design | tasks.md |
| review | tasks | review.md |
| archive | review | .archived |

## Delta Specs

Specs use delta format for brownfield development:

```markdown
## ADDED Requirements

### Requirement: Feature X
The system SHALL do X.

#### Scenario: Happy path
GIVEN context
WHEN action
THEN result

## MODIFIED Requirements

### Requirement: Existing Feature
**Previous:** Old behavior
**New:** New behavior

## REMOVED Requirements

### Requirement: Deprecated Feature
**Reason:** Why removed
```

## Workflow Patterns

### Quick Feature

```
/pm:propose add-feature ──► /pm:plan ──► /pm:apply ──► /pm:archive
```

### Exploratory

```
/pm:explore idea ──► /pm:propose ──► /pm:plan ──► /pm:apply ──► /pm:archive
```

### Parallel Work

```
Project A: /pm:apply ──► (pause) ──► resume later
Project B: /pm:propose ──► /pm:apply ──► /pm:archive
```

## Scripts

Located in `scripts/`:

- `list-projects.js` — List all projects
- `next-artifact.js` — Show next artifact to create
- `create-artifact.js` — Create artifact from template
- `project-status.js` — Detailed project status
- `archive-project.js` — Archive completed project

## Templates

Located in `templates/`:

- `idea.md` — Initial idea template
- `research.md` — Research template
- `proposal.md` — Proposal template
- `specs/spec.md` — Delta spec template
- `design.md` — Technical design template
- `tasks.md` — Task checklist template
- `review.md` — Final review template

## Metadata

`.openspec.yaml`:

```yaml
name: project-name
description: Brief description
status: planning | active | blocked | complete | archived
priority: critical | high | medium | low
created: 2026-02-25T00:00:00Z
updated: 2026-02-25T00:00:00Z
tags: [tag1, tag2]
depends_on: [other-project]
```

## Best Practices

1. **One project = one logical change** — Keep focused
2. **Update artifacts as you learn** — Specs evolve
3. **Check progress regularly** — Use `/pm:status`
4. **Verify before archiving** — Use `/pm:verify`
5. **Archive cleanly** — Merges specs, preserves history