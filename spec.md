# AI Agent - Спецификация

## Overview

Современный ИИ-агент с архитектурой **OODA-Loop** (Observe-Orient-Decide-Act).

## Требования

### T-001: OODA-Loop Architecture
Система ДОЛЖНА реализовывать OODA-цикл с компонентами: Planner, Executor, Reflection, Memory.

### T-002: Planner Component
Система ДОЛЖНА иметь компонент Planner который разбивает цель на подзадачи.

### T-003: Executor Component
Система ДОЛЖНА иметь компонент Executor который выполняет действия через tools.

### T-004: Reflection Component
Система ДОЛЖНА анализировать результат каждого шага.

### T-005: Stateful Memory
Система ДОЛЖНА поддерживать 4 типа памяти: short-term, long-term, procedural, working.

### T-006: Tools System
Система ДОЛЖНА поддерживать инструменты для выполнения действий.

### T-007: Multiple LLM Providers
Система ДОЛЖНА поддерживать разные LLM провайдеры (Ollama, OpenAI).

### T-008: Configuration
Система ДОЛЖНА конфигурироваться через YAML файл.

### T-009: Docker Deployment
Система ДОЛЖНА поддерживать развёртывание в Docker.

## Выбор моделей по компонентам

| Компонент | Роль | Рекомендуемые модели |
|-----------|------|---------------------|
| Planner | Планирование | Claude 3.5 Sonnet, GPT-4o, DeepSeek Coder |
| Executor | Выполнение | Gemini Flash, Llama 3.1 8B, Mixtral |
| Reflection | Анализ | GPT-4, Claude 3 Opus |

## Пример работы

```
User: "Создай отчёт по продажам за январь и отправь на email"

OBSERVE:
  - Загружаю контекст из памяти

ORIENT (Planner):
  - План: [
      1. Найти файл с данными продаж
      2. Проанализировать данные
      3. Создать отчёт
      4. Отправить email
    ]

ACT (Executor):
  - Выполняю шаги по очереди

REFLECTION:
  - Анализирую результат каждого шага
  - При ошибке - перепланирование

Финальный результат:
  - Отчёт создан и отправлен
```

## Next Steps

1. Создать структуру проекта
2. Реализовать LLM Provider
3. Реализовать Memory
4. Реализовать Tools
5. Реализовать Planner
6. Реализовать Executor
7. Реализовать Reflection
8. Собрать Agent Core
9. Docker
