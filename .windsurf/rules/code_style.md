# Code Style Guidelines

## General Formatting

- Use 2-space indentation for all files
- Use camelCase for variable and function names
- Use PascalCase for class names and interfaces
- Maximum line length should be 100 characters
- Always use semicolons at the end of statements
- Use single quotes for string literals
- Always include curly braces for control structures, even for single-line blocks

## Comments

- Add JSDoc comments for all public functions and classes
- Include descriptions of parameters and return values
- Document any non-obvious behavior or edge cases
- Keep comments up-to-date with code changes
- Use TODO comments for incomplete implementations with issue references

## JavaScript/TypeScript Specific Rules

- Prefer const over let, avoid var
- Use arrow functions for callbacks
- Use destructuring assignment when appropriate
- Use async/await instead of promise chains where possible
- Explicitly define function return types in TypeScript
- Use interface over type when possible for object definitions

## Import/Export Guidelines

- Group imports by type: external modules first, then internal modules
- Avoid default exports when possible
- Use named exports for better refactorability
- Keep import statements alphabetically sorted within each group

## Testing Requirements

- All public functions should have unit tests
- Test files should follow the same naming convention as source files with .test.js/.test.ts suffix
- Use descriptive test names that explain the expected behavior
