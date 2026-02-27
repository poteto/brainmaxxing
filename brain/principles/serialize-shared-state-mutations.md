# Serialize Shared-State Mutations

When concurrent actors share mutable state, enforce serialization structurally — lockfiles, sequential phases, exclusive ownership. Instructions and conventions are insufficient for concurrency safety.

**Why:** Concurrent writes to shared state produce race conditions that are intermittent, hard to reproduce, and expensive to debug. Telling agents or goroutines to "take turns" does not work.

**Pattern:**
1. **Identify shared mutable state** (files both read and write, branches both push to, APIs both define and consume)
2. **If shared state exists, serialize access** (lockfiles, sequential phases, or exclusive ownership)
3. **If serialization is impractical, eliminate the sharing** (give each actor its own copy: worktrees, separate files, isolated state directories)
