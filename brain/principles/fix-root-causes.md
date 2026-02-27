# Fix Root Causes

When debugging, never paper over symptoms. Trace every problem to its root cause and fix it there.

**Why:** Symptom fixes accumulate: each workaround makes the system harder to reason about, and the real bug remains. Root-cause fixes are slower upfront but reduce total debugging time.

**Pattern:**
- Reproduce first (if you can't reproduce it, you can't verify your fix)
- Ask "why" until you hit bedrock
- Resist the urge to add guards (adding a nil check to silence a crash is a symptom fix)
- Check for the pattern, not just the instance (grep for the same pattern, fix all instances)
- When stuck, instrument — don't guess (add logging, read the actual error)

**Restart Bugs: Suspect State Before Code**
Code doesn't change between runs. State does. When "fails after restart," suspect stale persistent state first — config files, caches, lock files, serialized state. If clearing a state file restores behavior, prioritize state validation as the fix.
