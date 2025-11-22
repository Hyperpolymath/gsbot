.PHONY: help install test lint format clean run load-data

help: ## Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Available targets:'
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'

install: ## Install dependencies
	pip install -r requirements.txt
	pip install -e .

install-dev: ## Install development dependencies
	pip install -r requirements.txt
	pip install -e ".[dev]"

test: ## Run tests
	pytest tests/ -v

test-cov: ## Run tests with coverage
	pytest tests/ -v --cov=src --cov-report=term-missing --cov-report=html

lint: ## Run linting checks
	black --check src/ tests/
	flake8 src/ tests/ --max-line-length=120 --extend-ignore=E203,W503
	mypy src/ --ignore-missing-imports || true
	pylint src/ --max-line-length=120 --disable=C0111,R0903 || true

format: ## Format code with black
	black src/ tests/

clean: ## Clean up generated files
	find . -type d -name __pycache__ -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name "*.egg-info" -exec rm -rf {} + 2>/dev/null || true
	find . -type f -name "*.pyc" -delete
	rm -rf .pytest_cache .mypy_cache .coverage htmlcov dist build

run: ## Run the bot
	python src/bot/main.py

load-data: ## Load sample data into database
	python scripts/load_fixtures.py

init: install load-data ## Initialize project (install + load data)
	@echo "✅ Project initialized! Edit .env and then run 'make run'"
