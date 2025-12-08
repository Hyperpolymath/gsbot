;;; STATE.scm - Garment Sustainability Bot
;;; Checkpoint file for AI conversation continuity
;;; Format: Guile Scheme (STATE.scm v2.0)
;;;
;;; Usage: Download at session end, upload at session start
;;; to maintain project context across Claude sessions.

(define state
  '((metadata
     (format-version "2.0")
     (schema-date "2025-12-08")
     (created "2025-12-08T00:00:00Z")
     (last-updated "2025-12-08")
     (generator "claude-opus-4")
     (project-name "gsbot")
     (project-description "Discord bot promoting sustainability in the garment and fashion industry"))

    ;;; ==========================================================
    ;;; CURRENT POSITION
    ;;; ==========================================================
    (current-position
     (phase "early-mvp")
     (completion-percentage 65)
     (summary "Core bot functionality implemented with Discord.py framework.
               Database models, sustainability scoring, and command structure complete.
               Ready for real-world testing and data expansion.")

     (implemented-features
      ((name "discord-bot-framework")
       (status complete)
       (description "Discord.py bot with cog-based command structure"))
      ((name "data-models")
       (status complete)
       (description "SQLAlchemy ORM models: Material, Garment, Brand, User"))
      ((name "sustainability-scoring")
       (status complete)
       (description "Multi-factor scoring algorithm for materials and garments"))
      ((name "core-commands")
       (status complete)
       (commands (!sustainability !impact !alternatives !care !brands !compare !tips !search)))
      ((name "user-system")
       (status complete)
       (description "User profiles, points, levels, ranks, leaderboards"))
      ((name "admin-commands")
       (status complete)
       (commands (!loaddata !stats !announce)))
      ((name "test-suite")
       (status complete)
       (coverage "unit and integration tests with pytest"))
      ((name "ci-cd-pipeline")
       (status complete)
       (description "GitHub Actions: lint, type-check, test across Python 3.9-3.12"))
      ((name "documentation")
       (status complete)
       (files (README.md CONTRIBUTING.md CLAUDE.md SECURITY.md CODE_OF_CONDUCT.md))))

     (tech-stack
      (language "Python 3.9+")
      (bot-framework "discord.py 2.3+")
      (database "SQLite + SQLAlchemy ORM")
      (async "asyncio + aiohttp")
      (testing "pytest + pytest-asyncio")
      (quality "black, flake8, mypy, pylint")))

    ;;; ==========================================================
    ;;; ROUTE TO MVP V1
    ;;; ==========================================================
    (mvp-v1-roadmap
     (target-completion "MVP v1.0")
     (priority-order (critical high medium low))

     (milestones
      ((id "M1")
       (name "data-population")
       (priority critical)
       (status in-progress)
       (completion 40)
       (description "Expand sustainability data with real-world verified sources")
       (tasks
        ("Curate comprehensive material database (50+ materials)")
        ("Add verified sustainability data from Higg Index, Good On You")
        ("Populate brand database with certifications and ratings")
        ("Create garment templates for common clothing types")))

      ((id "M2")
       (name "real-world-testing")
       (priority critical)
       (status pending)
       (completion 0)
       (description "Deploy bot to test Discord servers")
       (tasks
        ("Set up staging Discord server")
        ("Invite beta testers")
        ("Collect feedback on UX and accuracy")
        ("Iterate on command responses")))

      ((id "M3")
       (name "data-source-integration")
       (priority high)
       (status pending)
       (completion 0)
       (description "Connect to external sustainability APIs")
       (tasks
        ("Research API availability (Good On You, Fashion Revolution)")
        ("Implement API clients with rate limiting")
        ("Create data sync pipeline")
        ("Add caching layer for API responses")))

      ((id "M4")
       (name "error-handling-polish")
       (priority high)
       (status pending)
       (completion 20)
       (description "Improve error handling and user feedback")
       (tasks
        ("Add graceful error messages for edge cases")
        ("Implement input validation for all commands")
        ("Add help hints for failed queries")
        ("Create user-friendly error embeds")))

      ((id "M5")
       (name "deployment-infrastructure")
       (priority high)
       (status in-progress)
       (completion 50)
       (description "Production deployment setup")
       (tasks
        ("Docker containerization (complete)")
        ("Docker Compose configuration (complete)")
        ("Environment variable management (complete)")
        ("Hosting platform selection (pending)")
        ("Database migration to PostgreSQL for production (pending)")))))

    ;;; ==========================================================
    ;;; KNOWN ISSUES
    ;;; ==========================================================
    (issues
     (blockers
      ((id "B1")
       (severity critical)
       (title "No production deployment target")
       (description "Bot has not been deployed to any production environment.
                     Need to select hosting (Railway, Fly.io, self-hosted VPS)")
       (impact "Cannot gather real user feedback")
       (resolution "Select and configure hosting platform"))

      ((id "B2")
       (severity high)
       (title "Limited sustainability data sources")
       (description "Sample data in fixtures is illustrative, not authoritative.
                     Need verified data from sustainability databases.")
       (impact "Scoring may not reflect real-world sustainability metrics")
       (resolution "Integrate with Higg Index, Good On You API, or curate data manually")))

     (bugs
      ((id "BUG1")
       (severity medium)
       (title "Type annotation in compare_materials")
       (file "src/services/sustainability.py:118")
       (description "Return type uses 'any' instead of 'Any' from typing")
       (status open)))

     (technical-debt
      ((id "TD1")
       (area "database")
       (description "Using SQLite for development; needs PostgreSQL for production scale"))
      ((id "TD2")
       (area "caching")
       (description "Basic cachetools in place; may need Redis for distributed deployment"))
      ((id "TD3")
       (area "rate-limiting")
       (description "No rate limiting on bot commands; could be abused"))))

    ;;; ==========================================================
    ;;; QUESTIONS FOR STAKEHOLDER
    ;;; ==========================================================
    (questions
     (strategic
      ((id "Q1")
       (question "What is the target audience for MVP launch?")
       (options ("Discord sustainability communities"
                 "Fashion industry professionals"
                 "General consumers"
                 "Educational institutions"))
       (impact "Determines data priority and command UX"))

      ((id "Q2")
       (question "Should we prioritize brand ratings or material analysis for MVP?")
       (context "Both are implemented but data sourcing differs significantly")
       (impact "Determines external API integration priority"))

      ((id "Q3")
       (question "What hosting budget is available for deployment?")
       (options ("Free tier (Fly.io, Railway)"
                 "$5-20/month (small VPS)"
                 "$50+/month (managed services)"))
       (impact "Determines PostgreSQL vs SQLite, Redis necessity")))

     (technical
      ((id "Q4")
       (question "Should slash commands (/) replace prefix commands (!) for Discord?")
       (context "Discord is deprecating prefix commands for verified bots")
       (impact "Requires refactor of command handlers"))

      ((id "Q5")
       (question "Is multi-platform support desired? (Slack, Telegram)")
       (context "Current architecture is Discord-specific")
       (impact "Major refactor needed for abstraction layer"))

      ((id "Q6")
       (question "What data retention policy for user tracking?")
       (context "Currently stores user preferences and points indefinitely")
       (impact "GDPR compliance, database growth")))

     (data
      ((id "Q7")
       (question "Can we use Good On You or Higg Index data?")
       (context "Need to verify API access and licensing terms")
       (impact "Quality of sustainability scores"))

      ((id "Q8")
       (question "Should we allow community-contributed data?")
       (context "Could expand coverage but needs verification workflow")
       (impact "Data quality, moderation needs"))))

    ;;; ==========================================================
    ;;; LONG TERM ROADMAP
    ;;; ==========================================================
    (long-term-roadmap
     (vision "Comprehensive platform for sustainable fashion decisions,
              enabling consumers to make informed choices and track their
              environmental impact through wardrobe management.")

     (phases
      ((phase "v1.x")
       (name "Foundation")
       (timeline "post-mvp")
       (goals
        ("Stable production deployment")
        ("Verified sustainability database (100+ materials, 200+ brands)")
        ("Growing Discord server community")
        ("Basic analytics dashboard"))
       (features
        ("Web dashboard for bot statistics")
        ("Expanded brand database with certifications")
        ("Seasonal sustainability tips")
        ("Guild-specific leaderboards")))

      ((phase "v2.x")
       (name "Intelligence")
       (timeline "future")
       (goals
        ("Personalized recommendations")
        ("Image-based garment identification")
        ("Integration with shopping platforms"))
       (features
        ((name "ml-recommendations")
         (description "Machine learning for personalized sustainable alternatives")
         (dependencies ("User preference data" "Purchase history opt-in")))
        ((name "image-recognition")
         (description "Upload garment photos for material identification")
         (dependencies ("Computer vision model" "Material training dataset")))
        ((name "e-commerce-integration")
         (description "Browser extension or API for shopping sites")
         (dependencies ("Partner relationships" "Real-time API")))))

      ((phase "v3.x")
       (name "Ecosystem")
       (timeline "long-term")
       (goals
        ("Multi-platform presence")
        ("Wardrobe management system")
        ("Carbon footprint tracking")
        ("Community marketplace"))
       (features
        ((name "wardrobe-tracker")
         (description "Digital closet inventory with wear tracking")
         (value "Cost-per-wear calculation, outfit suggestions"))
        ((name "carbon-calculator")
         (description "Personal fashion carbon footprint over time")
         (value "Goal setting, progress visualization"))
        ((name "swap-marketplace")
         (description "Facilitated clothing swaps between users")
         (value "Circular fashion, community building"))
        ((name "multi-platform")
         (description "Slack, Telegram, web app, mobile app")
         (dependencies ("Platform abstraction layer" "Shared API backend")))))))

    ;;; ==========================================================
    ;;; SESSION CONTEXT
    ;;; ==========================================================
    (session
     (conversation-id "gsbot-state-init")
     (started "2025-12-08")
     (context "Initial STATE.scm creation for project checkpoint"))

    ;;; ==========================================================
    ;;; CRITICAL NEXT ACTIONS
    ;;; ==========================================================
    (critical-next-actions
     ((priority 1)
      (action "Select and configure production hosting platform")
      (blocked-by "Q3 - budget decision")
      (category deployment))

     ((priority 2)
      (action "Expand material database with verified sustainability data")
      (blocked-by "Q7 - data source licensing")
      (category data))

     ((priority 3)
      (action "Set up staging Discord server for beta testing")
      (blocked-by none)
      (category testing))

     ((priority 4)
      (action "Implement Discord slash commands (/) migration")
      (blocked-by "Q4 - strategic decision")
      (category development))

     ((priority 5)
      (action "Add rate limiting to bot commands")
      (blocked-by none)
      (category security)))

    ;;; ==========================================================
    ;;; FILES MODIFIED THIS SESSION
    ;;; ==========================================================
    (files-modified
     ((file "STATE.scm")
      (action created)
      (purpose "Initial project checkpoint file")))))

;;; ==========================================================
;;; QUICK REFERENCE - Query Functions
;;; ==========================================================
;;;
;;; (get-current-position state)     -> Current development status
;;; (get-mvp-roadmap state)          -> Route to MVP v1
;;; (get-blockers state)             -> Critical blocking issues
;;; (get-questions state)            -> Open questions for stakeholder
;;; (get-next-actions state)         -> Prioritized action list
;;; (get-roadmap state)              -> Long-term vision and phases
;;;
;;; Export: Download this file at session end
;;; Import: Upload this file when starting new Claude session
;;;
;;; ==========================================================
