# Exhaust the Design Space

When facing a novel interaction or architectural decision with no established precedent, explore multiple concrete alternatives before committing to implementation. The cost of building the wrong thing dwarfs the cost of exploring three options.

**The Rule:** For decisions where the right answer isn't obvious, build 2-3 competing prototypes or sketches. Compare them side-by-side. Only then commit.

**When It Applies:**
- Novel UI interactions (no prior art in the codebase)
- Architectural choices with multiple viable approaches
- Product design decisions where user experience depends on feel, not logic

**When It Doesn't:**
- Mechanical implementation where the pattern is established
- Bug fixes or refactors with a clear target state
- Changes where constraints dictate a single viable approach
