# grill-me-checkpoint

A portable agent skill for long discovery interviews where every answer is saved before the next question, so the session can keep going without losing the thread.

Use it when you want to stress-test a plan, extract what is in your head, or run a serious "grill me" session that needs a durable markdown record.

## Why most grill sessions go wrong

- The agent asks good questions, but the answers stay trapped in chat history.
- A long session fills context, then earlier decisions get blurred or dropped.
- Open questions never become a real list, so the next step is fuzzy.

`grill-me-checkpoint` fixes that by making the capture file the source of truth.

## Here's what it'll do

```text
To grill a topic, it runs a checkpointed interview:

1. Create     - make grill-me/<date>-<topic>.md before Q1
2. Ask        - ask one focused question at a time
3. Recommend  - offer a likely answer when useful
4. Checkpoint - save the answer before asking the next question
5. Flag       - track unknowns with an owner or next source
6. Reconcile  - update earlier notes when a later answer changes them
7. Recap      - finish with captured decisions, open flags, and next step
```

## At a glance

| | |
|---|---|
| **What it does** | Runs a one-question-at-a-time grill session and checkpoints every answer to markdown |
| **What you get** | A durable `grill-me/<date>-<topic>.md` capture with decisions, wording, and open flags |
| **How you start** | Say "grill me with checkpoints" or invoke `grill-me-checkpoint` directly |
| **Install** | Clone this repo, then run `./install.sh` or copy the skill folder into your host's skills directory |

## Session UX

```text
Saving to grill-me/2026-07-02-client-onboarding.md

Q1 - Who is this onboarding flow for?
Recommended answer: first-time SMB clients who bought the setup package.

User answers...

Checkpoint written:
- Audience: first-time SMB setup clients
- Important wording: "they need confidence before they need features"
- Flags: pricing tiers still unclear -> Eric

Q2 - What must they achieve in the first 10 minutes?
```

The key rule: no next question until the current answer is saved.

## Flow

```text
  start
    |
    v
create capture file
    |
    v
ask one question
    |
    v
checkpoint answer
    |
    v
update summary + flags
    |
    v
more branches? -- yes --> ask one question
    |
    no
    |
    v
final recap
```

## Install

```bash
# Option A - install into the default Claude skills folder
git clone https://github.com/EricTechPro/grill-me-checkpoint ~/.claude/skills/grill-me-checkpoint

# Option B - install into a custom skills directory
git clone https://github.com/EricTechPro/grill-me-checkpoint
cd grill-me-checkpoint
GRILL_ME_CHECKPOINT_SKILLS_DIR=~/my-project/.claude/skills ./install.sh
```

## Usage

```text
Grill me with checkpoints so nothing gets lost.
```

```text
Use grill-me-checkpoint to stress-test this launch plan.
```

```text
Interview me about this product idea and save every answer before continuing.
```

## What this is NOT

- **Not a polished spec generator.** It captures the raw interview. A polished plan can be created afterward.
- **Not a repo glossary or ADR tool.** Use a docs/domain-modeling workflow when the goal is canonical project documentation.
- **Not a transcript dump.** It saves structured decisions, facts, wording, and flags after each answer.
- **Not only for engineering.** It works for strategy, offers, content plans, hiring, products, and personal operating systems.

## License

MIT. See [LICENSE](./LICENSE).

## Credits

Designed and maintained by [Eric Tech](https://erictech.ca).
