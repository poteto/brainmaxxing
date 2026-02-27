# Foundational Thinking

**Structural decisions** optimize for option value. **Code-level decisions** optimize for simplicity. Over-engineering means making premature decisions that close doors. Choosing the right foundational data structure opens doors and preserves option value.

**Data Structures First:** Get data structures right before writing logic. The right structure makes downstream code obvious. Define core types early, trace every access pattern, choose structures matching dominant access patterns. A data structure change late is a rewrite; early is a one-line diff.

At code level: DRY at structural level (types, data models), but three similar lines beats premature abstraction. Explicit over clever. Well-tested (behavior and edge cases, not line coverage).

**Concurrency corollary:** Before sharing state between actors, ask "What happens if another actor modifies this concurrently?" If not "nothing", isolate.

**Scaffold First:** If something benefits all future work, do it first. Ask "does every subsequent phase benefit from this existing?" CI, linting, testing infra, shared types are scaffold. Sequence for maximum option value: infra/setup before features, tests before fixes. Keep commits small and single-purpose.

Subtraction comes before scaffolding — remove dead weight first, then lay foundations.
