# v2 replaces v1 on the same Workshop item, only when feature complete

v2 is a rewrite of v1 and is published under v1's Workshop id (1369514837), so publishing it replaces v1 for every
subscriber. v2 changes the level range and the internal weapon names, and until it is feature complete it lacks
things v1 had (commander support, some weapons). We decided to keep one Workshop item and to publish nothing until
v2 is feature complete (see GLOSSARY.md); until then the work lives only in this repository and in local deploys.

## Considered options

- **Publish after each part.** Rejected: every release would take working features away from current subscribers.
- **Publish v2 as a new Workshop item.** Rejected: the owner wants v2 to replace v1, not to sit next to it.

## Consequences

- The repository can be far ahead of the published mod for a long time. That is intended.
- Forts saved with v1 won't carry over, because v1 and v2 name level weapons differently.
- The first v2 release needs an `ItemVersion` above v1's last one.
