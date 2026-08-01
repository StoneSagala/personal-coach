# Skill: Weekly Learnings — Dietitian

Compile the week's daily logs into a structured summary. Run on Sunday or when the user says "weekly review."

Run this before Weekly Synthesis.

---

## Load

- All `Dietitian/Logs/Daily/` files from the current week (Monday–Sunday)
- `_shared/goals.md` — targets for comparison
- `Dietitian/_config/rules.md` — check if any rules were consistently violated
- Most recent `Dietitian/Learnings/Weekly/` file (for week-over-week comparison)

---

## Process

1. Count days logged vs. days in the week.
2. Calculate average daily cal and protein.
3. Find highest and lowest days.
4. Pull last week's averages from the previous `Learnings/Weekly/` file — note direction (calories up/down, protein up/down vs. last week).
5. Pull weight entries from `_shared/goals.md` weight log that fall within this week — note start and end of week weight if available.
6. Identify patterns (consistently over on certain days, protein always low at a specific meal, etc.).
7. Check if any emerging pattern is reliable enough to add to `_config/rules.md` as a Pattern Rule. If yes — append it directly to the Pattern Rules section of `Dietitian/_config/rules.md`. Don't just flag it; write it.
8. Write the summary.

---

## Output

Write to `Dietitian/Learnings/Weekly/YYYY-WXX.md`:

```markdown
# Dietitian — Week [WXX] Summary

**Period:** [YYYY-MM-DD] to [YYYY-MM-DD]
**Days logged:** X / 7
**Average daily calories:** X (target: X) — [↑/↓/→ vs. last week: X]
**Average daily protein:** Xg (target: Xg) — [↑/↓/→ vs. last week: Xg]
**Weight this week:** [X lbs → X lbs] or [no weigh-ins logged]

## Adherence
[Were targets hit most days? What caused deviations?]

## Patterns
[Notable patterns this week — what drove good days, what caused overages]

## Recommendations
[1–3 actionable items for next week]

## Pattern Rules Added
[List any rules appended to `Dietitian/_config/rules.md` this week, or "None"]
```
