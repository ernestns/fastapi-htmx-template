default:
  @just --list

install:
  uv sync

run:
  uv run uvicorn app.main:app --reload

format:
  uvx ruff check --fix && uvx ruff format

pip-compile:
  uv pip compile pyproject.toml -o requirements.txt
