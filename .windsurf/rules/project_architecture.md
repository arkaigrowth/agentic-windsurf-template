# Project Architecture Guidelines

## Overall Structure

- Use a modular, component-based architecture
- Separate business logic from UI components
- Follow a clear directory structure with logical groupings
- Maintain separation of concerns between layers

## Directory Organization

- Group files by feature or module, not by file type
- Keep related files close together in the directory structure
- Use consistent naming conventions for directories
- Limit directory nesting to 3-4 levels maximum

## State Management

- Use a centralized state management approach
- Keep state immutable where possible
- Clearly document state shape and transitions
- Minimize global state, prefer component-level state when appropriate

## Error Handling

- Implement consistent error handling patterns throughout the codebase
- Log errors with appropriate context for debugging
- Provide user-friendly error messages
- Use typed errors when possible to enable better error handling

## Security Considerations

- Validate all user inputs
- Sanitize data before rendering to prevent XSS attacks
- Follow the principle of least privilege for API endpoints
- Store sensitive information in environment variables, never in code
- Use HTTPS for all external communications

## Performance Guidelines

- Lazy-load components and modules where appropriate
- Implement proper caching strategies
- Optimize resource loading (images, scripts, styles)
- Consider mobile and low-bandwidth users in design decisions

## Testing Structure

- Maintain a consistent testing strategy across the project
- Organize test files to mirror the source code structure
- Use meaningful test descriptions that document expected behavior
- Include unit, integration, and end-to-end tests as appropriate
