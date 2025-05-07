# HOW TO USE THIS REPO

Alas... you've watched YT videos until your eyes hurt, and you've made it to fully automated luxury agentic software development (just mind your API U$$$AGE!! 😬)

## The TL;DR

This repo gives you a ready-to-roll project structure for building apps with AI assistance. It's like pair programming, but your partner is an AI that actually knows what it's doing.

## Quick Setup (no cap)

1. **Clone this repo** to your machine (or just copy these files)

```bash
git clone [your-repo-url]
```

1. **Rename everything** from "agentic_project" to whatever your actual project is called

```bash
# Example (macOS/Linux)
find . -type f -exec sed -i '' 's/agentic_project/your_cool_project/g' {} \;
```

1. **Set up your Windsurf config** to use those MCP servers (if you haven't already)
   - Make sure your MCP config is good to go (see MCP Configuration section below)
   - Double-check your API keys aren't expired

## MCP Configuration - The Secret Sauce 🌶️

MCP (Model Context Protocol) is what gives your AI assistant superpowers - it lets the AI interact with tools and services outside its normal sandbox. No cap, it's a game-changer!

### What's the vibe with MCP

- MCP servers are like plugins that let your AI do things it normally can't (search the web, access your git repo, remember stuff long-term)
- Each server has a specific job (like `tavily` for web search or `git` for repo access)
- The AI triggers these tools with specific phrases like "search the web for React hooks (use tavily)" or "git.log -n 5"

### How to set it up

1. Check out the `example_mcp_config.jsonc` file in this repo
2. Copy it to your Windsurf config location (usually `~/.codeium/windsurf/mcp_config.json`)
3. Replace the placeholder API keys with your actual keys
4. For memory storage, set the paths to where you want data stored

```json
// Example for the tavily search MCP
"tavily": {
  "command": "npx",
  "args": ["-y", "tavily-mcp@latest"],
  "env": { "TAVILY_API_KEY": "<YOUR_TAVILY_API_KEY>" }
}
```

Most MCP servers work right out of the box with npx, but some (like memory) need a bit more setup.

### The coolest MCPs to use with this project

- `git`: Helps the AI understand your codebase
- `memory`: Lets the AI remember important project details between sessions
- `tavily`: Searches the web for docs and solutions
- `fetch`: Grabs content from URLs and formats it nicely
- `figma`: Connects to your design files (if you're into that)

Check the comments in `example_mcp_config.jsonc` for how to trigger each MCP!

## How to Actually Use This Thing

### The Workflow Vibe Check

1. **Prime your AI** with project context
   - Grab the template from `.windsurf_prompts/commands/prime_project_context_with_mcp.md`
   - Paste it into your Windsurf chat
   - The AI will use `git` MCP to understand your project and `memory` MCP to remember it

2. **Plan new features** before you build
   - Use `.windsurf_prompts/commands/draft_feature_spec_with_mcp.md`
   - Explain what you want to build
   - The AI will use `tavily` to research, `fetch` to get docs, and help write a detailed plan

3. **Build your app** with the AI as your coding buddy
   - The AI now has context about your project and a plan
   - It can help write code, debug issues, and explain concepts

### Folder Breakdown

- `ai_docs/` = Documentation the AI can understand (API details, architecture)
- `specs/` = Feature specifications (what you're building and how)
- `.windsurf_prompts/` = Templates for working with Windsurf

## What's Missing?

- Your actual code! This is just a skeleton - you'll add a `src/` folder when you start coding
- Your creativity and domain knowledge (AI can't replace that... yet 👀)
- Possibly some domain-specific templates you might want to add

## Pro Tips (no cap fr fr)

- Always give your AI clear instructions - it's smart but not psychic
- Update docs as you go - future you will thank you
- Use `memory` MCP to store key decisions so the AI remembers them
- Be specific about API details when asking for implementation help

Happy hacking fren ^__^

Don't get haxd!

-The Rubber Ducktor
