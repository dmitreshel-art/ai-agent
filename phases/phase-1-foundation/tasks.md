# Phase 1: Foundation - Задачи

## Чеклист

- [ ] **1.1** Создать структуру директорий
  - [ ] src/
  - [ ] src/llm/
  - [ ] src/planner/
  - [ ] src/executor/
  - [ ] src/reflection/
  - [ ] src/memory/
  - [ ] src/tools/
  - [ ] config/
  - [ ] tests/
  - [ ] data/
  - [ ] memory/
  - [ ] logs/

- [ ] **1.2** Создать __init__.py файлы
  - [ ] src/__init__.py
  - [ ] src/llm/__init__.py
  - [ ] src/planner/__init__.py
  - [ ] src/executor/__init__.py
  - [ ] src/reflection/__init__.py
  - [ ] src/memory/__init__.py
  - [ ] src/tools/__init__.py
  - [ ] tests/__init__.py

- [ ] **1.3** Создать requirements.txt
  - [ ] python>=3.11
  - [ ] pyyaml>=6.0
  - [ ] loguru>=0.7.0
  - [ ] pydantic>=2.0

- [ ] **1.4** Создать pyproject.toml
  - [ ] Metadata (name, version, description)
  - [ ] Dependencies
  - [ ] Python version requirement

- [ ] **1.5** Создать config/config.yaml
  - [ ] agent section
  - [ ] loop settings
  - [ ] llm settings
  - [ ] logging settings

- [ ] **1.6** Создать Dockerfile
  - [ ] Base image python:3.11-slim
  - [ ] Working directory /app
  - [ ] Requirements installation
  - [ ] Volume mounts
  - [ ] Expose port 8000

- [ ] **1.7** Создать docker-compose.yml
  - [ ] agent service
  - [ ] Volume mounts
  - [ ] Environment variables

- [ ] **1.8** Настроить virtual environment
  - [ ] python -m venv venv
  - [ ] source venv/bin/activate
  - [ ] pip install -r requirements.txt

- [ ] **1.9** Проверить что всё работает
  - [ ] python -c "import src; print(src.__version__)"
  - [ ] docker build . --tag ai-agent:test

## Порядок выполнения

1. Создать все директории
2. Создать __init__.py файлы
3. Написать requirements.txt
4. Написать pyproject.toml
5. Написать config.yaml
6. Написать Dockerfile
7. Написать docker-compose.yml
8. Настроить venv и установить зависимости
9. Протестировать (импорт + docker build)

## Критерии завершения

- Структура директорий соответствует design
- Все __init__.py файлы созданы
- requirements.txt содержит базовые зависимости
- Dockerfile собирается без ошибок
- Docker Compose запускается без ошибок
