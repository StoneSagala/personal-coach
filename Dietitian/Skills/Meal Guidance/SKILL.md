# Skill: Meal Guidance

Suggest meals or full-day plans based on remaining macros and user preferences.

---

## Load

- `_shared/goals.md` — remaining calories and protein for the day
- `Dietitian/_config/eating-preferences.md` — cuisines, proteins, restrictions
- `Dietitian/Logs/Daily/YYYY-MM-DD.md` — what's already been eaten today
- `_shared/communication.md` — tone

---

## Process

**If user lists ingredients ("I have X, Y, Z" / "what can I make with what I've got"):**
1. Build suggestions around what they listed — don't filter by cuisine preference, just restrictions.
2. Still check remaining macros and don't exceed the calorie cap.
3. Skip to Output.

**Standard flow:**
1. Calculate what's left in today's budget (cal + protein remaining).
2. Filter against the user's eating preferences and restrictions.
3. Suggest 2–3 options that hit the remaining protein target without exceeding the calorie cap.
4. Keep prep complexity low unless user asks otherwise.
5. For a full-day plan: suggest 3 meals + optional snack that together hit the daily targets.

---

## Output Format

**Suggestion:**
| Option | Serving | Protein | Calories | Notes |
|--------|---------|---------|---------|-------|
| [Meal name] | [e.g., 6 oz chicken + 1 cup rice + broccoli] | Xg | Xcal | [prep time / why it fits] |

Serving must be specific enough that the user can portion it without guessing. "Chicken and rice" is not enough — "6 oz chicken breast, 1 cup cooked white rice" is.

After user picks one: offer to log it to today's calorie tracker.

---

## Guardrails

- If daily protein target is already met: optimize for calorie efficiency, not more protein.
- If both calorie and protein targets are already maxed: say so — don't suggest food they can't eat.
- Never suggest foods on the user's restriction list.
