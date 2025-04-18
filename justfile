default:
  @just --list

install:
  uv sync

run:
  uv run uvicorn main:app --reload

format:
  uvx ruff check --fix && uvx ruff format
