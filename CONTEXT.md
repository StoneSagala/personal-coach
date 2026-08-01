# Personal Coach — Pipeline Overview

Umbrella workspace. Two independent specialist pipelines (Dietitian, Personal Trainer) share one reference layer (`_shared/`) and converge in Synthesis.

---

## Pipeline Flow

```
setup/questionnaire.md
    └── writes → _shared/ config files (user-profile, goals, communication)
                  Dietitian/_config/ (eating-preferences, rules)
                  Personal Trainer/_config/ (workout-plan, rules)

Daily:
    Dietitian/Skills/Calorie Tracking → Dietitian/Logs/Daily/YYYY-MM-DD.md
    Personal Trainer/Skills/Workout Log → Personal Trainer/Logs/Daily/YYYY-MM-DD.md
        └── triggers Micro-Adjust → edits Personal Trainer/_config/workout-plan.md

Weekly (say "weekly review"):
    Dietitian/Skills/Weekly Learnings → Dietitian/Learnings/Weekly/YYYY-WXX.md
    Personal Trainer/Skills/Weekly Learnings → Personal Trainer/Learnings/Weekly/YYYY-WXX.md
    Synthesis/Skills/Weekly Synthesis → Synthesis/Weekly/YYYY-WXX.md

Monthly (say "monthly review"):
    Dietitian/Skills/Monthly Learnings → Dietitian/Learnings/Monthly/YYYY-MM.md
    Personal Trainer/Skills/Monthly Learnings → Personal Trainer/Learnings/Monthly/YYYY-MM.md
    Synthesis/Skills/Monthly Synthesis → Synthesis/Monthly/YYYY-MM.md
```

---

## Folder Roles

| Folder | Role | ICM Type |
|--------|------|----------|
| `_shared/` | User profile, goals, communication prefs, reference docs | Factory |
| `setup/` | First-run questionnaire — writes all config files | Factory |
| `Dietitian/` | Nutrition specialist pipeline | Pipeline |
| `Personal Trainer/` | Training specialist pipeline | Pipeline |
| `Synthesis/` | Cross-specialist rollup | Pipeline |

---

## State Check

- **Setup complete:** `_shared/user-profile.md` has no `[run setup]` placeholders
- **Daily progress:** `Logs/Daily/` files exist for current date in each specialist
- **Weekly compiled:** `Learnings/Weekly/` files exist for current week period
- **Monthly compiled:** `Learnings/Monthly/` files exist for current month
