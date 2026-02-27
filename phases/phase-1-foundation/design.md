# Phase 1: Foundation - Дизайн

## Структура директорий

```
ai-agent/
├── src/                    # Исходный код
│   └── __init__.py       # Package marker
├── config/                # Конфигурация
│   └── config.yaml       # Default config
├── tests/                 # Тесты
│   └── __init__.py
├── data/                 # Пользовательские данные (создаётся при запуске)
├── memory/               # База данных памяти (создаётся при запуске)
├── logs/                 # Логи (создаётся при запуске)
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
├── pyproject.toml
└── README.md
```

## Базовая конфигурация (config.yaml)

```yaml
agent:
  name: "AI Agent"
  version: "0.1.0"
  
  loop:
    max_iterations: 10
    max_plan_steps: 20
    timeout_seconds: 300

  llm:
    default_provider: "ollama"
  
  logging:
    level: "INFO"
    format: "%(asctime)s - %(name)s - %(levelname)s - %(message)s"

docker:
  image: "ai-agent:latest"
  port: 8000
```

## Требования (requirements.txt)

```
# Core
python>=3.11
pyyaml>=6.0

# Logging
loguru>=0.7.0

# Type checking
pydantic>=2.0
```

## Dockerfile

```dockerfile
FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY src/ ./src/
COPY config/ ./config/

RUN mkdir -p /app/data /app/memory /app/logs

EXPOSE 8000

CMD ["python", "-m", "src.agent"]
```

## Docker Compose

```yaml
services:
  agent:
    build: .
    ports:
      - "8000:8000"
    volumes:
      - ./data:/app/data
      - ./memory:/app/memory
    environment:
      - OLLAMA_BASE_URL=http://host.docker.internal:11434
```

## Python Package Structure

```python
# src/__init__.py
"""AI Agent - Modern AI Agent with OODA-Loop architecture"""

__version__ = "0.1.0"
```

## Именование

- Python packages: snake_case (agent_core, tool_registry)
- Classes: PascalCase (ModernAIAgent, Planner)
- Constants: UPPER_SNAKE_CASE (MAX_ITERATIONS)
- Files: snake_case.py (agent.py, memory.py)
