# Cost-Aware Delegation

Every delegation boundary has a budget. Account for delegation overhead itself, and hard-cap scope to prevent work from expanding to fill available resources.

**Why:** Agent turns, CI minutes, and API dollars are finite. Without explicit budgets, work expands to fill the available resources.

**Pattern:**
- **Budget before delegating:** Estimate turns per phase: setup, read context, implement, verify + fix, commit. If total exceeds budget, scope is too large
- **Front-load context to avoid rediscovery costs:** Every piece of analysis withheld is a turn wasted. Cost of a longer prompt is one read; cost of rediscovery is multiple turns
- **Hard-cap scope:** Limit files per phase. One function/type + tests per unit of work. Without caps, work expands
- **Account for coordination overhead:** Team coordination costs turns. Direct task delegation returns results without coordination tax
- **Exit smart, not late:** Commit passing work before your budget runs out, not at the last moment
