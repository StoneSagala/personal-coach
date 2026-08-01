# Skill: Micro-Adjust

Fires automatically after every Workout Log. Compare today's performance to the last session that trained the same body part. Apply the nightly adjustment rules. Update the workout plan.

---

## Load

- Today's `Personal Trainer/Logs/Daily/YYYY-MM-DD.md` — just written
- `Personal Trainer/_config/workout-plan.md` — to edit
- Previous session log for the same body part (scan `Logs/Daily/` for the last matching day)
- `_shared/references/training-principles.md` — nightly rules

---

## Nightly Rules

Compare today's final-round reps to the last session that trained this body part:

| Condition | Action |
|-----------|--------|
| +2 reps on final set for 2 sessions in a row | Bump load OR phase OR round target — one change only, pick the safest |
| Difficulty 1–2 on all movements AND exceeded round target | Bump focus movement only |
| Difficulty 5 OR form broke on any movement | De-load that movement: drop one phase, or −10% weight, or −2 rep target |
| Reps flat for 3 consecutive sessions of same body part | Flag for weekly structural review — don't keep trying the same thing |

---

## Process

1. Scan `Personal Trainer/Logs/Daily/` for the most recent file that contains the same body-part label as today's session (e.g., "Arms/Chest", "Legs"). Match on label — not day of week, since schedule shifts.
2. If no previous log exists for this body part: add a changelog line "baseline logged — no adjustment" and stop. Report: "Baseline logged for [body part] — no adjustment yet."
3. Compare final-round reps and difficulty to the previous session.
4. Apply the matching nightly rule — one variable per movement (reps OR phase OR load, not all three).
5. If no rule triggers: add a changelog line "no adjustment — [brief reason]" and stop.
6. If a rule triggers: edit `Personal Trainer/_config/workout-plan.md` — update targets for next session of this body part only. Do not touch other days.
7. Add a line to the Plan Changelog at the bottom of the workout plan:

```
| [date] | [Day / Body Part] | [What changed] | [Rule that triggered it] |
```

8. Always report one sentence to the user — either what changed ("Bumped KB Swing reps 8→10 — +2 reps held for 2 sessions") or why nothing changed ("No adjustment — first session baseline / reps not yet consistent / hold one more session").

---

## Guardrails

- Change one variable per movement per session.
- Don't swap exercises — that's weekly structural review territory.
- Don't touch movements from other training days.
- If pain was flagged: add a note to the relevant movement in the plan — "flag for weekly review, pain reported."
