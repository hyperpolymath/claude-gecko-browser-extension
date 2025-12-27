;; SPDX-License-Identifier: MIT
;; Claude for Gecko - Meta Information

(meta
 (version . "1.0")
 (media-type . "application/meta+scheme")

 (architecture-decisions
  ((adr . "adr-001")
   (title . "Use Manifest V3 for Firefox")
   (status . accepted)
   (date . "2025-12-27")
   (context . "Firefox supports both MV2 and MV3. MV3 is the future standard.")
   (decision . "Use Manifest V3 for forward compatibility and security benefits.")
   (consequences
    ("Must use service workers instead of background pages"
     "Better security sandbox"
     "Aligned with Chrome extension model"
     "Some APIs work differently than MV2")))

  ((adr . "adr-002")
   (title . "Direct API calls instead of proxy")
   (status . accepted)
   (date . "2025-12-27")
   (context . "Could route API calls through a backend server or call Anthropic directly.")
   (decision . "Call Anthropic API directly from the extension using user's own API key.")
   (consequences
    ("Users must provide their own API key"
     "No server infrastructure to maintain"
     "No data passes through third-party servers"
     "Privacy preserved - we never see user data"
     "Requires anthropic-dangerous-direct-browser-access header")))

  ((adr . "adr-003")
   (title . "No computer use / browser automation")
   (status . accepted)
   (date . "2025-12-27")
   (context . "Official Chrome extension has computer use features. Should we replicate?")
   (decision . "Do not implement browser automation or computer use features.")
   (consequences
    ("Simpler extension with smaller attack surface"
     "No prompt injection risks from page content"
     "Faster time to stable release"
     "Can add later if demand exists")))

  ((adr . "adr-004")
   (title . "Dark theme by default")
   (status . accepted)
   (date . "2025-12-27")
   (context . "Should support light/dark themes or pick one?")
   (decision . "Ship with dark theme only for v1. Matches Claude's aesthetic.")
   (consequences
    ("Consistent with Claude branding"
     "Preferred by many developer users"
     "Simpler CSS maintenance"
     "Can add theme toggle in future version"))))

 (development-practices
  (code-style
   (language . "JavaScript (ES6+)")
   (modules . "ES Modules")
   (formatting . "Standard JS style")
   (comments . "JSDoc for public functions"))

  (security
   (api-key-storage . "browser.storage.local (encrypted by browser)")
   (csp . "Strict CSP via manifest")
   (permissions . "Minimal required permissions")
   (no-eval . "Never use eval or dynamic code execution"))

  (testing
   (unit . "Planned - Jest or similar")
   (integration . "Manual testing in Firefox/LibreWolf")
   (security . "Review for prompt injection vectors"))

  (versioning . "Semantic Versioning 2.0.0")

  (documentation
   (format . "AsciiDoc preferred")
   (location . "README.adoc, docs/")
   (inline . "JSDoc comments"))

  (branching
   (main . "Stable releases only")
   (develop . "Integration branch")
   (feature . "feature/* branches")))

 (design-rationale
  (why-gecko-only
   "The official Claude extension only supports Chromium. Firefox and other Gecko browsers represent a significant privacy-conscious user base that deserves Claude access.")

  (why-unofficial
   "Anthropic has not released a Firefox extension. Rather than wait, we provide the community with a solution. This is clearly marked as unofficial.")

  (why-minimal
   "Browser extensions have significant security implications. By keeping scope minimal (chat + context menu), we reduce attack surface and maintenance burden.")

  (why-mit-license
   "MIT is simple, permissive, and allows maximum adoption. The Palimpsest License provides philosophical guidance without legal complexity.")))
