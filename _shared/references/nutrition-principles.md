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
| Goal | Calorie Adjustment | Target Rate of Change | Notes |
|------|-------------------|----------------------|-------|
| Cutting | TDEE − 300 to − 500 cal/day | Lose 0.5–1% bodyweight/week | Never go below 1,500 cal (men) / 1,200 cal (women) |
| Maintaining | TDEE ± 100 | ±0.5 lb/week variance is normal | No fixed surplus or deficit needed |
| Bulking (lean) | TDEE + 200 to + 300 cal/day | Gain 0.25–0.5 lb/week | Minimizes fat gain alongside muscle |
| Bulking (aggressive) | TDEE + 400 to + 500 cal/day | Gain up to 1 lb/week | Faster muscle gain, more fat accumulated |

Targets are the same every day (weekday = weekend). No built-in cheat days.

Losing faster than 1% bodyweight/week increases muscle loss risk even with adequate protein. If the user is losing faster, reduce the deficit before raising protein.

**TDEE recalculation:** Recalculate every 10 lbs of weight change in either direction. Metabolic adaptation during a cut lowers TDEE beyond what weight loss alone predicts — the calculation must be re-run, not just estimated.

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

Protein target varies by goal — higher protein during a cut protects muscle when calories are restricted:

| Goal | Target |
|------|--------|
| Cutting | 0.8–1.0g × bodyweight in lbs |
| Maintaining | 0.7–0.8g × bodyweight in lbs |
| Bulking | 0.7–0.9g × bodyweight in lbs |

Use the lower end of the range as the floor — never drop below it regardless of calorie situation. Recalculate when weight changes 10+ lbs.

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
