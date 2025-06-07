# Git Workflow Rules

## Construction Log Updates

- Always prompt the user with "Would you like to update the construction log (.ai_docs/construction_log.md) before committing/pushing?" whenever Git commit or push operations are requested.
- The construction log is a critical project artifact that documents the development history, key decisions, and implementation details.
- Maintaining an up-to-date construction log ensures both human developers and AI assistants have proper context for future development.
- If the user indicates they want to update the log, assist them by:
  - Opening the log file if it's not already open
  - Suggesting potential entries based on the current work
  - Guiding them through documenting key decisions, implementation details, and changes

## When to Update the Construction Log

- Before any Git commit that includes significant changes
- When implementing new features
- When making architectural decisions
- When resolving complex bugs
- When refactoring code
- Before creating pull requests
- Before deploying to any environment

## Construction Log Format Guide

The construction log should include:

- Date and timestamp of the entry
- Clear description of changes or decisions made
- Rationale behind significant decisions
- References to relevant specifications or requirements
- Links to external resources that informed the implementation
- Any known limitations or areas for future improvement
