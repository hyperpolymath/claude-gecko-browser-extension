;; SPDX-License-Identifier: MIT
;; Claude for Gecko - Project State

(define state
  '((metadata
     (version . "0.1.0")
     (schema-version . "1.0")
     (created . "2025-12-27")
     (updated . "2025-12-27")
     (project . "claude-gecko-browser-extension")
     (repo . "https://github.com/hyperpolymath/claude-gecko-browser-extension"))

    (project-context
     (name . "Claude for Gecko")
     (tagline . "Unofficial Claude AI assistant for Firefox and Gecko-based browsers")
     (tech-stack . (javascript webextensions-api manifest-v3 firefox-gecko)))

    (current-position
     (phase . "initial-development")
     (overall-completion . 40)
     (components
      ((manifest . 100)
       (background-script . 90)
       (popup-ui . 85)
       (options-page . 85)
       (content-script . 80)
       (icons . 0)
       (documentation . 70)
       (testing . 0)
       (packaging . 0)))
     (working-features
      ("API key configuration"
       "Popup chat interface"
       "Message sending to Claude API"
       "Conversation history (session)"
       "Context menu actions"
       "Response overlay on pages"
       "Model selection"
       "Custom system prompts")))

    (route-to-mvp
     ((milestone . "v0.1.0 - Core Functionality")
      (items
       ((item . "Create proper extension icons")
        (status . pending))
       ((item . "Test on Firefox")
        (status . pending))
       ((item . "Test on LibreWolf")
        (status . pending))
       ((item . "Handle API errors gracefully")
        (status . partial))
       ((item . "Add loading states")
        (status . done))))

     ((milestone . "v0.2.0 - Polish")
      (items
       ((item . "Keyboard shortcuts")
        (status . pending))
       ((item . "Markdown rendering in responses")
        (status . pending))
       ((item . "Code syntax highlighting")
        (status . pending))
       ((item . "Export conversation history")
        (status . pending))))

     ((milestone . "v0.3.0 - Distribution")
      (items
       ((item . "Submit to Firefox Add-ons")
        (status . pending))
       ((item . "Create promotional screenshots")
        (status . pending))
       ((item . "Write add-on description")
        (status . pending)))))

    (blockers-and-issues
     (critical . ())
     (high
      (("Icons missing" . "Need to create or generate extension icons")))
     (medium
      (("No tests" . "Should add basic functionality tests")))
     (low
      (("Markdown support" . "Responses don't render markdown"))))

    (critical-next-actions
     (immediate
      ("Create placeholder/real icons"
       "Initialize git repository"
       "Test extension loading in Firefox"))
     (this-week
      ("Test full flow with real API key"
       "Fix any bugs found in testing"
       "Push to GitHub"))
     (this-month
      ("Submit to Firefox Add-ons"
       "Get user feedback"
       "Iterate based on feedback")))

    (session-history
     ((date . "2025-12-27")
      (accomplishments
       ("Created project structure"
        "Implemented manifest.json for Firefox MV3"
        "Created background service worker with API integration"
        "Built popup chat UI with dark theme"
        "Built options/settings page"
        "Created content script for page overlays"
        "Added context menu integration"
        "Wrote README.adoc documentation"
        "Added MIT license"
        "Created Palimpsest License philosophical companion"
        "Created STATE.scm checkpoint"))))))
