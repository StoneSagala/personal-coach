# Skill: Workout Log

Log a strength session. Record rounds, reps, and difficulty. Hand off to Micro-Adjust when done.

---

## Load

- `Personal Trainer/_config/workout-plan.md` — today's exercises and targets
- `_shared/user-profile.md` — injuries and limitations
- `_shared/communication.md` — tone

---

## Before the Session

If the user asks "what's today's workout" or "what's next":
1. Scan `Personal Trainer/Logs/Daily/` — find the most recent log and read its **Session** field (A/B/C/D)
2. Determine next session in the rotation: A→B→C→D→A
3. Check if a recovery day is due: if the last 2 logs were both strength sessions with no recovery between them, suggest a recovery day first
4. Load that session from `_config/workout-plan.md` and state the movements, rep targets, and format
5. If the user wants to do a different session than suggested, follow their lead — don't insist on the rotation

---

## After the Session

Collect from the user:
1. Total rounds completed
2. Final-round reps per movement
3. Felt-difficulty per movement (1–5) or overall
4. Any notes — form issues, substitutions, pain, skipped movements

Write to `Personal Trainer/Logs/Daily/YYYY-MM-DD.md`:

```markdown
# Workout Log — [YYYY-MM-DD]

**Session:** [A / B / C / D] — [Arms/Chest / Legs / Abs / Back]
**Format:** 20-min AMRAP
**Rounds completed:** X (target: X)

| Movement | Weight | Rounds × Reps | Total Reps | VL | Difficulty (1–5) | Notes |
|----------|--------|--------------|------------|-----|-----------------|-------|
| [Movement] | [lbs / BW] | X × X | X | X | X | |

**Session VL:** [sum of all movement VLs]
**Overall felt-difficulty:** X/5
**Session notes:** [substitutions, pain, anything notable]
```

VL per movement = weight × total reps. Bodyweight movements: VL = total reps only.

After writing the log: "Log saved. Running micro-adjustment now."
Then load: `Personal Trainer/Skills/Micro-Adjust/SKILL.md`

---

## Cardio / Recovery Day Logging

If the user logs a recovery day, run, walk, bike, or any cardio session:
- Do NOT load the workout plan or run Micro-Adjust
- Write to `Personal Trainer/Logs/Daily/YYYY-MM-DD.md`:

```markdown
# Cardio Log — [YYYY-MM-DD]

**Type:** [run / walk / bike / row / etc.]
**Duration:** X min
**Perceived effort:** X/5
**Notes:** [anything notable]
```

---

## Edge Cases

| Situation | Action |
|-----------|--------|
| Missed session | Log it as a miss — note it and move on, no lecture |
| Partial session | Log what was done, note it was partial |
| Pain during session | Stop that movement immediately. Log what was completed, mark the painful movement as STOPPED with a pain note. Flag for Micro-Adjust (de-load) and weekly structural review. |
| Substituted a movement | Log the substitution with a note |
