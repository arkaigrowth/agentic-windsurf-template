# Agentic Project

## Project Overview
This project implements [brief description of project purpose]. It follows an agentic coding workflow, leveraging Windsurf and MCP servers for efficient AI-assisted development.

## Getting Started
1. Clone this repository
2. [Additional setup instructions]

## Project Structure
- `.windsurf_prompts/`: Contains templates for AI-assisted workflows
- `ai_docs/`: Documentation for APIs, architecture, and technical details
- `specs/`: Feature specifications and requirements
- `src/`: Source code (not yet created)

## Development Workflow
[Brief description of development workflow]

## Recommended Windsurf Workflow
1. **Prime Project Context**: Use `.windsurf_prompts/commands/prime_project_context_with_mcp.md` to give the AI a comprehensive understanding of the project, leveraging:
   - `git` MCP to list files and understand commit history
   - `memory` MCP to store project understanding for future sessions

2. **Plan Features**: Use `.windsurf_prompts/commands/draft_feature_spec_with_mcp.md` to create detailed feature specifications, leveraging:
   - `tavily` MCP for research during planning
   - `fetch` MCP to get external documentation
   - `postgres` MCP to understand database schema (when relevant)
   - `figma` MCP to access design information (when relevant)

3. **Implement Features**: Work with the AI to implement feature specifications, following the plans created in step 2.

4. **Document**: Update documentation in `ai_docs/` to capture key decisions and implementation details.

## Contributing
[Contribution guidelines]

## License
[License information]
