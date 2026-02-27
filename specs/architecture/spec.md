# Spec: Architecture

## ADDED Requirements

### Requirement: Component Architecture
Система ДОЛЖНА состоять из следующих компонентов:
- Planner (планирование)
- Executor (выполнение)
- Reflection (рефлексия)
- Stateful Memory (память)
- Tools Registry (инструменты)

### Requirement: LLM Provider Abstraction
Система ДОЛЖНА поддерживать разные LLM провайдеры через абстракцию.

### Requirement: Multiple LLM Models
Система ДОЛЖНА поддерживать разные модели для разных компонентов.

### Requirement: Memory Types
Система ДОЛЖНА поддерживать 4 типа памяти:
1. Short-term — текущий диалог
2. Long-term — векторная БД
3. Procedural — история действий
4. Working — промежуточные данные

### Requirement: Tools Integration
Система ДОЛЖНА поддерживать:
- Python functions как tools
- MCP (Model Context Protocol) серверы

### Requirement: Configuration
Система ДОЛЖНА конфигурироваться через YAML файл.
