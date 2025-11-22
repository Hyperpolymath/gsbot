# 🌱 Garment Sustainability Bot

A Discord bot that promotes sustainability in the garment and fashion industry by providing insights, tracking, and actionable information about sustainable fashion practices.

[![CI/CD Pipeline](https://github.com/Hyperpolymath/gsbot/actions/workflows/main.yml/badge.svg)](https://github.com/Hyperpolymath/gsbot/actions/workflows/main.yml)
[![License: MPL 2.0](https://img.shields.io/badge/License-MPL%202.0-brightgreen.svg)](https://opensource.org/licenses/MPL-2.0)
[![Python 3.9+](https://img.shields.io/badge/python-3.9+-blue.svg)](https://www.python.org/downloads/)

## ✨ Features

- **Sustainability Scoring**: Get environmental impact scores for different garments and materials
- **Material Analysis**: Detailed information about fabric materials and their environmental footprint
- **Brand Database**: Search and compare sustainable fashion brands
- **Care Instructions**: Learn how to extend garment life through proper care
- **Sustainable Alternatives**: Find eco-friendly alternatives to conventional items
- **User Tracking**: Gamification with points, levels, and leaderboards
- **Tips & Education**: Daily sustainability tips and best practices

## 🚀 Quick Start

### Prerequisites

- Python 3.9 or higher
- Discord Bot Token ([Create one here](https://discord.com/developers/applications))
- pip (Python package manager)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/Hyperpolymath/gsbot.git
   cd gsbot
   ```

2. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   pip install -e .
   ```

3. **Set up environment variables**
   ```bash
   cp .env.example .env
   ```

   Edit `.env` and add your Discord bot token:
   ```env
   DISCORD_TOKEN=your_discord_bot_token_here
   DISCORD_PREFIX=!
   ```

4. **Initialize the database and load sample data**
   ```bash
   python scripts/load_fixtures.py
   ```

5. **Run the bot**
   ```bash
   python src/bot/main.py
   ```

## 📖 Usage

### Basic Commands

| Command | Description | Example |
|---------|-------------|---------|
| `!sustainability <garment>` | Get sustainability score for a garment | `!sustainability organic cotton t-shirt` |
| `!impact <material>` | View environmental impact of a material | `!impact linen` |
| `!alternatives <garment>` | Find sustainable alternatives | `!alternatives polyester jacket` |
| `!care <garment>` | Get care instructions | `!care wool sweater` |
| `!brands [name]` | Search sustainable brands or view top-rated | `!brands patagonia` |
| `!compare <mat1> <mat2>` | Compare two materials | `!compare cotton polyester` |
| `!tips` | Get sustainability tips | `!tips` |
| `!search <query>` | Search garments and materials | `!search organic` |

### User Commands

| Command | Description |
|---------|-------------|
| `!profile` | View your sustainability profile and stats |
| `!leaderboard` | View the top sustainability champions |
| `!setpreference <type> <value>` | Set your preferences (materials, budget, priority) |

### Admin Commands

| Command | Description |
|---------|-------------|
| `!loaddata` | Load sample data into the database |
| `!stats` | View bot statistics |
| `!announce <message>` | Send announcement to all guilds |

## 🏗️ Project Structure

```
gsbot/
├── src/                      # Source code
│   ├── bot/                 # Discord bot implementation
│   │   ├── cogs/           # Command groups
│   │   ├── bot.py          # Main bot class
│   │   └── main.py         # Entry point
│   ├── models/              # Data models
│   │   ├── material.py     # Material model
│   │   ├── garment.py      # Garment model
│   │   ├── brand.py        # Brand model
│   │   └── user.py         # User model
│   ├── services/            # Business logic
│   │   ├── database.py     # Database operations
│   │   └── sustainability.py # Sustainability analysis
│   ├── config/              # Configuration
│   │   └── settings.py     # Settings management
│   └── utils/               # Utilities
│       └── logger.py       # Logging setup
├── tests/                   # Tests
│   ├── unit/               # Unit tests
│   └── integration/        # Integration tests
├── data/                    # Data files
│   └── fixtures/           # Sample data
├── scripts/                 # Utility scripts
│   └── load_fixtures.py    # Load sample data
├── .github/                 # GitHub Actions
│   └── workflows/          # CI/CD pipelines
├── requirements.txt         # Dependencies
├── setup.py                # Package setup
├── pytest.ini              # Test configuration
└── README.md               # This file
```

## 🧪 Testing

Run the test suite:

```bash
# Run all tests
pytest

# Run with coverage
pytest --cov=src --cov-report=term-missing

# Run specific test file
pytest tests/unit/test_models.py

# Run with verbose output
pytest -v
```

## 🔧 Development

### Code Quality

The project uses several tools to maintain code quality:

```bash
# Format code
black src/ tests/

# Lint code
flake8 src/ tests/ --max-line-length=120

# Type checking
mypy src/ --ignore-missing-imports

# Code quality analysis
pylint src/
```

### Adding New Data

To add new materials, garments, or brands, edit `scripts/load_fixtures.py` and run:

```bash
python scripts/load_fixtures.py
```

## 📊 Database Schema

The bot uses SQLite with SQLAlchemy ORM. Main models:

- **Material**: Fabric materials with environmental metrics
- **Garment**: Clothing items with sustainability scores
- **Brand**: Fashion brands with ratings
- **User**: Discord users with tracking and gamification

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes with tests
4. Run tests and linting
5. Commit your changes (`git commit -m 'Add amazing feature'`)
6. Push to the branch (`git push origin feature/amazing-feature`)
7. Open a Pull Request

### Commit Message Format

Follow conventional commits:
- `feat:` New feature
- `fix:` Bug fix
- `docs:` Documentation changes
- `style:` Code style changes
- `refactor:` Code refactoring
- `test:` Test changes
- `chore:` Maintenance tasks

## 📝 License

This project is licensed under the Mozilla Public License 2.0 - see the [LICENSE](LICENSE) file for details.

## 🌍 Sustainability Focus

This bot educates users about:

- **Materials**: Environmental impact of cotton, polyester, linen, hemp, etc.
- **Production**: Water usage, energy consumption, chemical usage
- **Lifecycle**: Durability, care, and end-of-life considerations
- **Brands**: Ethical and sustainable fashion brands
- **Practices**: Repair, reuse, recycling, and conscious consumption

## 📚 Resources

- [Fashion Revolution](https://www.fashionrevolution.org/)
- [Good On You](https://goodonyou.eco/)
- [Sustainable Apparel Coalition](https://apparelcoalition.org/)
- [Ellen MacArthur Foundation](https://ellenmacarthurfoundation.org/)

## 🐛 Issues & Support

If you encounter any issues or have questions:

1. Check the [Issues](https://github.com/Hyperpolymath/gsbot/issues) page
2. Create a new issue with detailed information
3. For general questions, use the Discussions tab

## 🎯 Roadmap

- [ ] Web dashboard for statistics
- [ ] Machine learning for personalized recommendations
- [ ] Image recognition for garment identification
- [ ] Integration with e-commerce platforms
- [ ] Multi-language support
- [ ] Carbon footprint calculator
- [ ] Wardrobe tracking features

## 👥 Authors

- Garment Sustainability Bot Contributors

## 🙏 Acknowledgments

- All contributors to sustainable fashion data sources
- The Discord.py community
- Everyone working towards a more sustainable fashion industry

---

**Made with 💚 for a more sustainable future**
