# Synthesis

Cross-specialist rollup. Connects nutrition and training performance into one weekly and monthly picture. Runs after both specialist summaries are compiled.

---

## What to Load

| Task | Load These |
|------|-----------|
| Weekly synthesis | `Dietitian/Learnings/Weekly/YYYY-WXX.md`, `Personal Trainer/Learnings/Weekly/YYYY-WXX.md`, `_shared/goals.md`, `_shared/communication.md` |
| Monthly synthesis | `Dietitian/Learnings/Monthly/YYYY-MM.md`, `Personal Trainer/Learnings/Monthly/YYYY-MM.md`, `_shared/goals.md`, `_shared/communication.md` |

Run order: compile specialist learnings first, then run synthesis.

---

## Folder Structure

```
Synthesis/
├── CONTEXT.md      ← You are here
├── Weekly/         ← YYYY-WXX.md cross-specialist summaries
├── Monthly/        ← YYYY-MM.md cross-specialist rollups
└── Skills/
    ├── Weekly Synthesis/SKILL.md
    └── Monthly Synthesis/SKILL.md
```

---

## What NOT to Do

- Don't run synthesis before the specialist summaries exist for the current period
- Don't load raw daily logs — only the compiled Learnings files
- Don't make structural changes to the workout plan or goals here — flag them for the user to confirm in the relevant specialist
