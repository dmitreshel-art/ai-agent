# AI Agent Project - Workflow Guide

## Общий подход

Проект разбит на **фазы**. Каждая фаза — это mini-проект со своей спецификацией.

## Структура фаз

```
phases/
├── phase-1-foundation/
│   ├── spec.md      # Детальная спецификация
│   ├── design.md    # Дизайн фазы
│   ├── tasks.md    # Задачи фазы
│   └── .progress.md # Прогресс
├── phase-2-llm/
│   └── ...
└── ...
```

## Workflow для каждой фазы

```
1. Создать спецификацию:   /pm:plan phase-X-name
2. Реализовать:            /pm:apply phase-X-name  
3. Проверить:              /pm:verify phase-X-name
4. Архивировать:           /pm:archive phase-X-name
5. Следующая фаза
```

## Текущие фазы

| Phase | Название | Статус |
|-------|----------|--------|
| 1 | Foundation | Готово к работе |
| 2 | LLM Provider | - |
| 3 | Memory | - |
| 4 | Tools | - |
| 5 | Planner | - |
| 6 | Executor | - |
| 7 | Reflection | - |
| 8 | Agent Core | - |
| 9 | API | - |
| 10 | Docker | - |
| 11 | Deployment | - |

## Главные документы

- `proposal.md` — общий proposal
- `spec.md` — общая спецификация
- `design.md` — общий дизайн
- `tasks.md` — общий чеклист

## Важно

- **Без подтверждения не начинаем** — Дмитрий должен одобрить спецификацию перед реализацией
- **Каждая фаза — это цикл**: spec → design → tasks → implement → verify → archive
