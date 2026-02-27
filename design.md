# Design: AI Agent

## Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                    Modern AI Agent                           │
├─────────────────────────────────────────────────────────────┤
│  ┌─────────────┐   ┌─────────────┐   ┌─────────────────┐│
│  │  Planner    │◄──│  Executor   │──►│  Stateful Memory ││
│  └─────────────┘   └─────────────┘   └─────────────────┘│
│         │                 │                                  │
│         │                 ▼                                  │
│         │          ┌─────────────┐                          │
│         └─────────►│ Reflection  │                          │
│                    └─────────────┘                          │
└─────────────────────────────────────────────────────────────┘
```

## Components

### 1. Planner
- Отвечает за создание плана из цели
- Использует стратегии: ReAct, Chain of Thought, Tree of Thoughts
- При ошибке - перепланирование

### 2. Executor
- Выполняет конкретные действия
- Работает через Tool Registry
- Обрабатывает ошибки

### 3. Reflection
- Анализирует результат каждого шага
- Определяет: success | error | needs_adjustment
- Предлагает корректировки

### 4. Stateful Memory
- **Short-term** — текущий диалог (List)
- **Long-term** — векторная БД (Chroma/FAISS)
- **Procedural** — история действий (SQLite)
- **Working** — промежуточные данные (Dict)

### 5. Tools
- File operations (read, write, list)
- Shell commands (exec)
- HTTP requests
- MCP integration

## API Design

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/api/chat` | POST | Чат с агентом |
| `/api/run` | POST | Выполнить цель |
| `/api/memory/search` | GET | Поиск в памяти |
| `/api/status` | GET | Статус агента |
| `/api/history` | GET | История сессий |

## Deployment

### Docker
- Образ: python:3.11-slim
- Порт: 8000
- Volumes: data, memory

### Docker Compose
- agent - основное приложение
- ollama - локальный LLM

## Configuration Schema

```yaml
agent:
  name: string
  loop:
    max_iterations: int
    max_plan_steps: int
  llm:
    planner:
      provider: "ollama" | "openai"
      model: string
    executor:
      model: string
    reflection:
      model: string
  memory:
    short_term:
      max_messages: int
    longterm:
      enabled: bool
      provider: "chroma"
    procedural:
      enabled: bool
  tools:
    enabled: list[string]
    mcp: list
    exec_command:
      allowed_dirs: list
      timeout: int
```
