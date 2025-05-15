# .windsurf folder (Windsurf Configuration)

This directory contains configuration for working with Windsurf in the context of this project, including workflow templates and custom rules.

## Purpose

These resources establish consistent workflows for working with AI assistants, ensuring:

- Comprehensive context is provided to the AI
- AI has appropriate access to MCP servers for research and information gathering
- Outputs follow standardized formats
- Complex tasks are broken down into manageable steps
- Consistent coding standards and practices are followed

## .windsurf Directory Structure

The `.windsurf` directory contains two main folders:

- **`workflows/`**: Contains prompt templates for specific AI-assisted workflows (formerly called 'commands' or 'recipes')
- **`rules/`**: Contains customized rules that guide Windsurf's behavior in this repo (for global rules, see the `global_rules.md` file in the `~/.codeium/windsurf/memories` directory OR )

## Workflow Templates (.windsurf/workflows)

### Workflow Templates Purpose

Workflow templates provide structured instructions for common tasks, ensuring:

- Consistent workflow patterns
- Efficient use of AI capabilities
- Integration with MCP servers for enhanced functionality
- Standardized outputs

### Available Workflows

#### prime_project_context_with_mcp.md

- **Purpose**: Gives the AI comprehensive context about the project
- **When to use**: At the start of a new Windsurf session or when switching between major tasks
- **Key features**: Uses `git` MCP for repository information and `memory` MCP for storing project understanding

#### draft_feature_spec_with_mcp.md

- **Purpose**: Helps draft detailed feature specifications
- **When to use**: When planning a new feature or component
- **Key features**: Uses `tavily` MCP for research, `fetch` MCP for documentation, and suggests usage of other MCP servers when relevant

### How to Use Workflows

1. Navigate to the appropriate template in the `workflows/` directory
2. Copy the entire content of the template
3. Replace any placeholders (text in `[BRACKETS]`)
4. Paste into your Windsurf session, filling in any requested information
5. Follow the workflow as outlined in the template

### Note on MCP Servers

Many of these workflow templates will suggest the use of specific MCP servers (e.g., `git`, `tavily`, `fetch`). Ensure Windsurf is configured to access these servers for optimal results.

## Repository Rules Structure (.windsurf/rules)

### Purpose of .windsurf/rules

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

1. **Start with workflows**: Use workflow templates to initiate structured processes
2. **Reference rules**: Encourage the AI to follow the established rules in the rules directory
3. **Iterate as needed**: Provide feedback to refine outputs and continuously improve rules

## Understanding Global vs. Repo-Based Rules

### Global Rules Configuration

Global rules apply across all of your Windsurf workspaces, ensuring consistent coding practices and AI interactions regardless of which project you're working on.

#### Location and Setup

- **File Path**: `~/.codeium/windsurf/memories/global_rules.md` (macOS/Linux) or `C:\Users\YourUsername\.codeium\windsurf\memories\global_rules.md` (Windows)
- **Purpose**: Defines rules that apply to all workspaces

#### How to Configure Global Rules

##### Option 1: Using the Cascade Settings Menu

1. In Windsurf, open Cascade panel
2. Click on the "Customizations" icon (open book) in the top right slider menu
3. Navigate to the "Rules" panel
4. Click "+Global" to add a new rule or select an existing global rule to edit
5. Make your changes in the editor and save

##### Option 2: Direct File Editing

1. Navigate to the `.codeium/windsurf/memories` directory in your home folder
2. Open or create the `global_rules.md` file
3. Edit the file using any text editor to add your rules

### Repo-Based Rules Configuration

Repo-based rules are specific to a single workspace or project, allowing you to define custom behaviors for that particular codebase.

#### Location and Setup

- **File Path**: `.windsurf/rules/` (directory containing multiple rule files)
- **Alternative**: `.windsurfrules.md` (single file in the root of your project)
- **Purpose**: Defines rules specific to the current workspace

#### Repo-Based Rules Configuration Steps

1. Create the `.windsurf/rules/` directory in your project and add individual `.md` rule files, or
2. Create a single `.windsurfrules.md` file in the root of your project

Within each rule file, you can specify whether the rule should be applied automatically or only when explicitly asked by including directives at the beginning of the file.

### Rule Precedence

When both global and repo-based rules are present:

1. Repo-based rules take precedence over global rules when conflicts occur
2. Rules are combined when they cover different aspects

## Template Management with Agent Workspace Setup

This repository contains templates for both global and repo-based rules that you can use as a starting point. To use these templates:

### Using the Agent Workspace Setup Commands

Windsurf provides commands that facilitate template management:

```bash
copy-agent-template
setup-agent-workspace
init-agent-project
prep-agent-env
```

These commands are defined in the user's global rules and can be used to copy template folders (ai_docs, .windsurf, specs) from your template repository to your current workspace.

### Example: Setting up a New Project

1. Open a new or existing project in Windsurf
2. Type one of the commands above (e.g., `setup-agent-workspace`)
3. Confirm the operation when prompted
4. The template folders will be copied to your current workspace

### Template Repository Storage

To make these template commands work across all your projects, consider storing this repository in a permanent location on your system:

- **Recommended path**: `~/Documents/Templates/my_windsurf_project`
- **Alternative**: Any stable location in your file system

Then update your global_rules.md to reference this location

```markdown
# Agent Workspace Setup

source:
  base_path: "~/Documents/Templates/my_windsurf_project"
  directories:
    - ".ai_docs"
    - ".windsurf"
    - "specs"
```

## Example Rules

### Example Global Rules (global_rules.md)

```markdown
# ---------- Agent Workspace Setup ---------------------------------
name: "Agent Workspace Setup"
description: "Copies template folders from your windsurf project to the current workspace"
version: "1.0.0"
author: "Alex Kamysz"

triggers:
  commands:
    - "copy-agent-template"
    - "setup-agent-workspace"
    - "init-agent-project"
    - "prep-agent-env"
  fuzzy_match: true
  fuzzy_threshold: 0.7

actions:
  copy_templates:
    type: "file_operation"
    operation: "copy"
    source:
      base_path: "~/Documents/Templates/my_windsurf_project"
      directories:
        - ".ai_docs"
        - ".windsurf"
        - "specs"
    destination:
      type: "current_workspace"
    confirm: true
    confirm_message: "Copy template folders to current workspace?"
```

### Example Repo-Based Rules (.windsurf/rules/*.md or .windsurfrules.md)

```markdown
# Project-Specific Rules

## Code Style

- Use 2-space indentation for all JavaScript files
- Follow camelCase naming convention for variables and functions
- Use PascalCase for class and component names
- Add JSDoc comments for all public functions and methods

## Project Architecture

- Use the MVC pattern for backend code
- Follow the feature-based folder structure for React components
- Store utility functions in the utils/ directory
- Implement atomic design principles for UI components
```

## Rules Best Practices Guide

- **Be Specific**: Write clear and precise rules that leave no room for interpretation
- **Keep Rules Concise**: Shorter rules are easier to understand and follow
- **Use Natural Language**: Write rules in a way that's easy to read and understand
- **Update Regularly**: Review and refine rules as your project evolves
- **Test Rule Effectiveness**: Periodically check if Windsurf is correctly applying your rules
- **Separate Concerns**: Create separate rule files for different aspects of your codebase
- **Include Examples**: Provide examples to illustrate how rules should be applied
- **Document Exceptions**: Clearly note when rules should not be followed

## Global Rules Automation

This repository includes tools to help you automate the setup of global rules in Windsurf:

- [Setup Guide](../setup_windsurf_rules_guide.md) - Detailed instructions for setting up global rules
- [Setup Script](../setup_windsurf_rules.sh) - Bash script that automates the global rules configuration

### About the Setup Tools

The setup tools are designed to help you configure useful global rules in Windsurf that allow you to quickly set up new projects with the agentic folder structure. Before using these tools:

- **Always read the guide first** to understand what changes will be made to your system
- The script will create or update your `~/.codeium/windsurf/memories/global_rules.md` file
- It will add commands like `setup-agent-workspace` that can copy template folders to any workspace
- A backup of your existing global rules will be created if the file already exists

⚠️ **Disclaimer**: The script modifies files in your home directory. While designed to be safe, it's always good practice to review scripts before running them and understand the changes they'll make.

## Resources

- [Windsurf Documentation](https://www.windsurf.ai/docs) - Official Windsurf documentation
- [Awesome WindsurfRules](https://github.com/balqaasem/awesome-windsurfrules) - Collection of example rule files
- [Windsurf Rules Directory](https://windsurf.com/editor/directory) - Official examples of useful rules
- [Windsurf Best Practices](/Users/alexkamysz/AI/my_windsurf_project/.ai_docs/windsurf_best_practices.md) - Local best practices documentation

## Customization

Feel free to modify these templates and rules or create new ones as the project evolves. The goal is to establish reusable workflows that maximize AI productivity.
