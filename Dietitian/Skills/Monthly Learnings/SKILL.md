# Skill: Monthly Learnings — Dietitian

Roll up the month's weekly summaries into a monthly report. Run on the 1st of the month or when the user says "monthly review."

Run this before Monthly Synthesis.

---

## Load

- All `Dietitian/Learnings/Weekly/` files from the past month
- Previous month's `Dietitian/Learnings/Monthly/` file (for month-over-month comparison)
- `_shared/goals.md` — targets and weight log

---

## Process

1. Aggregate across all weekly summaries.
2. Calculate monthly averages for calories and protein.
3. Pull previous month's averages and compare — note direction on calories, protein, and adherence.
4. Identify strongest and weakest weeks.
5. Note any structural changes made during the month (target changes, rule additions).
6. Check weight trend from `_shared/goals.md` — compare first and last weigh-in of the month.
7. If weight changed 5+ lbs from last recorded baseline: calculate new protein target (`new weight × 0.75`), recalculate TDEE, show both numbers to the user, and ask for confirmation before writing to `_shared/goals.md`.
8. Recommend any target adjustments for next month.

---

## Output

Write to `Dietitian/Learnings/Monthly/YYYY-MM.md`:

```markdown
# Dietitian — [Month YYYY] Summary

**Weeks reviewed:** [YYYY-WXX, YYYY-WXX, ...]
**Average daily calories:** X (target: X) — [↑/↓/→ vs. last month: X]
**Average daily protein:** Xg (target: Xg) — [↑/↓/→ vs. last month: Xg]
**Weight:** [X lbs → X lbs] ([±X lbs] this month)

## Highlights
[Best week and what drove it]

## Challenges
[Hardest week and what caused it]

## Structural Changes This Month
[Target changes, new pattern rules, preference updates]

## Target Adjustment
[If weight changed 5+ lbs: show proposed new protein target and calorie target — confirm with user before writing to `_shared/goals.md`. If no change needed: "Targets unchanged."]

## Recommendations for [Next Month]
[1–3 items]
```
