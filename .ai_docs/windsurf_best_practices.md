# Windsurf Best Practices

This document outlines best practices and workflows for effectively using Windsurf to manage and develop your codebase.

## Documentation Guidelines

### General Documentation Principles
- **Minimal Yet Meaningful Documentation**: Document public-facing APIs, complex workflows, and non-obvious decisions or trade-offs
- **Keep documentation concise, clear, and up-to-date** with code changes
- **Use markdown format** for all documentation files to ensure consistency

### AI-Specific Documentation
- **Structure documentation with clear headings** to help AI agents parse and understand the content
- **Include code examples** where applicable to demonstrate proper usage
- **Define technical terms and acronyms** explicitly to avoid confusion
- **Link to external resources** when appropriate for deeper understanding

## AI Agent Workflows

### Project Setup
1. **Initialization Process**:
   - Begin each session by reviewing previous notes and documentation
   - Create a clear context for the AI about the current state of the project

2. **Documentation Cadence**:
   - Spend approximately 80% of time documenting what has been done and what needs to be done
   - End each session with documentation for the next session

3. **Memory Management**:
   - Record and update important insights as the project progresses
   - Maintain a "Memento" file with notes for future sessions

### Development Practices

1. **Visual Documentation**:
   - Use Mermaid diagrams for system visualization
   - Create clear architecture diagrams for complex systems

2. **Focused Development**:
   - Break work into manageable chunks
   - Define clear scope for each development session

3. **Version Control**:
   - Implement a robust checkpoint system
   - Save working versions in a dedicated Checkpoints folder
   - Include timestamps in filenames
   - Document changes between checkpoints

## Windsurf-Specific Features

### Rules Configuration
- Use `.windsurfrules` files for project-specific customization
- Implement global rules for organization-wide standards

### Benefits of Global Rules
- **Consistent Communication**: Ensure all interactions follow the same communication standards
- **Standardized Practices**: Define conventions for commit messages, code style, and documentation
- **Security Baseline**: Establish common security practices and data handling rules

## Best Practices for Working with AI

- **Strategic AI Usage**: Use appropriate models for specific tasks
- **Provide Examples**: Make Windsurf write code by showing examples of similar implementations
- **Documentation Focus**: AI coding agents work best with well-documented requirements
- **Iterative Approach**: Start with a minimal implementation and refine through iterations

---

*This document is a living guide. Update it regularly as your workflow evolves and new best practices emerge.*
