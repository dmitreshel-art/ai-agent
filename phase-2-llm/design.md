# Phase 2: LLM Provider - Дизайн

## Структура

```
src/llm/
├── __init__.py
├── base.py          # ABC и интерфейсы
├── ollama.py        # OllamaProvider
└── openai.py       # OpenAIProvider
```

## Интерфейс LLMProvider

```python
class LLMProvider(ABC):
    @abstractmethod
    def chat(self, messages: list[dict]) -> str:
        """Отправить сообщения и получить ответ"""
        pass
    
    @abstractmethod
    def chat_with_tools(self, messages: list[dict], tools: list[dict]) -> tuple[str, list[ToolCall]]:
        """Отправить сообщения с tools и получить ответ"""
        pass
```

## OllamaProvider

```python
class OllamaProvider(LLMProvider):
    def __init__(self, model: str = "llama3.2", base_url: str = "http://localhost:11434"):
        self.model = model
        self.base_url = base_url
    
    def chat(self, messages: list[dict]) -> str:
        # POST to /api/chat
        pass
```

## OpenAIProvider

```python
class OpenAIProvider(LLMProvider):
    def __init__(self, model: str = "gpt-4o", api_key: str = None):
        self.model = model
        self.api_key = api_key
    
    def chat(self, messages: list[dict]) -> str:
        # OpenAI Chat API
        pass
```

## Конфигурация

```yaml
llm:
  default_provider: "ollama"
  
  providers:
    ollama:
      model: "llama3.2"
      base_url: "http://localhost:11434"
    
    openai:
      model: "gpt-4o"
      api_key: "${OPENAI_API_KEY}"
```
