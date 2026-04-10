# Security Policy

## Reporting a Vulnerability

Social Campaign is an AI skill made up of markdown files and reference documents. It doesn't contain executable code, access sensitive data, or make network requests on its own.

That said, if you find a security concern — such as instructions that could lead to:

- Unintended data exposure
- Prompt injection vectors
- Instructions that could compromise user systems

Please report it by [opening a private security advisory](https://github.com/mrsahilbeniwal/social-campaigns/security/advisories/new) or reaching out to the maintainer directly.

## Scope

This project contains:

- Markdown instruction files (`.md`)
- Shell/PowerShell install scripts
- No API keys or credentials
- No network-dependent runtime code

The skill runs entirely within the user's AI coding assistant environment, using only the tools that environment provides.
