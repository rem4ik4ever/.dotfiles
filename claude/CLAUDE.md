- In all interactions and commit messages, be extremely concise and sacrifice grammar for the sake of concision.

## PR Comments

<pr-comment-rule>
When I say to add a comment to a PR with a TODO on it, use the GitHub 'checkbox' markdown to add a TODO. For instance:

<example>
- [ ] A description of the todo goes here
</example>
</pr-comment-rule>
- When tagging Claude in GitHub issues, use '@claude'

## GitHub
Your primary method of interacting with GitHub should be the GitHub CLI

## GitHub commit rules
- Create commits based on project and file changes
- Never sign commits as Claude Code. Leave commits unsigned
```
🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude Opus 4.5 <noreply@anthropic.com>
```
Should not be included in commits

## Github PR rules
- Never sign PRs 
- Never write "Generated with Claude Code" 
- Follow pr-template

<pr-template>
### Why

### What

### How it was tested
</pr-template>

## Plans
- At the end of each plan, give me a list of unresolved questions to answer, if any. Make the questions extremely concise. Sacrifice grammar for the sake of concision.
