;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;; ECOSYSTEM.scm — gsbot

(ecosystem
  (version "1.0.0")
  (name "gsbot")
  (type "project")
  (purpose "A Discord bot that promotes sustainability in the garment and fashion industry by providing insights, tracking, and actionable information about sustainable fashion practices.")

  (position-in-ecosystem
    "Part of hyperpolymath ecosystem. Follows RSR guidelines.")

  (related-projects
    (project (name "rhodium-standard-repositories")
             (url "https://github.com/hyperpolymath/rhodium-standard-repositories")
             (relationship "standard")))

  (what-this-is "A Discord bot that promotes sustainability in the garment and fashion industry by providing insights, tracking, and actionable information about sustainable fashion practices.")
  (what-this-is-not "- NOT exempt from RSR compliance"))
