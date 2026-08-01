# Nutrition Principles

Methodology used by the Dietitian specialist.

---

## Tracking Model

Track **calories + protein only** by default. Add full macros (carbs, fat) only if the user requests it.

Protein ensures muscle retention on a cut. Total calories determines fat loss or gain. Carbs and fat fill the remainder — no need to micromanage both unless the user has a specific reason.

---

## Calorie Target

Set from TDEE (Total Daily Energy Expenditure) — see `../goals.md` for the user's calculated target.

**Goal adjustments:**
| Goal | Adjustment |
|------|-----------|
| Cutting | TDEE − 300 to − 500 cal/day |
| Maintaining | TDEE |
| Bulking | TDEE + 250 to + 500 cal/day |

Targets are the same every day (weekday = weekend). No built-in cheat days.

**TDEE Calculation (Mifflin-St Jeor):**

Men: `BMR = (10 × kg) + (6.25 × cm) − (5 × age) + 5`
Women: `BMR = (10 × kg) + (6.25 × cm) − (5 × age) − 161`

Activity multipliers:
- Sedentary (desk job, minimal exercise): × 1.2
- Lightly active (1–3 days/week): × 1.375
- Moderately active (3–5 days/week): × 1.55
- Very active (6–7 days/week hard training): × 1.725

---

## Protein Target

**Minimum: 0.75g × bodyweight in lbs**

This is a floor, not a soft suggestion. Never drop below it regardless of calorie situation. Recalculate when weight changes 5+ lbs.

---

## Meal Structure

Work with whatever frequency the user prefers (2 meals, 3 meals, IF, etc.). No prescribed structure.

Common issue: snacks are the primary source of untracked calories. Flag running totals after any snack.

---

## High-Activity Days

On unusually high-activity days (long event, competition, extra training), a small overage is expected and acceptable. Note it but don't count against adherence.

---

## Logging Format

Append to `Logs/Daily/YYYY-MM-DD.md` (create if needed):

```markdown
## [Meal name]
- [Food item] — [X]cal / [X]g protein
- [Food item] — [X]cal / [X]g protein
**Running total: [X]cal / [X]g protein**
```

Running total updates after every meal. Daily total at the bottom of the file.

Retroactive entries: mark `[retroactive]` and bias estimates high (conservative).

---

## Coaching Rules

1. Report the data. One observation. Move on. No moralizing.
2. If protein is consistently low for 3+ days, flag it.
3. If running total is on track at dinner, say so briefly.
4. If running total makes the calorie target impossible to stay under, flag it early.
5. Suggest swaps or additions — never commands.
