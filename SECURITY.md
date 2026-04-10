# Security Policy

## Reporting a Vulnerability

Social Campaign is an AI skill composed of markdown instruction files and reference documents. It does not contain executable code, access sensitive data, or make network requests on its own.

However, if you discover a security concern — such as instructions that could lead to:
- Unintended data exposure
- Malicious prompt injection vectors
- Instructions that could compromise user systems

Please report it by [opening a private security advisory](https://github.com/mrsahilbeniwal/social-campaigns/security/advisories/new) or emailing the maintainer directly.

## Scope

This project contains:
- Markdown instruction files (`.md`)
- No executable scripts
- No API keys or credentials
- No network-dependent code

The skill runs entirely within the user's AI coding assistant environment, using only the tools that environment provides.
