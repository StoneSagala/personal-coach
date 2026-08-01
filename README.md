# Personal Coach

> A nutrition coach and personal trainer in one workspace — persistent, automatic, and entirely local.

An agent-native workspace for Claude Code. Two specialist pipelines (Dietitian + Personal Trainer) share one user profile and connect through weekly Synthesis. Everything lives in plain markdown files on your machine. Nothing leaves without your say-so.

---

## Quick Start

```bash
# 1. Clone the repo
git clone https://github.com/StoneSagala/personal-coach.git
cd personal-coach

# 2. Open in Claude Code
claude
```

Then say:

> *"I'm new here"* or *"Let's do setup"*

Setup takes about 10 minutes. It builds your profile, calculates your calorie and protein targets, and generates your first workout plan. After that:

> *"Log food"* — start tracking nutrition  
> *"Log workout"* or *"What's next?"* — get today's session and log it  
> *"What should I eat?"* — meal suggestions based on your remaining budget

No slash commands. No forms. Just talk to it.

---

## Why This Exists

Most fitness tools force you to juggle apps: one for food, one for workouts, one for body weight. None of them talk to each other, and none of them remember what happened last Tuesday. You do the work of connecting the dots.

This workspace puts both specialists in one place, runs progressive overload automatically after every session, and synthesizes nutrition + training into one weekly picture without you having to ask. Set it up once, then just talk to it.

---

## Features

| | |
|---|---|
| **10-minute setup** | Conversational onboarding — profile, goals, TDEE calculation, and a generated Week 1 workout plan |
| **Calorie + protein tracking** | Log meals in plain language. Branded and restaurant items looked up via web search for real numbers |
| **Meal suggestions** | Suggests meals that hit your remaining macro budget, with specific portions — not just meal names |
| **Flexible session rotation** | Sessions A→B→C→D run in sequence regardless of day. Works for irregular schedules |
| **Automatic progressive overload** | Micro-Adjust fires after every workout — compares to your last session and edits the plan before you close the app |
| **Volume Load tracking** | Tracks weight × total reps per movement. Progress shows even when reps plateau |
| **Auto weekly + monthly reviews** | Hook fires on Sunday and the 1st — runs both specialists then Synthesis before responding to your first message |
| **Goal pace estimate** | Monthly Synthesis calculates "at this rate, ~X weeks to goal" from your weight trend |
| **All data stays local** | Markdown files, git-friendly, no accounts, no subscriptions |

---

## How It Works

```
setup/questionnaire.md
    └── writes config files → _shared/ + Dietitian/_config/ + Personal Trainer/_config/

Daily:
    "Log food"    → Dietitian/Skills/Calorie Tracking   → Logs/Daily/YYYY-MM-DD.md
    "Log workout" → Personal Trainer/Skills/Workout Log  → Logs/Daily/YYYY-MM-DD.md
                        └── triggers Micro-Adjust → edits workout-plan.md automatically

Sunday (automatic):
    Dietitian Weekly Learnings → Personal Trainer Weekly Learnings → Weekly Synthesis

1st of month (automatic):
    Dietitian Monthly Learnings → Personal Trainer Monthly Learnings → Monthly Synthesis
```

Each specialist loads only what it needs. Dietitian and Personal Trainer never cross-load each other's files. Synthesis reads both compiled summaries and connects the dots.

---

## Project Structure

```
personal-coach/
├── CLAUDE.md                          ← Agent entry point
├── CONTEXT.md                         ← Pipeline overview
├── setup/
│   └── questionnaire.md               ← First-run onboarding
├── _shared/
│   ├── user-profile.md                ← Profile (written during setup)
│   ├── goals.md                       ← Calorie/protein targets + weight log
│   ├── communication.md               ← Tone, weigh-in cadence, preferences
│   └── references/
│       ├── training-principles.md     ← DailyRepsGuy framework + movement library
│       └── nutrition-principles.md    ← Calorie/protein methodology
├── Dietitian/
│   ├── _config/                       ← Eating preferences + rules (written during setup)
│   ├── Logs/Daily/                    ← Daily food logs
│   ├── Learnings/Weekly|Monthly/      ← Compiled summaries
│   └── Skills/                        ← Calorie Tracking, Meal Guidance, Weekly/Monthly Learnings
├── Personal Trainer/
│   ├── _config/                       ← Workout plan + rules (written during setup)
│   ├── Logs/Daily/                    ← Daily workout logs
│   ├── Learnings/Weekly|Monthly/      ← Compiled summaries
│   └── Skills/                        ← Workout Log, Micro-Adjust, Weekly/Monthly Learnings
└── Synthesis/
    ├── Weekly/                        ← Cross-specialist weekly summaries
    ├── Monthly/                       ← Cross-specialist monthly rollups
    └── Skills/                        ← Weekly Synthesis, Monthly Synthesis
```

---

## Progressive Overload — How Micro-Adjust Works

After every logged session, Micro-Adjust automatically:

1. Finds your last session for the same body part
2. Compares final-round reps and difficulty
3. Applies the progression rule (phase up, hold, or de-load)
4. Edits `workout-plan.md` with the new target
5. Reports one sentence: *"Bumped KB Swing reps 8→10 — +2 reps held for 2 sessions."*

You never manually adjust the plan. It adjusts itself.

---

## Prerequisites

- [Claude Code](https://claude.ai/code)
- bash (Mac/Linux: built in — Windows: [Git Bash](https://git-scm.com) or WSL)
- Internet connection (used for nutrition lookups only — no data stored externally)

No API keys. No Python. No npm. No accounts.

---

## Automatic Reviews

The `.claude/settings.json` hook fires on every message. On **Sunday**, if this week's learnings haven't run, it triggers them automatically before responding. On the **1st of the month**, same for monthly. If you miss a Sunday, the overdue check catches it the next time you open a session.

---

## Contributing

Issues and pull requests welcome.

- Adding a movement: add it to the relevant phase table in `_shared/references/training-principles.md`
- Adding a cuisine or food preference: it goes in `Dietitian/_config/eating-preferences.md` after setup
- Adding a skill: follow the pattern in existing `Skills/*/SKILL.md` files — Load, Process, Output, Edge Cases
