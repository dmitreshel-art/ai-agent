# Spec: AI Agent Core

## ADDED Requirements

### Requirement: OODA-Loop Architecture
Система ДОЛЖНА реализовывать архитектуру OODA-Loop с компонентами: Planner, Executor, Reflection, Stateful Memory.

### Requirement: Planner Component
Система ДОЛЖНА иметь компонент Planner который разбивает цель на подзадачи.

### Requirement: Executor Component
Система ДОЛЖНА иметь компонент Executor который выполняет действия через tools.

### Requirement: Reflection Component
Система ДОЛЖНА анализировать результат каждого шага.

### Requirement: Stateful Memory
Система ДОЛЖНА хранить контекст в нескольких типах памяти.

### Requirement: Tools System
Система ДОЛЖНА поддерживать инструменты для выполнения действий.

## Data Structures

- **Plan** — план с List[Step]
- **Step** — отдельный шаг (action, tool, params, status)
- **ExecutionResult** — результат выполнения (status, result, error)
- **ReflectionResult** — результат анализа (status, adjustment, suggestion)
- **Experience** — сохранённый опыт (goal, steps, results, success)
