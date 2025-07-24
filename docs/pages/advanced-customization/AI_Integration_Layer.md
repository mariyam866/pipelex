```mermaid
graph LR
    InferenceManager["InferenceManager"]
    LLMWorker["LLMWorker"]
    ImggWorker["ImggWorker"]
    OcrWorker["OcrWorker"]
    LLMDeck["LLMDeck"]
    LLMModelLibrary["LLMModelLibrary"]
    AI_Configuration["AI Configuration"]
    InferenceManager -- "orchestrates" --> LLMWorker
    InferenceManager -- "orchestrates" --> ImggWorker
    InferenceManager -- "orchestrates" --> OcrWorker
    InferenceManager -- "is configured by" --> AI_Configuration
    LLMWorker -- "receives tasks from" --> InferenceManager
    LLMWorker -- "uses configurations from" --> LLMDeck
    LLMWorker -- "uses configurations from" --> LLMModelLibrary
    ImggWorker -- "receives tasks from" --> InferenceManager
    ImggWorker -- "is configured by" --> AI_Configuration
    OcrWorker -- "receives tasks from" --> InferenceManager
    OcrWorker -- "is configured by" --> AI_Configuration
    LLMDeck -- "provides configurations to" --> LLMWorker
    LLMModelLibrary -- "provides models to" --> LLMWorker
    AI_Configuration -- "configures" --> InferenceManager
    AI_Configuration -- "configures" --> LLMWorker
    AI_Configuration -- "configures" --> ImggWorker
    AI_Configuration -- "configures" --> OcrWorker
```

[![CodeBoarding](https://img.shields.io/badge/Generated%20by-CodeBoarding-9cf?style=flat-square)](https://github.com/CodeBoarding/GeneratedOnBoardings)[![Demo](https://img.shields.io/badge/Try%20our-Demo-blue?style=flat-square)](https://www.codeboarding.org/demo)[![Contact](https://img.shields.io/badge/Contact%20us%20-%20contact@codeboarding.org-lightgrey?style=flat-square)](mailto:contact@codeboarding.org)

## Details

The AI Integration Layer in pipelex provides a unified interface to various AI service providers, abstracting away their specific APIs, and is utilized by the Pipe Operators for AI-related tasks. This layer is primarily encapsulated within the pipelex.cogt package.

### InferenceManager
The central orchestrator for all AI inference tasks (LLM, Image Generation, OCR). It receives inference requests and dispatches them to the appropriate specialized AI workers.


**Related Classes/Methods**:

- `pipelex.cogt.inference.inference_manager`


### LLMWorker
Defines the abstract interface for interacting with various Large Language Model (LLM) providers. Concrete implementations (e.g., Anthropic, OpenAI) handle provider-specific API calls.


**Related Classes/Methods**:

- `pipelex.cogt.llm.llm_worker_abstract`


### ImggWorker
Defines the abstract interface for interacting with different Image Generation (Imgg) providers. Concrete implementations handle provider-specific API calls.


**Related Classes/Methods**:

- `pipelex.cogt.imgg.imgg_worker_abstract`


### OcrWorker
Defines the abstract interface for interacting with various Optical Character Recognition (OCR) providers. Concrete implementations handle provider-specific API calls.


**Related Classes/Methods**:

- `pipelex.cogt.ocr.ocr_worker_abstract`


### LLMDeck
Manages and validates configurations for various LLMs, ensuring correct setup and parameters for AI interactions.


**Related Classes/Methods**:

- `pipelex.cogt.llm.llm_models.llm_deck`


### LLMModelLibrary
Provides access to loaded LLM model definitions and acts as a central repository for LLM models, enabling workers to retrieve necessary model information.


**Related Classes/Methods**:

- `pipelex.cogt.llm.llm_models.llm_model_library`


### AI Configuration
Encapsulates specific configuration models (`LLMConfig`, `ImggConfig`, `OcrConfig`, `InferenceManagerConfig`) used to set up and run various AI tasks across the subsystem.


**Related Classes/Methods**:

- `pipelex.cogt.config_cogt`




### [FAQ](https://github.com/CodeBoarding/GeneratedOnBoardings/tree/main?tab=readme-ov-file#faq)
