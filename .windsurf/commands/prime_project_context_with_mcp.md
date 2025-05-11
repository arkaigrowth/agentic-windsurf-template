## PROJECT CONTEXT PRIMING (with MCP) ##

**Objective:** To provide you, my AI assistant, with comprehensive context about the `my_windsurf_project` project using available MCP servers.

**Instructions for AI:**
1.  Acknowledge you've received this priming prompt.
2.  **Use the `git` MCP server:** Execute `git.get_current_branch` and `git.log --oneline -n 5` to understand the current branch and recent commit history. Summarize this.
3.  **Use the `git` MCP server:** Execute `git.ls_files` to get a list of all tracked files.
4.  I will provide the content of the main project `README.md`. Please read it.
    (User: Paste `my_windsurf_project/README.md` content here)
5.  Based on the README, git information, and file list, please provide a concise overview of the project's current state, purpose, and architecture as you understand it.
6.  **Use the `memory` MCP server:** Write a summary of this project overview to your long-term memory with a key like `project_overview_my_windsurf_project`.
7.  Confirm you are ready for further tasks.

**Key files/directories to pay special attention to (if known by user already):**
*   `ai_docs/`: Contains API specifications, architectural documents.
*   `specs/`: Contains detailed feature plans.
*   `src/`: (Assuming a common source directory)
