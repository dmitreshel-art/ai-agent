# Tasks: AI Agent

## Implementation Checklist

- [ ] **Phase 1: Foundation**
  - [ ] Создать структуру проекта
  - [ ] Настроить poetry/requirements.txt
  - [ ] Создать базовые классы (Message, Step, Plan)
  - [ ] Написать Dockerfile

- [ ] **Phase 2: LLM Provider**
  - [ ] Реализовать абстрактный LLMProvider
  - [ ] Реализовать OllamaProvider
  - [ ] Реализовать OpenAIProvider
  - [ ] Написать тесты

- [ ] **Phase 3: Memory**
  - [ ] Реализовать ShortTermMemory
  - [ ] Реализовать LongTermMemory (Chroma)
  - [ ] Реализовать ProceduralMemory (SQLite)
  - [ ] Реализовать WorkingMemory (Dict)
  - [ ] Интегрировать в StatefulMemory
  - [ ] Написать тесты

- [ ] **Phase 4: Tools**
  - [ ] Создать ToolRegistry
  - [ ] Реализовать file_tools (read, write, list)
  - [ ] Реализовать exec_tools
  - [ ] Реализовать http_tools
  - [ ] Добавить MCP support
  - [ ] Написать тесты

- [ ] **Phase 5: Planner**
  - [ ] Создать базовый Planner абстрактный класс
  - [ ] Реализовать ReActPlanner
  - [ ] Реализовать CoTPlanner
  - [ ] Добавить replan логику
  - [ ] Написать тесты

- [ ] **Phase 6: Executor**
  - [ ] Создать базовый Executor
  - [ ] Реализовать tool execution
  - [ ] Добавить error handling
  - [ ] Написать тесты

- [ ] **Phase 7: Reflection**
  - [ ] Создать Reflection класс
  - [ ] Реализовать analyze_result
  - [ ] Добавить логику needs_adjustment
  - [ ] Написать тесты

- [ ] **Phase 8: Agent Core**
  - [ ] Собрать ModernAIAgent
  - [ ] Реализовать OODA-Loop
  - [ ] Добавить конфигурацию
  - [ ] Написать интеграционные тесты

- [ ] **Phase 9: API**
  - [ ] Создать FastAPI приложение
  - [ ] Реализовать /api/chat endpoint
  - [ ] Реализовать /api/run endpoint
  - [ ] Реализовать /api/memory/search
  - [ ] Реализовать /api/status
  - [ ] Добавить логирование

- [ ] **Phase 10: Docker**
  - [ ] Создать Dockerfile
  - [ ] Создать docker-compose.yml
  - [ ] Протестировать локально

- [ ] **Phase 11: Deployment**
  - [ ] Подготовить VPS
  - [ ] Настроить CI/CD
  - [ ] Деплой
  - [ ] Мониторинг

## Notes

- Порядок: Foundation → LLM → Memory → Tools → Planner/Executor/Reflection → Core → API → Docker → Deploy
- Каждая фаза должна включать unit тесты
- Интеграционные тесты после Phase 8
