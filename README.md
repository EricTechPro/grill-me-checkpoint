# grill-me-checkpoint

A portable agent skill for deep discovery interviews where every answer is saved before the next question.

Use it when you want to stress-test a plan, extract what is in your head, or run a long "grill me" session without losing context.

## What it does

- Creates a dated capture file under `grill-me/`
- Asks one question at a time
- Saves every answer before continuing
- Tracks decisions, wording that matters, and open flags
- Ends with a cleaned-up recap and suggested next step

## Install

```bash
./install.sh
```

By default, this installs into `~/.claude/skills`.

To install somewhere else:

```bash
GRILL_ME_CHECKPOINT_SKILLS_DIR=./.claude/skills ./install.sh
```

## Usage

Ask your agent:

```text
Use grill-me-checkpoint to grill me on this plan.
```

or:

```text
Grill me with checkpoints so nothing gets lost.
```

## License

MIT
