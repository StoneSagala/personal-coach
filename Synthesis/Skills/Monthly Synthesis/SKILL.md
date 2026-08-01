# Skill: Monthly Synthesis

Cross-specialist monthly rollup. Assesses overall progress toward the primary goal. Run after both specialist monthly summaries are written.

---

## Load

- `Dietitian/Learnings/Monthly/YYYY-MM.md`
- `Personal Trainer/Learnings/Monthly/YYYY-MM.md`
- `_shared/goals.md`
- `_shared/communication.md`

---

## Process

1. Aggregate monthly averages across both specialists.
2. Assess progress toward primary goal — is the direction right?
3. Calculate pace: average weekly weight change this month × weeks remaining to goal weight = estimated weeks to goal. State it plainly ("At this rate: ~X weeks to goal").
4. Identify structural patterns that held or broke down across the full month.
5. If weight changed 5+ lbs from last recorded baseline: calculate new protein target (`new weight × 0.75`) and new TDEE, show both numbers to the user, and if confirmed — write updated targets to `_shared/goals.md` (Daily Targets table and protein floor note).
6. Recommend goal or target adjustments if progress is significantly off track or ahead of schedule.

---

## Output

Write to `Synthesis/Monthly/YYYY-MM.md`:

```markdown
# Monthly Synthesis — [YYYY-MM]

## Progress vs. Goal

**Goal:** [cutting / maintaining / bulking]
**Weight:** [starting lbs] → [ending lbs] ([±X lbs this month])
**Pace:** ~[X lbs/week avg] — estimated [X weeks] to goal weight of [X lbs]
**Verdict:** [on track / ahead / behind — and why]

## Monthly Averages

| Metric | Monthly Avg | Target |
|--------|-------------|--------|
| Daily calories | | |
| Daily protein | | |
| Training sessions/week | | |

## What Drove Results

[Key factors across nutrition and training — what worked, what didn't]

## Structural Recommendations

[Changes to targets, programming, or approach for next month — flag for user confirmation]

## Target Update

[If weight changed 5+ lbs: show proposed new targets — "New protein: Xg (new weight × 0.75), New calories: X (recalculated TDEE ± goal adjustment). Confirm to update?" If user confirms, write to `_shared/goals.md`. If no change needed: "Targets unchanged."]
```
