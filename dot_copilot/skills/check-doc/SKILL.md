---
name: check-doc
description: 'Look up documentation for any library, framework, or technology. Use when asked to "check the doc", "look up docs", "find documentation", "show me how to use", or "what does X do". For Microsoft technologies (Azure, .NET, C#, ASP.NET, TypeScript, PowerShell, Blazor, Entity Framework, MAUI, etc.) uses the Microsoft Learn MCP Server. For all other technologies uses the Context7 MCP server.'
---

# Check Doc

A skill that looks up official documentation for any library or technology on demand.

## When to Use This Skill

- User says "check the doc for X", "check doc of X", "look up docs for X"
- User asks "how do I use X", "what is the API for X", "show me X documentation"
- User wants to verify an API, method signature, configuration option, or best practice

## Decision: Which MCP Server to Use

### Use **Microsoft Learn MCP Server** for Microsoft technologies:
- Azure (all services: App Service, Functions, Cosmos DB, Storage, etc.)
- .NET, C#, ASP.NET Core, ASP.NET Web API
- Entity Framework Core
- TypeScript / JavaScript (Microsoft-owned docs)
- PowerShell
- Blazor, MAUI, WPF, WinForms
- Visual Studio, VS Code extensions
- SQL Server, T-SQL
- Microsoft Graph API
- Teams, SharePoint, Office 365

### Use **Context7 MCP Server** for everything else:
- npm packages (React, Vue, Angular, Express, etc.)
- Python libraries (FastAPI, Django, SQLAlchemy, etc.)
- Go, Rust, Ruby, PHP libraries
- Open-source tools (Docker, Kubernetes, Terraform, etc.)
- Any library not owned by Microsoft

## Step-by-Step Workflow

### For Microsoft technologies

1. Identify the Microsoft technology from the user's request
2. Use the Microsoft Learn MCP Server tool to search for relevant documentation
3. Query with specific terms (e.g., class name, method, configuration key)
4. Present the relevant docs, code examples, and links

### For all other technologies

1. Use the `context7-resolve-library-id` tool to find the Context7 library ID for the technology
2. Use the `context7-query-docs` tool with the resolved library ID and a specific query
3. Present the relevant docs, code examples, and links

## Examples

| User request | Technology | MCP to use |
|---|---|---|
| "check doc of oh-my-posh" | oh-my-posh | Context7 |
| "check doc for Azure Blob Storage" | Azure | Microsoft Learn |
| "check doc for IMemoryCache in ASP.NET" | ASP.NET Core | Microsoft Learn |
| "check doc for React hooks" | React | Context7 |
| "check doc for ExRam.Gremlinq" | Gremlinq | Context7 |
| "check doc for dotnet user-secrets" | .NET CLI | Microsoft Learn |
| "check doc for Finbuckle.MultiTenant" | Finbuckle | Context7 |
