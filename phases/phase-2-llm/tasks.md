# Phase 2: LLM Provider - Задачи

## ⚠️ НАПОМИНАНИЕ

**Используй команды workflow:**

```
/pm:verify phase-2-llm   → проверить
/pm:archive phase-2-llm  → архивировать (после проверки)
/pm:plan phase-3-memory  → следующая фаза (после архива)
```

## Чеклист

- [ ] **2.1** Создать src/llm/base.py
  - [ ] Определить абстрактный класс LLMProvider
  - [ ] Определить интерфейс chat()
  - [ ] Определить интерфейс chat_with_tools()
  - [ ] Определить dataclasses: Message, ToolCall

- [ ] **2.2** Создать src/llm/ollama.py
  - [ ] Реализовать OllamaProvider
  - [ ] Реализовать chat() через REST API
  - [ ] Реализовать chat_with_tools()
  - [ ] Добавить поддержку streaming

- [ ] **2.3** Создать src/llm/openai.py
  - [ ] Реализовать OpenAIProvider
  - [ ] Реализовать chat() через OpenAI API
  - [ ] Реализовать chat_with_tools()
  - [ ] Добавить поддержку streaming

- [ ] **2.4** Обновить src/llm/__init__.py
  - [ ] Экспортировать провайдеры

- [ ] **2.5** Написать тесты
  - [ ] Тест OllamaProvider (mock)
  - [ ] Тест OpenAIProvider (mock)

- [ ] **2.6** Обновить config/config.yaml
  - [ ] Добавить секцию providers

## Критерии завершения

- [ ] Все провайдеры реализованы
- [ ] Единый интерфейс работает
- [ ] Тесты проходят
- [ ] Конфигурация обновлена
