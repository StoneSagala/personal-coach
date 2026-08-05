# Skill: Calorie Tracking

Log food intake, update daily running totals, review at end of day.

---

## Load

- `_shared/goals.md` — calorie and protein targets
- `_shared/communication.md` — tone and end-of-day review preference
- `Dietitian/_config/eating-preferences.md` — restrictions
- `Dietitian/Logs/Daily/YYYY-MM-DD.md` — today's log (create if needed)
- `_shared/references/nutrition-principles.md` — logging format
- `_shared/config/api-keys.md` — USDA FDC API key (optional — fall back to `DEMO_KEY` if file doesn't exist)

Do NOT load: Learnings files, workout logs.

---

## Process

1. Identify what was eaten — ask if not stated.
2. Get accurate cal/protein numbers using USDA Food Data Central:
   - Read the API key from `_shared/config/api-keys.md` (value after `USDA_FDC_API_KEY=`). If the file doesn't exist, use `DEMO_KEY`.
   - WebFetch `https://api.nal.usda.gov/fdc/v1/foods/search?query=[food+name]&pageSize=5&dataType=Branded,Foundation,SR%20Legacy&api_key=[KEY]`
   - From the response, pick the best matching food. Pull `Energy` (kcal) and `Protein` from `foodNutrients`. Scale per-100g values to the actual portion size if needed.
   - **If no good match is found:** Fall back to WebSearch `"[food item] nutrition facts"`.
   - Err conservative — round calories up, protein down when uncertain.
3. Append to today's log with running totals.
4. Status check after logging:
   - On track: brief acknowledgment only.
   - Protein target at risk: flag now, suggest a high-protein option.
   - Significantly under calories with little eating time left: flag it, give remaining cal, suggest something to eat to close the gap.
   - Calorie cap at risk: flag it, give the user the number.

**End of day** — when user says they're done eating:
- Show final cal/protein vs. targets
- One coaching observation based on `communication.md` tone
- Note protein hit or missed — state the fact, no lecture
- If significantly under calories: flag the shortfall with the same weight as going over — note the impact on recovery and progress, no lecture

---

## Log Format

```markdown
## [Meal name]
- [Food item] — [X]cal / [X]g protein
**Running total: [X]cal / [X]g protein**

## Daily Total: [X]cal / [X]g protein (target: [X]cal / [X]g)
```

---

## Meal Guidance Handoff

If user asks "what should I eat?" or "what can I make?":
Load `Dietitian/Skills/Meal Guidance/SKILL.md`

---

## Edge Cases

| Situation | Action |
|-----------|--------|
| Nothing listed | Ask "what did you eat or drink?" |
| Retroactive log | Mark `[retroactive]`, estimate high |
| Over calories | State the number, ask if they want to adjust tomorrow — no lecture |
| Under calories at end of day | Flag the shortfall, note the impact on recovery/progress — same weight as going over, no lecture |
| Skipped meal | Log nothing, don't guilt |
| High-activity day | Flag overage as expected, note it, don't count against adherence |
| "How much do I have left?" | Calculate remaining cal and protein from today's log vs. targets — respond immediately, no new log entry |
| User mentions a weigh-in | Append a new row to the weight log table in `_shared/goals.md` with today's date, weight, and any context the user gave (fasted, post-workout, etc.) |
