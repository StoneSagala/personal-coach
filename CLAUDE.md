# Personal Coach — Workspace

An AI-native coaching workspace combining nutrition tracking and workout programming. Two specialist pipelines (Dietitian + Personal Trainer) share one user profile and connect through weekly Synthesis.

---

## First time here?

Run setup first:

> *"Let's do setup"* or *"I'm new here"*

Setup takes about 10 minutes. It writes the config files every specialist reads. Nothing works correctly until setup is complete.

---

## Quick Navigation

| Task | Say this |
|------|----------|
| **New user / setup** | "Let's do setup" → load `setup/questionnaire.md` |
| Log food | "Log food" → load `Dietitian/Skills/Calorie Tracking/SKILL.md` |
| Meal suggestions | "What should I eat?" → load `Dietitian/Skills/Meal Guidance/SKILL.md` |
| Log a workout | "Log workout" → load `Personal Trainer/Skills/Workout Log/SKILL.md` |
| Today's workout | "What's today's workout?" → load `Personal Trainer/_config/workout-plan.md` |
| Weekly review | "Weekly review" → load `Synthesis/Skills/Weekly Synthesis/SKILL.md` |
| Monthly review | "Monthly review" → load `Synthesis/Skills/Monthly Synthesis/SKILL.md` |

---

## Specialists

| Folder | Role |
|--------|------|
| `Dietitian/` | Calorie tracking, macro targets, meal suggestions |
| `Personal Trainer/` | Workout programming, progressive overload, daily logging |
| `Synthesis/` | Cross-specialist weekly and monthly rollups |
| `_shared/` | User profile, goals, communication preferences, reference docs |

---

## Token Management

Load only what the task needs — specialists are siloed.

| Session type | Load |
|-------------|------|
| Any session | `_shared/user-profile.md` + relevant specialist `CONTEXT.md` |
| Nutrition / weight | Also load `_shared/goals.md` |
| Meal suggestions | Also load `Dietitian/_config/eating-preferences.md` |
| Workout log | Also load `Personal Trainer/_config/workout-plan.md` |
| Weekly / monthly review | Also load `_shared/communication.md` |

Do not load Synthesis files during specialist sessions. Do not cross-load Dietitian files during trainer sessions or vice versa.
