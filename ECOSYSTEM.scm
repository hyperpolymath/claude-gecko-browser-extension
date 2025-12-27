;; SPDX-License-Identifier: MIT
;; Claude for Gecko - Ecosystem Position

(ecosystem
 (version . "1.0")
 (name . "claude-gecko-browser-extension")
 (type . browser-extension)
 (purpose . "Bring Claude AI to Firefox and Gecko-based browsers")

 (position-in-ecosystem
  (category . "AI Integration Tools")
  (niche . "Browser Extensions for LLM Access")
  (differentiator . "Only Claude extension for non-Chromium browsers"))

 (related-projects
  ;; Sibling - Same author/org
  ((name . "hyperpolymath ecosystem")
   (relationship . sibling-standard)
   (notes . "Part of hyperpolymath's tool suite"))

  ;; Upstream - Things we depend on
  ((name . "Anthropic Claude API")
   (relationship . upstream-dependency)
   (url . "https://docs.anthropic.com")
   (notes . "Core AI backend - we are a thin client"))

  ((name . "Firefox WebExtensions API")
   (relationship . upstream-dependency)
   (url . "https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions")
   (notes . "Browser extension platform"))

  ;; Inspiration - Things we learned from
  ((name . "Claude for Chrome (Official)")
   (relationship . inspiration)
   (url . "https://claude.com/chrome")
   (notes . "Official extension - we fill the Gecko gap"))

  ;; Potential consumers - Who might use us
  ((name . "Firefox users")
   (relationship . potential-consumer)
   (notes . "Primary audience - privacy-conscious users"))

  ((name . "LibreWolf users")
   (relationship . potential-consumer)
   (notes . "Hardened Firefox fork users"))

  ((name . "Tor Browser users")
   (relationship . potential-consumer)
   (notes . "Privacy/anonymity focused users")))

 (what-this-is
  ("A Firefox/Gecko browser extension"
   "An unofficial Claude API client"
   "A popup chat interface for Claude"
   "A context menu integration for text analysis"
   "A bridge between Gecko browsers and Claude AI"))

 (what-this-is-not
  ("An official Anthropic product"
   "A replacement for the full Claude web interface"
   "A browser automation tool (no computer use)"
   "A data collection or analytics tool"
   "A proxy or middleware service")))
