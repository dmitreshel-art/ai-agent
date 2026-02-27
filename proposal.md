# Proposal: AI Agent

## Intent

Создать универсального ИИ-агента с возможностью деплоя на VPS, поддержкой LLM (локальный/Ollama или API), памятью и инструментами.

## Scope

### In Scope
- Архитектура OODA-Loop (Planner, Executor, Reflection, Memory)
- Поддержка Ollama и OpenAI API
- Stateful Memory (краткосрочная + долгосрочная + процедурная)
- Tools (файлы, команды, HTTP, MCP)
- Docker деплой

### Out of Scope
- Мультиагентные системы
- Обучение на опыте
- Reinforcement Learning
- Голосовой интерфейс

## Approach

1. **Фреймворк:** Python + опционально CrewAI/LangGraph
2. **LLM:** Ollama (локально) как база, OpenAI как fallback
3. **Memory:** SQLite + Chroma для векторного поиска
4. **Tools:** Python functions + MCP
5. **Деплой:** Docker

## Priority

**High** — основной проект

## Dependencies

- None

## Risks

- Сложность реализации полной OODA-Loop
- Выбор оптимальных моделей для разных компонентов

## Timeline

- Research: Завершено
- Specs: В процессе
- Design: В процессе
- Implementation: TBD
