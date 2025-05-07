# Windsurf Command Templates

This directory contains command templates for specific AI-assisted workflows in this project.

## Purpose
These templates provide structured instructions for common tasks, ensuring:
- Consistent workflow patterns
- Efficient use of AI capabilities
- Integration with MCP servers for enhanced functionality
- Standardized outputs

## Available Commands

### prime_project_context_with_mcp.md
- **Purpose**: Gives the AI comprehensive context about the project
- **When to use**: At the start of a new Windsurf session or when switching between major tasks
- **Key features**: Uses `git` MCP for repository information and `memory` MCP for storing project understanding

### draft_feature_spec_with_mcp.md
- **Purpose**: Helps draft detailed feature specifications
- **When to use**: When planning a new feature or component
- **Key features**: Uses `tavily` MCP for research, `fetch` MCP for documentation, and suggests usage of other MCP servers when relevant

## Usage Tips
1. Copy the entire content of a template
2. Replace any placeholders (text in `[BRACKETS]`)
3. Provide any requested additional information
4. Follow the workflow as outlined in the template

## Note on MCP Servers
Many of these prompt templates will suggest the use of specific MCP servers (e.g., `git`, `tavily`, `fetch`). Ensure Windsurf is configured to access these servers for optimal results.

## Customization
Feel free to modify these templates or create new ones as project needs evolve.
