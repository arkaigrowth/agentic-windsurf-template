## DRAFT FEATURE SPECIFICATION (with MCP) ##

**Objective:** Please help me draft a detailed feature specification for the following request. We will use the standard template located at `specs/template_feature_specification.md`. Leverage MCP servers for research and information gathering.

**My Feature Request:**
`[USER: PASTE YOUR HIGH-LEVEL FEATURE REQUEST HERE. Be as clear as possible. If it involves external services or specific technologies, mention them so the AI can use MCPs for research.]`
*(Example: "Draft a plan to integrate the Stripe API for payment processing, specifically for one-time charges.")*

**Instructions for AI:**
1.  Acknowledge the feature request.
2.  **Research (if applicable, based on request):**
    *   If the request involves external APIs or technologies, **use the `tavily` MCP server** to search for relevant official documentation, best practices, and common integration patterns. For example: `tavily.search "Stripe API one-time charge documentation"`
    *   If specific URLs are provided or found, **use the `fetch` MCP server** to get the content of those pages. For example: `fetch https://stripe.com/docs/api/charges/create`
    *   If the request involves UI/UX based on existing designs, and a Figma link is available, I (the user) can provide it, and you can suggest how the `figma` MCP server might be used to extract details (though I will perform the `figma` MCP calls if needed).
    *   If the request involves database interactions, you can formulate questions for me to ask the `postgres` MCP server (e.g., "Ask `postgres.get_schema 'public'` to understand existing table structures").
3.  I will now provide the content of `specs/template_feature_specification.md`.
    (User: Paste content of `specs/template_feature_specification.md` here)
4.  Based on my feature request, your research using MCP servers, and the provided template, please generate a DRAFT specification.
5.  For each section of the template, provide detailed and actionable content, incorporating insights from your MCP-assisted research.
6.  The output should be the full content for a new file: `specs/feature_draft_[brief_feature_name].md`. I will then copy this into the actual file.
