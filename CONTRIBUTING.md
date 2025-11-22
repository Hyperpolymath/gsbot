# Contributing to Garment Sustainability Bot

Thank you for your interest in contributing to the Garment Sustainability Bot! This document provides guidelines and instructions for contributing.

## Code of Conduct

By participating in this project, you agree to maintain a respectful and inclusive environment for all contributors.

## How to Contribute

### Reporting Bugs

If you find a bug, please create an issue with:

- A clear, descriptive title
- Steps to reproduce the problem
- Expected vs actual behavior
- Your environment (OS, Python version, etc.)
- Any relevant logs or screenshots

### Suggesting Features

Feature suggestions are welcome! Please create an issue with:

- A clear description of the feature
- Why it would be useful
- Potential implementation approach
- Any relevant examples or mockups

### Pull Requests

1. **Fork the repository** and create a branch from `main`

2. **Set up your development environment**
   ```bash
   git clone https://github.com/YOUR_USERNAME/gsbot.git
   cd gsbot
   make install-dev
   ```

3. **Make your changes**
   - Write clear, readable code
   - Follow the existing code style
   - Add tests for new functionality
   - Update documentation as needed

4. **Test your changes**
   ```bash
   make test        # Run tests
   make lint        # Check code quality
   make format      # Format code
   ```

5. **Commit your changes**
   - Use conventional commit messages
   - Keep commits focused and atomic
   - Write clear commit messages

6. **Push and create a pull request**
   - Provide a clear description of changes
   - Link any related issues
   - Ensure CI/CD checks pass

## Development Guidelines

### Code Style

- Follow PEP 8 for Python code
- Use type hints where appropriate
- Maximum line length: 120 characters
- Use meaningful variable and function names
- Add docstrings to all public functions and classes

### Testing

- Write unit tests for new functionality
- Maintain or improve test coverage
- Test edge cases and error conditions
- Use pytest fixtures for common setup

### Documentation

- Update README.md if adding user-facing features
- Add docstrings to new functions and classes
- Update CLAUDE.md for development guidance
- Include examples in documentation

### Commit Messages

Follow conventional commits format:

```
type(scope): description

[optional body]

[optional footer]
```

Types:
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, etc.)
- `refactor`: Code refactoring
- `test`: Test changes
- `chore`: Maintenance tasks
- `perf`: Performance improvements

Examples:
```
feat(bot): add multi-language support
fix(database): resolve connection pooling issue
docs(readme): update installation instructions
test(models): add tests for Material model
```

## Project Structure

```
src/
├── bot/           # Discord bot implementation
├── models/        # Data models (Material, Garment, Brand, User)
├── services/      # Business logic
├── config/        # Configuration management
└── utils/         # Utility functions

tests/
├── unit/          # Unit tests
└── integration/   # Integration tests
```

## Adding New Features

### Adding a New Bot Command

1. Create or modify a cog in `src/bot/cogs/`
2. Use the `@commands.command()` decorator
3. Add error handling
4. Update user points if applicable
5. Add tests in `tests/`
6. Update README.md with command documentation

Example:
```python
@commands.command(name="mycommand")
async def my_command(self, ctx: commands.Context, arg: str):
    """Command description."""
    async with ctx.typing():
        db = next(get_db())
        try:
            # Your logic here
            await ctx.send("Response")
        except Exception as e:
            logger.error(f"Error: {e}")
            await ctx.send("❌ An error occurred")
        finally:
            db.close()
```

### Adding New Data

To add materials, garments, or brands:

1. Edit `scripts/load_fixtures.py`
2. Add data to appropriate function
3. Run `make load-data`
4. Test with bot commands

### Adding Database Models

1. Create model in appropriate file in `src/models/`
2. Inherit from `BaseModel`
3. Add service methods in `src/services/database.py`
4. Add tests in `tests/unit/test_models.py`
5. Update documentation

## Getting Help

- Check existing issues and documentation
- Ask questions in GitHub Discussions
- Reach out to maintainers if needed

## License

By contributing, you agree that your contributions will be licensed under the Mozilla Public License 2.0.

## Recognition

Contributors will be recognized in:
- GitHub contributors list
- Project documentation
- Release notes

Thank you for contributing to sustainable fashion education! 🌱
