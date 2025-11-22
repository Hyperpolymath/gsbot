# Security Policy

## Supported Versions

We release patches for security vulnerabilities. Currently supported versions:

| Version | Supported          |
| ------- | ------------------ |
| 0.1.x   | :white_check_mark: |

## Reporting a Vulnerability

**Please do not report security vulnerabilities through public GitHub issues.**

Instead, please report them via one of the following methods:

### Preferred Method: GitHub Security Advisories

1. Go to https://github.com/Hyperpolymath/gsbot/security/advisories/new
2. Click "Report a vulnerability"
3. Fill out the form with as much detail as possible

### Alternative Method: Private Email

If you cannot use GitHub Security Advisories, please email the maintainers directly (contact information in MAINTAINERS.md).

## What to Include

When reporting a vulnerability, please include:

- **Description**: Clear description of the vulnerability
- **Impact**: What can an attacker do?
- **Steps to Reproduce**: Detailed steps to reproduce the issue
- **Proof of Concept**: Code or screenshots demonstrating the vulnerability
- **Suggested Fix**: If you have ideas for how to fix it
- **Disclosure Timeline**: When you plan to publicly disclose (if applicable)

## Response Timeline

- **Initial Response**: Within 48 hours
- **Status Update**: Within 7 days
- **Fix Timeline**: Depends on severity
  - Critical: Within 7 days
  - High: Within 14 days
  - Medium: Within 30 days
  - Low: Next release cycle

## Severity Classification

We use CVSS 3.1 scoring:

- **Critical** (9.0-10.0): Remote code execution, privilege escalation
- **High** (7.0-8.9): Data exposure, authentication bypass
- **Medium** (4.0-6.9): Limited data exposure, DoS
- **Low** (0.1-3.9): Information disclosure, minor issues

## Security Measures

### Current Protections

1. **Input Validation**: All user inputs are validated
2. **SQL Injection**: SQLAlchemy ORM prevents SQL injection
3. **Dependencies**: Regular security scanning with `safety`
4. **Secrets**: No hardcoded secrets, environment variable usage
5. **Permissions**: Command-level permission checks
6. **Rate Limiting**: Discord.py built-in rate limiting
7. **Error Handling**: Errors logged, not exposed to users

### Development Practices

- **Code Review**: All changes reviewed before merge
- **Automated Testing**: CI/CD pipeline with security checks
- **Dependency Updates**: Regular updates and security scanning
- **Least Privilege**: Minimal permissions requested
- **Secure Defaults**: Secure configuration by default

## Security Checklist for Contributors

Before submitting code, ensure:

- [ ] No secrets or credentials in code
- [ ] Input validation for all user data
- [ ] No SQL injection vulnerabilities
- [ ] No command injection vulnerabilities
- [ ] No XSS vulnerabilities (in embeds/messages)
- [ ] Error messages don't leak sensitive info
- [ ] Dependencies are up to date
- [ ] Tests include security test cases
- [ ] Documentation updated with security notes

## Known Security Considerations

### Discord Token

- **Risk**: If token is leaked, bot can be impersonated
- **Mitigation**: Store in `.env` (gitignored), rotate if compromised
- **Detection**: Monitor for unauthorized bot activity

### Database Access

- **Risk**: Unauthorized database access
- **Mitigation**: File permissions, environment variables
- **Production**: Use PostgreSQL with authentication

### User Data

- **Risk**: User Discord IDs and preferences stored
- **Mitigation**: Minimal data collection, no PII beyond Discord ID
- **GDPR**: Users can request data deletion (contact maintainers)

### Command Injection

- **Risk**: Malicious input in commands
- **Mitigation**: Input validation, parameterized queries
- **Testing**: Fuzzing with malicious inputs

## Vulnerability Disclosure Policy

### Responsible Disclosure

We follow responsible disclosure practices:

1. **Report received**: Acknowledged within 48 hours
2. **Validation**: We validate and reproduce the issue
3. **Fix developed**: We develop and test a fix
4. **Coordinated disclosure**: We coordinate disclosure timeline with reporter
5. **Public disclosure**: After fix is released (90 days max)
6. **Credit**: Reporter credited in CHANGELOG and security advisory

### Public Disclosure Timeline

- **Agreed timeline**: We work with reporter on disclosure date
- **Maximum**: 90 days from initial report
- **Early disclosure**: If actively exploited in wild
- **Delayed disclosure**: Only if fix is complex and justified

## Security Updates

Security updates are released as:

- **Patch releases**: For supported versions
- **Security advisories**: Published on GitHub
- **CHANGELOG entries**: Marked with [SECURITY] tag
- **Notifications**: GitHub Security Advisories subscribers notified

## Bug Bounty

Currently, we do not offer a bug bounty program. However:

- Security researchers are credited in CHANGELOG
- Significant findings acknowledged in SECURITY.md
- We deeply appreciate responsible disclosure

## Acknowledgments

We thank the following security researchers for responsible disclosure:

(List will be updated as vulnerabilities are reported and fixed)

## Security Hall of Fame

Contributors who have helped improve security:

(To be populated)

## Contact

- **Security Team**: See MAINTAINERS.md
- **Security Advisories**: https://github.com/Hyperpolymath/gsbot/security/advisories
- **General Issues**: https://github.com/Hyperpolymath/gsbot/issues (for non-security bugs)

## Additional Resources

- [OWASP Top 10](https://owasp.org/www-project-top-ten/)
- [CWE Top 25](https://cwe.mitre.org/top25/)
- [Python Security Best Practices](https://python.readthedocs.io/en/stable/library/security_warnings.html)
- [Discord Bot Security](https://discord.com/developers/docs/topics/oauth2#bot-authorization-flow)

## Legal

This security policy is part of the Garment Sustainability Bot project and is licensed under the Mozilla Public License 2.0.

---

**Last Updated**: 2025-11-22
**Version**: 1.0
**Next Review**: 2026-06-01
