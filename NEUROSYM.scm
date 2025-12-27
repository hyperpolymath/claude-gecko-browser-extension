;; SPDX-License-Identifier: MIT
;; Claude for Gecko - Neurosymbolic Integration Notes

(neurosym
 (version . "1.0")
 (purpose . "Document the intersection of neural (LLM) and symbolic (structured) reasoning in this project")

 (overview
  (project-nature . "hybrid")
  (neural-component . "Claude API (external LLM)")
  (symbolic-component . "Extension logic, user interface, structured data"))

 (neural-aspects
  (claude-api
   (role . "Core reasoning engine")
   (capabilities
    ("Natural language understanding"
     "Text summarization"
     "Translation"
     "Explanation generation"
     "General question answering"))

   (integration-points
    ((point . "user-message")
     (flow . "user input → API request → response display"))

    ((point . "context-menu")
     (flow . "selected text + action → structured prompt → API → overlay"))

    ((point . "system-prompt")
     (flow . "user preference → persistent instruction to model"))))

  (prompt-engineering
   (patterns-used
    ((pattern . "explicit-instruction")
     (example . "Please explain the following text:")
     (purpose . "Clear task framing"))

    ((pattern . "quoted-content")
     (example . "\"${selectedText}\"")
     (purpose . "Distinguish user content from instructions"))

    ((pattern . "conditional-behavior")
     (example . "translate to English, or if already English, to Spanish")
     (purpose . "Handle ambiguous input gracefully")))))

 (symbolic-aspects
  (extension-architecture
   (manifest
    (type . "declarative configuration")
    (purpose . "Define extension capabilities, permissions, resources"))

   (state-management
    (conversation-history
     (type . "array of message objects")
     (structure . "{role: string, content: string}")
     (purpose . "Provide context for multi-turn conversations"))

    (user-preferences
     (type . "key-value storage")
     (structure . "{apiKey, model, systemPrompt}")
     (purpose . "Persist user configuration")))

   (ui-components
    (popup . "Structured chat interface with clear input/output areas")
    (overlay . "Positioned response display with actions")
    (options . "Form-based settings management")))

  (scm-files
   (purpose . "Symbolic knowledge representation for project metadata")
   (files
    ((STATE.scm . "Current project state, tasks, progress")
     (ECOSYSTEM.scm . "Project relationships and positioning")
     (META.scm . "Architecture decisions, design rationale")
     (PLAYBOOK.scm . "Procedural knowledge for development")
     (AGENTIC.scm . "AI behavior guidelines and boundaries")
     (NEUROSYM.scm . "This file - neural/symbolic integration notes")))

   (benefits
    ("Machine-readable project documentation"
     "Consistent structure across projects"
     "AI assistants can parse and understand project context"
     "Version-controllable knowledge base"))))

 (integration-patterns
  (neural-to-symbolic
   (api-response-parsing
    (input . "Unstructured text from Claude")
    (output . "Displayed in structured UI component")
    (transformation . "None - displayed as-is currently")
    (future . "Could parse markdown, code blocks, etc."))

   (error-handling
    (input . "API error messages")
    (output . "Structured error display")
    (transformation . "Extract message from error object")))

  (symbolic-to-neural
   (prompt-construction
    (input . "User selection + action type")
    (output . "Structured prompt string")
    (transformation . "Template substitution with escaping"))

   (context-assembly
    (input . "Conversation history array")
    (output . "Messages array for API")
    (transformation . "Direct mapping, role preservation"))))

 (design-principles
  (separation-of-concerns
   ("Neural reasoning handled entirely by Claude API"
    "Symbolic structure handled by extension code"
    "Clear interface between the two"))

  (graceful-degradation
   ("If API fails, show structured error"
    "If parsing fails, show raw response"
    "Never lose user's input"))

  (transparency
   ("User sees exactly what is sent to API"
    "User sees raw API response"
    "No hidden processing or filtering"))

  (minimal-coupling
   ("Extension works as thin client"
    "No local ML/AI processing"
    "All intelligence delegated to Claude")))

 (future-directions
  (potential-enhancements
   (structured-output
    (description . "Request JSON-structured responses for rich UI")
    (benefit . "Better rendering of lists, code, etc.")
    (complexity . "medium"))

   (response-caching
    (description . "Cache responses for identical queries")
    (benefit . "Reduced API calls, faster UX")
    (complexity . "low"))

   (semantic-search
    (description . "Search conversation history semantically")
    (benefit . "Find past responses by meaning")
    (complexity . "high - would need local embeddings")))))
