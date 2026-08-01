# Skill: Weekly Synthesis

Cross-specialist weekly rollup. Connects nutrition, training, and body weight into one picture. Run after both specialist weekly summaries are written.

---

## Load

- `Dietitian/Learnings/Weekly/YYYY-WXX.md` — this week's diet summary
- `Personal Trainer/Learnings/Weekly/YYYY-WXX.md` — this week's training summary
- `_shared/goals.md` — targets and weight log
- `_shared/communication.md` — tone

---

## Process

1. Check which specialist files exist for this week. If one is missing, note it in the output ("No workout data this week" / "No nutrition data this week") and synthesize from what's available — don't skip the synthesis entirely.
2. Pull week's average calories, protein, training sessions completed.
3. Pull weight from `_shared/goals.md` — find the most recent weigh-in this week and the most recent weigh-in from last week. Calculate change.
4. Check weight trend direction against the primary goal (cutting/maintaining/bulking).
5. Find cross-specialist connections: did hard training days correlate with protein misses? Did low-energy days track with low calories? Did missed sleep or life events hit both specialists?
6. Identify one top win and one top gap.
7. Write one actionable recommendation per specialist for next week.

---

## Output

Write to `Synthesis/Weekly/YYYY-WXX.md`:

```markdown
# Weekly Synthesis — [YYYY-WXX]

**Period:** [YYYY-MM-DD] to [YYYY-MM-DD]

## At a Glance

| Metric | This Week | Target | Status |
|--------|-----------|--------|--------|
| Avg daily calories | | | |
| Avg daily protein | | | |
| Training sessions | | | |
| Weight | [X lbs] ([±X lbs] vs. last week) | [goal direction] | |

## Connections

[Cross-specialist observations — how diet affected training performance or vice versa]

## Top Win

[One thing that went well this week across either or both specialists]

## Top Gap

[One thing to address next week]

## Next Week Focus

- **Dietitian:** [one recommendation]
- **Personal Trainer:** [one recommendation]
```
