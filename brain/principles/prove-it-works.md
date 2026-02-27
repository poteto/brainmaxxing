# Prove It Works

Every task output must be verified by checking the real thing directly — not by inferring from proxies, self-reports, or "it compiles."

**Why:** Unverified work has unknown correctness. Indirect verification (file mtimes, output freshness, agent self-reports, cached screenshots) feels cheaper than direct observation, but acting on a wrong inference costs far more than checking the source.

**Pattern:** After completing any task, ask: "How do I prove this actually works?"

Check the real thing, not a proxy:
- Check process liveness directly, not indirectly through derived state
- Read the actual value, not a cached or derived representation
- When verification fails, suspect the observation method before suspecting the system

Code / Features:
1. Build it (necessary but not sufficient)
2. Run it and exercise the actual feature path
3. Check the full chain: does data flow from input to output?
4. For integrations, test the full communication path end-to-end

Delegation: trust artifacts, not self-reports:
When verifying delegated work, inspect the actual output artifact (git diff, file contents, runtime behavior) — never the delegate's summary. Agents report what they intended, not always what happened.
