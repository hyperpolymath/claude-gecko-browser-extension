;; SPDX-License-Identifier: MIT
;; Claude for Gecko - Development Playbook

(playbook
 (version . "1.0")
 (purpose . "Standard procedures for development and maintenance")

 (setup
  ((step . "clone")
   (command . "git clone https://github.com/hyperpolymath/claude-gecko-browser-extension.git")
   (notes . "Clone the repository"))

  ((step . "load-extension")
   (procedure
    ("Open Firefox"
     "Navigate to about:debugging"
     "Click 'This Firefox'"
     "Click 'Load Temporary Add-on...'"
     "Select manifest.json"))
   (notes . "Load as temporary add-on for development"))

  ((step . "configure")
   (procedure
    ("Click extension icon"
     "Click settings (gear icon)"
     "Enter Anthropic API key"
     "Save settings"))
   (notes . "API key required for functionality")))

 (development-workflow
  ((task . "make-changes")
   (steps
    ("Edit source files in src/"
     "Go to about:debugging"
     "Click 'Reload' on the extension"
     "Test changes")))

  ((task . "test-popup")
   (steps
    ("Click extension icon in toolbar"
     "Verify UI renders correctly"
     "Test chat functionality"
     "Check console for errors (F12)")))

  ((task . "test-context-menu")
   (steps
    ("Select text on any webpage"
     "Right-click to open context menu"
     "Click a Claude action"
     "Verify overlay appears with response")))

  ((task . "debug")
   (steps
    ("Open about:debugging"
     "Click 'Inspect' on the extension"
     "Use DevTools to debug background script"
     "For popup: right-click popup, 'Inspect'"))))

 (release-workflow
  ((task . "prepare-release")
   (steps
    ("Update version in manifest.json"
     "Update version in STATE.scm"
     "Update CHANGELOG if exists"
     "Run all tests"
     "Create git tag")))

  ((task . "build-package")
   (steps
    ("cd claude-gecko-browser-extension"
     "zip -r claude-gecko-browser-extension.zip . -x '*.git*' -x '*.scm'"
     "Verify zip contents"))
   (notes . "Firefox Add-ons accepts zip files"))

  ((task . "submit-to-amo")
   (steps
    ("Go to https://addons.mozilla.org/developers/"
     "Log in or create account"
     "Click 'Submit a New Add-on'"
     "Upload zip file"
     "Fill in listing details"
     "Submit for review"))
   (notes . "AMO = addons.mozilla.org")))

 (troubleshooting
  ((issue . "Extension won't load")
   (causes
    ("Invalid manifest.json syntax"
     "Missing required files"
     "Permissions issues"))
   (solutions
    ("Check browser console for errors"
     "Validate manifest.json"
     "Ensure all paths in manifest exist")))

  ((issue . "API calls failing")
   (causes
    ("Invalid API key"
     "API key not configured"
     "CORS issues"
     "Rate limiting"))
   (solutions
    ("Check API key in settings"
     "Verify key starts with 'sk-ant-'"
     "Check console for specific error"
     "Wait and retry if rate limited")))

  ((issue . "Context menu not appearing")
   (causes
    ("Content script not loaded"
     "Page has restrictive CSP"
     "Extension needs reload"))
   (solutions
    ("Reload extension in about:debugging"
     "Try on a different page"
     "Check console for CSP errors")))

  ((issue . "Overlay not showing")
   (causes
    ("Content script blocked"
     "CSS conflicts with page"
     "z-index issues"))
   (solutions
    ("Check console for errors"
     "Inspect element to verify overlay exists"
     "Check if page CSS overrides ours"))))

 (maintenance
  ((task . "update-dependencies")
   (frequency . "monthly")
   (steps
    ("Check Anthropic API for changes"
     "Check Firefox WebExtensions API updates"
     "Update API version header if needed")))

  ((task . "security-review")
   (frequency . "quarterly")
   (steps
    ("Review permissions in manifest"
     "Check for new security best practices"
     "Audit API key handling"
     "Review CSP settings")))

  ((task . "user-feedback")
   (frequency . "ongoing")
   (steps
    ("Monitor GitHub issues"
     "Check Firefox Add-ons reviews"
     "Prioritize and address feedback")))))
