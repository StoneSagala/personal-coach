# Skill: Monthly Learnings — Personal Trainer

Roll up monthly workout performance. Run on the 1st of the month or when the user says "monthly review."

Run this before Monthly Synthesis.

---

## Load

- All `Personal Trainer/Learnings/Weekly/` files from the past month
- `Personal Trainer/_config/workout-plan.md` — for current phase of each movement
- `_shared/goals.md` — weight log for body weight context

---

## Process

1. Aggregate weekly summaries — total sessions, adherence rate.
2. Track phase progression and load increases across the month.
3. Identify biggest wins (most consistent improvement) and biggest gaps (most missed sessions, stalled movements).
4. Note any structural changes that happened this month.
5. Recommend focus areas for next month — exercise rotations, phase targets, programming adjustments.

---

## Output

Write to `Personal Trainer/Learnings/Monthly/YYYY-MM.md`:

```markdown
# Personal Trainer — [Month YYYY] Summary

**Weeks reviewed:** [YYYY-WXX, ...]
**Total sessions completed:** X
**Adherence:** X% (X of X scheduled sessions)
**Monthly VL trend:** Week 1: X → Week 2: X → Week 3: X → Week 4: X ([↑/↓ overall])
**Weight this month:** [X lbs → X lbs] ([±X lbs])

## Phase Snapshot
| Movement | Phase (start of month) | Phase (end of month) |
|----------|----------------------|---------------------|
| [Movement] | X | X |

## Volume and Progression
[Load increases, rep improvements, new movements introduced]

## Strength Highlights
[Movements with the most improvement this month]

## Gaps
[Missed sessions, stalled movements, injury notes]

## Structural Changes This Month
[Major program changes — exercise swaps, phase shifts, schedule changes]

## Recommendations for [Next Month]
[Focus areas, exercise rotations, phase targets]
```
