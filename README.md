# Brainmaxxing

![brainmaxxing](brainmaxxing.png)

Stupid simple persistent memory for Claude Code. A markdown vault that your agent reads at session start and writes to when it learns something. It's also an [Obsidian](https://obsidian.md) vault, so you can browse your agent's memory yourself.

Comes with 16 engineering principles as starter content and six skills. Four form a learning loop: `reflect` after sessions, `ruminate` over past conversations, `meditate` to audit and prune. Two support structured work: `plan` for breaking down tasks into phased plans, `review` for principle-grounded code and plan review. Two hooks handle the plumbing: injecting the brain index at startup and rebuilding it when files change.

```mermaid
graph LR
    A[talk to claude] --> B["/reflect"]
    B --> C["brain/"]
    C --> D["/meditate"]
    D --> E[your skills get better]
    D --> F[your principles evolve]
    F --> C
    F --> E
    G["/ruminate"] --> C
    G -. mines .-> H[conversation history]
    C -. principles .-> I["/plan"]
    I -. plans .-> C
    C -. principles .-> J["/review"]
    J --> K[accept or revise]
```

## Usage

**`/reflect`**: Run this at the end of a session, or after Claude makes a mistake and you correct it. It scans the conversation for things worth remembering and writes them to the brain. Most of your brain content will come from this.

**`/meditate`**: Run this after your brain has accumulated some content. It reviews your skills against what's in the brain, finds contradictions, and suggests improvements to them. Also prunes stale notes and surfaces unstated principles hiding across multiple entries.

**`/ruminate`**: Run this occasionally (weekly, monthly, whenever). It digs through your past Claude Code conversations looking for patterns that `/reflect` missed. Corrections you gave, preferences you repeated, knowledge that never got captured. Good for bootstrapping a brain from an existing conversation history.

**`/plan`**: Run this when you have a medium-to-large task that spans multiple files or has unclear scope. It breaks the work into small, phased plans grounded in your principles and writes them to `brain/plans/`. Planning only — it won't implement anything.

**`/review`**: Run this on code changes or plans. It walks through architecture, code quality, tests, and performance, numbering each issue with severity and tradeoff options. Checks principle compliance and scope discipline.

You don't need to use all of these. `/reflect` alone gets you most of the value.

## Installation

Tell Claude Code:

> Install brainmaxxing from https://github.com/poteto/brainmaxxing into this project.

It needs to:

1. Copy `brain/` into the project root (the starter vault)
2. Copy `.agents/skills/` (brain, reflect, ruminate, meditate, plan, review)
3. Copy `.claude/hooks/` and merge hook config into `.claude/settings.json`
4. Append the brain instructions from `CLAUDE.md` into the project's `CLAUDE.md`

## License

MIT
