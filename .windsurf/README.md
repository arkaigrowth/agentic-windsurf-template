# Windsurf Configuration

This directory contains configuration for working with Windsurf in the context of this project, including command templates and custom rules.

## Purpose

These resources establish consistent workflows for working with AI assistants, ensuring:

- Comprehensive context is provided to the AI
- AI has appropriate access to MCP servers for research and information gathering
- Outputs follow standardized formats
- Complex tasks are broken down into manageable steps
- Consistent coding standards and practices are followed

## Directory Structure

The `.windsurf` directory contains two main folders:

- **`commands/`**: Contains prompt templates for specific AI-assisted workflows
- **`rules/`**: Contains customized rules that guide Windsurf's behavior

## Command Templates

### Command Templates Purpose

Command templates provide structured instructions for common tasks, ensuring:

- Consistent workflow patterns
- Efficient use of AI capabilities
- Integration with MCP servers for enhanced functionality
- Standardized outputs

### Available Commands

#### prime_project_context_with_mcp.md
- **Purpose**: Gives the AI comprehensive context about the project
- **When to use**: At the start of a new Windsurf session or when switching between major tasks
- **Key features**: Uses `git` MCP for repository information and `memory` MCP for storing project understanding

#### draft_feature_spec_with_mcp.md
- **Purpose**: Helps draft detailed feature specifications
- **When to use**: When planning a new feature or component
- **Key features**: Uses `tavily` MCP for research, `fetch` MCP for documentation, and suggests usage of other MCP servers when relevant

### How to Use Commands

1. Navigate to the appropriate template in the `commands/` directory
2. Copy the entire content of the template
3. Replace any placeholders (text in `[BRACKETS]`)
4. Paste into your Windsurf session, filling in any requested information
5. Follow the workflow as outlined in the template

### Note on MCP Servers

Many of these prompt templates will suggest the use of specific MCP servers (e.g., `git`, `tavily`, `fetch`). Ensure Windsurf is configured to access these servers for optimal results.

## Windsurf Rules

### Purpose

The `rules/` folder contains custom rules that guide Windsurf's behavior when working with this codebase. These rules help ensure:

- Consistent code style and formatting
- Project-specific conventions are followed
- Security best practices are enforced
- Standardized documentation patterns

### Available Rules

- **`code_style.md`**: Defines coding standards and formatting conventions
- **`documentation_standards.md`**: Guidelines for documenting code and APIs
- **`project_architecture.md`**: Architecture principles for maintaining clean structure

### How to Use Rules

1. Create `.md` files in the `rules/` folder with clear, descriptive names (e.g., `code_style.md`, `security_guidelines.md`)
2. Write rules using natural language in markdown format
3. Windsurf will automatically apply these rules when generating code for this project

### Rule File Format

Rules should be written in clean, structured markdown following this general format:

```markdown
# Rule Category Title

## Section Heading

- Specific guideline or rule
- Another specific guideline
- Additional guidelines with clear instructions

## Another Section

- More specific guidelines
- Detailed explanation when needed
```

### Rules Best Practices

- **Be Specific**: Clear, explicit rules work better than vague guidelines
- **Prioritize Readability**: Write rules in plain language
- **Focus on Important Conventions**: Don't overload with too many rules
- **Update Regularly**: Keep rules in sync with evolving project conventions
- **Test Rules**: Verify that Windsurf correctly applies your rules

## Workflow Integration

For optimal results, use both components together:

1. **Start with commands**: Use command templates to initiate structured workflows
2. **Reference rules**: Encourage the AI to follow the established rules in the rules directory
3. **Iterate as needed**: Provide feedback to refine outputs and continuously improve rules

## Resources

- [Windsurf Documentation](https://www.windsurf.ai/docs) - Official Windsurf documentation
- [Awesome WindsurfRules](https://github.com/balqaasem/awesome-windsurfrules) - Collection of example rule files
- [Windsurf Best Practices](/Users/alexkamysz/AI/my_windsurf_project/ai_docs/windsurf_best_practices.md) - Local best practices documentation

## Customization

Feel free to modify these templates and rules or create new ones as the project evolves. The goal is to establish reusable workflows that maximize AI productivity.
