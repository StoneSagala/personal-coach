# Skill: Weekly Learnings — Personal Trainer

Compile the week's workout logs into a structured summary. Run on Sunday or when the user says "weekly review."

Run this before Weekly Synthesis.

---

## Load

- All `Personal Trainer/Logs/Daily/` files from the current week
- `Personal Trainer/_config/workout-plan.md` — for targets, phase, and Plan Changelog
- `_shared/references/training-principles.md` — movement library for recommending exercise swaps
- Most recent `Personal Trainer/Learnings/Weekly/` file (for week-over-week comparison)

---

## Process

1. Count sessions completed vs. scheduled.
2. If zero sessions logged: write a short summary noting the missed week, skip the performance breakdown, and include a single line — "No sessions logged this week. Check in with user on what happened and whether schedule needs adjusting." Stop here.
3. Calculate round completion rate vs. targets across all sessions.
4. Pull this week's micro-adjust entries directly from the Plan Changelog in `workout-plan.md` — use these for the Micro-Adjust Summary section, don't re-scan daily logs.
5. Identify stalled movements (3+ consecutive sessions flat — structural change due).
6. Note movements consistently easy (candidates for phase-up next week).
7. Check if any patterns should be added to `_config/rules.md`.
8. Recommend structural changes if any are due — pull replacement movements from the Movement Examples section of `_shared/references/training-principles.md` matching the user's equipment and current phase. Don't apply yet — surface them for user confirmation.

---

## Output

Write to `Personal Trainer/Learnings/Weekly/YYYY-WXX.md`:

```markdown
# Personal Trainer — Week [WXX] Summary

**Period:** [YYYY-MM-DD] to [YYYY-MM-DD]
**Sessions completed:** X / X scheduled
**Total weekly VL:** X (vs. last week: X — [↑/↓/→])
**Cardio sessions:** X (list types and durations)

## Performance Summary
[Day-by-day recap: rounds completed, difficulty, notable moments]

## Cardio Summary
[List cardio sessions logged this week — type, duration, effort. "None logged" if zero.]

## Micro-Adjust Summary
[Adjustments made this week — what changed and why]

## Flags for Structural Review
[Stalled movements, exercises to swap, phase changes due, any pain or injury notes]

## Recommended Changes for Next Week
[List structural changes — apply to workout-plan.md after user confirms]
```

If structural changes are recommended, apply them to `Personal Trainer/_config/workout-plan.md` only after the user confirms.
