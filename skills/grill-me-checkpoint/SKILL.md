---
name: grill-me-checkpoint
description: Interview the user about a plan, design, topic, or decision while checkpointing every answer to a durable markdown capture file. Use when the user says "grill-me-checkpoint", "grill me with checkpoints", asks to be grilled without losing context, wants a discovery session saved to disk, or needs messy thinking extracted into organized notes.
---

# Grill Me Checkpoint

Run a relentless one-question-at-a-time interview and save every answer before asking the next question. The capture file is the source of truth, not chat memory.

## Setup

Before the first question:

1. Create `grill-me/{YYYY-MM-DD}-{topic-slug}.md`.
   - Create the `grill-me/` folder if it does not exist.
   - Get the date from the system when needed.
   - Keep raw captures in `grill-me/` even if a polished plan, map, or spec later moves elsewhere.
2. Add this header:

```markdown
# {Topic}: Grill Me Checkpoint Notes
Date: {date} | Goal: {one line}

## Summary / key decisions

## Q&A log

## Open flags
```

3. Tell the user where the file is being saved.
4. Ask Q1.

## Checkpoint Rule

After every user answer, before asking the next question:

1. Append one structured Q&A entry.
2. Capture decisions, facts, useful wording, and uncertainty.
3. Add flags for anything the user cannot answer, including the likely owner.
4. Correct earlier entries if the new answer changes them.
5. Ask the next question only after the file is updated.

Never batch multiple answers into one write.

## Interview Method

- Ask one question at a time.
- Include a recommended answer when useful so the user can confirm, correct, or redirect.
- Resolve upstream decisions before dependent details.
- Inspect local files or docs instead of asking when the answer can be discovered.
- If the user cannot answer, log it as an open flag and continue.
- Keep going until the user says stop, or the important branches are covered.

## Capture Format

Use this structure for each entry:

```markdown
### Q{number} - {topic}
- Asked: {question}
- Captured: {facts, decisions, wording}
- Flags: {open item -> owner, or "None"}
```

Keep the running summary current as the session evolves.

## Finish

At the end:

1. Re-read the capture file.
2. Reconcile contradictions or duplicate flags.
3. Give the user a short recap:
   - what was captured
   - what remains open
   - the best next step
