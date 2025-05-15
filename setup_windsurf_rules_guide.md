# Windsurf Global Rules Setup Guide

There are two ways to set up Windsurf global rules for your development environment:

1. **Manual Setup** (The Classic Way) - Directly edit the global_rules.md file using Windsurf's interface
2. **Automated Setup** (The Lazy Way) - Use the provided shell script to automate the process (use at your own risk)

## Manual Setup (The Classic Way)

If you prefer to have full control over the process, you can manually set up your global rules:

1. Open Windsurf and launch Cascade
2. Click on the "Customizations" icon (open book) in the top right slider menu
3. Navigate to the "Rules" panel
4. Click "+Global" to add a new rule or select an existing global rule to edit
5. Paste in your desired rules configuration (see examples below)
6. Save your changes

The global_rules.md file is stored at `~/.codeium/windsurf/memories/global_rules.md`.

### Example Rules Resources

Need inspiration for your rules? Check out these resources:

- [Windsurf Rules Directory](https://windsurf.com/editor/directory) - Official examples of useful rules from Windsurf
- [Awesome WindsurfRules](https://github.com/balqaasem/awesome-windsurfrules) - Community collection of example rule files
- More examples in the [.windsurf/README.md](.windsurf/README.md) file in this repository

## Automated Setup (The Lazy Way)

This guide explains how to use the included `setup_windsurf_rules.sh` script to automatically set up Windsurf's global rules.

## What the 'setup_windsurf_rules.sh' Script Does

The `setup_windsurf_rules.sh` script makes it easy to:

1. Create or update your `global_rules.md` file in the correct Codeium folder
2. Configure automatic template commands for quickly setting up new projects
3. Set up a template repository in your preferred location

This lets you use simple commands like `setup-agent-workspace` in any project to instantly copy your template folders.

## Quick Start Guide

### Step 1: Make the script executable

Open a terminal and run:

```bash
cd /path/to/my_windsurf_project
chmod +x setup_windsurf_rules.sh
```

### Step 2: Run the script

```bash
./setup_windsurf_rules.sh
```

The script will:

- Detect your operating system
- Find your home directory
- Create the `.codeium/windsurf/memories` folder if needed
- Create or update the `global_rules.md` file
- Add the Agent Workspace Setup commands

### Step 3: Set up your template repository

When prompted, you can either:

- Press Enter to use the default location (`~/Documents/Templates/my_windsurf_project`)
- Type a custom path for your template repository

### Step 4: Copy your template files

The script will suggest commands to copy your template folders to your chosen location:

```bash
mkdir -p "~/Documents/Templates/my_windsurf_project"
cp -r .ai_docs .windsurf specs "~/Documents/Templates/my_windsurf_project"
```

## Using Your New Commands

Once set up, you can use any of these commands in Windsurf Cascade to quickly set up a new project:

- `copy-agent-template`
- `setup-agent-workspace`
- `init-agent-project`
- `prep-agent-env`

Just type one of these commands in any workspace, and Cascade will copy your template folders to that project!

## Troubleshooting

### Windows Users

If you're on Windows, you'll need to run this script from Git Bash, WSL, or another bash-compatible shell.

### Permission Issues

If you encounter permission issues, make sure the script is executable:

```bash
chmod +x setup_windsurf_rules.sh
```

### Custom Template Path

If you want to change your template path later, you can run the script again and provide a new location when prompted.

## What's Happening Behind the Scenes

This script:

1. Creates or updates the `global_rules.md` file at `~/.codeium/windsurf/memories/`
2. Adds a special Agent Workspace Setup section
3. Configures it to recognize commands like `setup-agent-workspace`
4. Points those commands to your template repository

## Example Rule (Useful): Hybrid Documentation Search

Below is another extremely useful rule you might want to add to your `global_rules.md`. This rule creates a powerful hybrid documentation search system that combines multiple search sources for optimal results:

```markdown
# ---------- Doc Retrieval – Hybrid Recipe -------------------------
name: "Doc Retrieval - Hybrid Recipe"
description: |
  Uses Context7 for canonical SDK / framework docs.
  Falls back to Tavily Search API when Context7 returns no hits or when the
  query asks for broader web content (blog posts, release notes, FAQs).
  Both result sets are funneled through Phoenix tracing for observability.

version: "1.0.0"
author: "rubberducktor"

triggers:
  commands:
    - "fetch-docs"
    - "search-docs"
    - "doc-search"
  fuzzy_match: true
  fuzzy_threshold: 0.7

workflow:
  steps:
    # 1️⃣ Context7 search
    - id: context7_query
      type: "tool"
      tool: "context7.search"
      params:
        query: "$prompt"
        max_results: 10

    # 2️⃣ If Context7 returns no hits → call Tavily
    - id: tavily_fallback
      type: "tool"
      run_if: "{{ steps.context7_query.hits == 0 }}"
      tool: "tavily.search"
      params:
        query: "$prompt"
        num_results: 8
        include_content: true

    # 3️⃣ Merge results
    - id: combine
      type: "merge"
      inputs:
        - steps.context7_query.results
        - steps.tavily_fallback.results

    # 4️⃣ Trace with Phoenix
    - id: phoenix_trace
      type: "tool"
      tool: "phoenix.trace"
      params:
        input_docs: "{{ steps.combine.output }}"
        metadata:
          source: "windsurf-hybrid-doc-recipe"

    # 5️⃣ Return docs to LLM prompt
    - id: return_snippets
      type: "return"
      data: "{{ steps.combine.output }}"
```

### How This Rule Works

This hybrid search rule creates a sophisticated documentation search workflow:

1. **Primary Search**: First uses Context7 to search canonical SDK and framework documentation
2. **Fallback Mechanism**: If Context7 returns no results, automatically falls back to Tavily web search
3. **Result Merging**: Combines results from both sources when available
4. **Tracing**: Uses Phoenix tracing for observability and debugging
5. **Command Triggers**: Can be activated by typing commands like `fetch-docs`, `search-docs`, or `doc-search`

### Why This Rule Is Useful

This rule significantly enhances Windsurf's research capabilities by:

- **Getting the best of both worlds**: Precise SDK documentation from Context7 plus broader web content from Tavily
- **Failover reliability**: Never returns empty results since it falls back to web search when needed
- **Efficiency**: Saves you from having to explicitly specify which search provider to use
- **Flexible activation**: Can be triggered by multiple command variations with fuzzy matching

You can add this rule manually to your `global_rules.md` file or modify the setup script to include it.
