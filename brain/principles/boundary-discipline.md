# Boundary Discipline

Place validation, type narrowing, and error handling at system boundaries. Trust internal code unconditionally. Business logic lives in pure functions; the shell is thin and mechanical.

**Why:** Validation scattered throughout is noisy, redundant, and gives a false sense of safety. Concentrating it at boundaries means each piece of data is validated exactly once. Logic tangled with framework wiring can't be tested without the framework.

**The Pattern:**
- **At boundaries** (CLI args, config files, external APIs, network protocols): validate, return errors, handle defensively
- **Inside the system**: typed data, error propagation, no re-validation. Trust the types.

**Applications:**

Validation and Error Handling:
- Validate config at parse time (the boundary), not inside business logic
- Store raw data at boundaries — parse lazily at use-site
- No redundant nil checks deep in call chains if the boundary already validated

Code Organization:
- Business logic in pure functions with no framework dependencies
- Parse functions: pure transforms from raw bytes to typed state
- Prompt construction: structured state in, string out
- Scoring/assessment: pure transforms from state to results

**The Tests:**
- "Is this data crossing a system boundary right now?" If not, validation is redundant
- "Can this be a pure function that the shell just calls?" If yes, extract it
