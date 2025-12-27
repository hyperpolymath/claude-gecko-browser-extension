;; SPDX-License-Identifier: MIT
;; Claude for Gecko - Agentic Behavior Specification

(agentic
 (version . "1.0")
 (purpose . "Define boundaries and behaviors for AI-assisted development")

 (project-context
  (type . "browser-extension")
  (ai-integration . "Claude API client")
  (automation-level . "minimal")
  (human-oversight . "required"))

 (ai-assistant-guidelines
  (when-helping-with-this-project
   (do
    ("Follow Firefox WebExtensions API patterns"
     "Maintain minimal permissions philosophy"
     "Preserve dark theme aesthetic"
     "Keep code simple and readable"
     "Update STATE.scm when completing tasks"
     "Use JSDoc comments for functions"
     "Respect the Palimpsest License principles"))

   (do-not
    ("Add unnecessary permissions to manifest"
     "Implement browser automation features"
     "Add analytics or tracking"
     "Store user data beyond local storage"
     "Make network calls except to Anthropic API"
     "Add dependencies without justification"
     "Overcomplicate the architecture"))))

 (extension-behavior
  (user-data-handling
   (api-key
    (storage . "browser.storage.local")
    (encryption . "browser-provided")
    (transmission . "only to api.anthropic.com")
    (retention . "until user clears"))

   (conversations
    (storage . "session memory only")
    (persistence . "none")
    (transmission . "only to api.anthropic.com"))

   (selected-text
    (storage . "transient")
    (persistence . "none")
    (use . "single API request only")))

  (network-behavior
   (allowed-hosts
    ("api.anthropic.com"))
   (blocked
    ("all other hosts"))
   (no-telemetry . #t)
   (no-analytics . #t))

  (permission-philosophy
   (principle . "least privilege")
   (current-permissions
    (activeTab . "Access current tab only when user invokes action")
    (storage . "Store API key and preferences locally")
    (contextMenus . "Add right-click menu items"))
   (explicitly-not-requested
    ("tabs - don't need to see all tabs"
     "history - not relevant"
     "bookmarks - not relevant"
     "downloads - not relevant"
     "webRequest - don't intercept requests"
     "nativeMessaging - no native app integration"))))

 (security-boundaries
  (prompt-injection-prevention
   (context-menu-actions
    (risk . "medium")
    (mitigation . "User-selected text is clearly quoted in prompts")
    (notes . "User explicitly chooses to send text to Claude"))

   (page-content
    (risk . "low")
    (mitigation . "Extension does not read arbitrary page content")
    (notes . "Only processes user-selected text")))

  (api-key-protection
   (storage . "browser.storage.local with browser encryption")
   (display . "Hidden by default in options, toggle to show")
   (transmission . "HTTPS only, direct to Anthropic"))

  (content-script-isolation
   (principle . "Inject minimal code")
   (execution . "Only runs when displaying responses")
   (dom-manipulation . "Only creates overlay elements")))

 (future-considerations
  (features-to-avoid
   (browser-automation
    (reason . "High security risk, complex to secure")
    (alternative . "Keep as simple chat interface"))

   (page-content-analysis
    (reason . "Privacy implications, prompt injection risk")
    (alternative . "Only process user-selected text"))

   (persistent-history
    (reason . "Data retention concerns")
    (alternative . "Session-only history, optional export")))

  (features-to-consider
   (keyboard-shortcuts
    (risk . "low")
    (benefit . "power user productivity"))

   (markdown-rendering
    (risk . "low with proper sanitization")
    (benefit . "better response readability"))

   (export-conversation
    (risk . "low")
    (benefit . "user data portability")))))
