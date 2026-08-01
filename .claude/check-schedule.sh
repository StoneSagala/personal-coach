#!/usr/bin/env bash
# check-schedule.sh
# Fires on every UserPromptSubmit in the personal-coach workspace.
# Checks if weekly (Sunday) or monthly (1st) learnings are due.
# If due and not yet compiled, injects an auto-trigger before Claude responds.

DAY=$(date '+%u')   # 1=Mon ... 7=Sun
DOM=$(date '+%d')   # day of month, zero-padded
WEEK=$(date '+%Y-W%V')
MONTH=$(date '+%Y-%m')

WEEKLY_DONE="Dietitian/Learnings/Weekly/${WEEK}.md"
MONTHLY_DONE="Dietitian/Learnings/Monthly/${MONTH}.md"

if [ "$DAY" = "7" ] && [ ! -f "$WEEKLY_DONE" ]; then
  printf '{"hookSpecificOutput":{"hookEventName":"UserPromptSubmit","additionalContext":"AUTO-TRIGGER SUNDAY: Weekly learnings for %s have not been compiled yet. Run all three in sequence BEFORE responding to the user message: (1) Load Dietitian/Skills/Weekly Learnings/SKILL.md and write output to Dietitian/Learnings/Weekly/%s.md (2) Load Personal Trainer/Skills/Weekly Learnings/SKILL.md and write output to Personal Trainer/Learnings/Weekly/%s.md (3) Load Synthesis/Skills/Weekly Synthesis/SKILL.md and write output to Synthesis/Weekly/%s.md. Then respond to the user."}}' \
    "$WEEK" "$WEEK" "$WEEK" "$WEEK"
elif [ "$DOM" = "01" ] && [ ! -f "$MONTHLY_DONE" ]; then
  printf '{"hookSpecificOutput":{"hookEventName":"UserPromptSubmit","additionalContext":"AUTO-TRIGGER 1ST OF MONTH: Monthly learnings for %s have not been compiled yet. Run all three in sequence BEFORE responding to the user message: (1) Load Dietitian/Skills/Monthly Learnings/SKILL.md and write output to Dietitian/Learnings/Monthly/%s.md (2) Load Personal Trainer/Skills/Monthly Learnings/SKILL.md and write output to Personal Trainer/Learnings/Monthly/%s.md (3) Load Synthesis/Skills/Monthly Synthesis/SKILL.md and write output to Synthesis/Monthly/%s.md. Then respond to the user."}}' \
    "$MONTH" "$MONTH" "$MONTH" "$MONTH"
elif [ ! -f "$WEEKLY_DONE" ]; then
  # Overdue fallback — catches missed Sundays
  LAST_WEEKLY=$(ls Dietitian/Learnings/Weekly/*.md 2>/dev/null | sort | tail -1)
  if [ -n "$LAST_WEEKLY" ]; then
    DAYS_AGO=$(( ( $(date '+%s') - $(date -r "$LAST_WEEKLY" '+%s') ) / 86400 ))
    if [ "$DAYS_AGO" -ge 7 ]; then
      printf '{"hookSpecificOutput":{"hookEventName":"UserPromptSubmit","additionalContext":"AUTO-TRIGGER OVERDUE: Weekly learnings for %s have not been compiled and are %d days overdue. Run all three in sequence BEFORE responding to the user message: (1) Load Dietitian/Skills/Weekly Learnings/SKILL.md and write output to Dietitian/Learnings/Weekly/%s.md (2) Load Personal Trainer/Skills/Weekly Learnings/SKILL.md and write output to Personal Trainer/Learnings/Weekly/%s.md (3) Load Synthesis/Skills/Weekly Synthesis/SKILL.md and write output to Synthesis/Weekly/%s.md. Then respond to the user."}}' \
        "$WEEK" "$DAYS_AGO" "$WEEK" "$WEEK" "$WEEK"
    fi
  fi
fi
