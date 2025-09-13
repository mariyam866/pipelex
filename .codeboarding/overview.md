```mermaid
graph LR
    User_Interaction_Layer["User Interaction Layer"]
    Workflow_Definition_Registry["Workflow Definition & Registry"]
    Pipeline_Execution_Core["Pipeline Execution Core"]
    AI_Service_Integration_Layer["AI Service Integration Layer"]
    Working_Memory_Data_Store["Working Memory & Data Store"]
    Unclassified["Unclassified"]
    User_Interaction_Layer -- "Submits PLX definitions for parsing and registration." --> Workflow_Definition_Registry
    User_Interaction_Layer -- "Initiates pipeline execution and receives execution reports/logs." --> Pipeline_Execution_Core
    Workflow_Definition_Registry -- "Provides the compiled pipeline blueprint and definitions of available pipes." --> Pipeline_Execution_Core
    Pipeline_Execution_Core -- "Reads and writes intermediate data ("stuffs") during pipe execution." --> Working_Memory_Data_Store
    Pipeline_Execution_Core -- "Dispatches requests for AI inference tasks (e.g., LLM calls, OCR, image generation)." --> AI_Service_Integration_Layer
    AI_Service_Integration_Layer -- "Consumes input content for AI tasks and produces output content back into the memory." --> Working_Memory_Data_Store
    click User_Interaction_Layer href "https://github.com/Pipelex/pipelex/blob/main/.codeboarding/User_Interaction_Layer.md" "Details"
    click Workflow_Definition_Registry href "https://github.com/Pipelex/pipelex/blob/main/.codeboarding/Workflow_Definition_Registry.md" "Details"
    click Pipeline_Execution_Core href "https://github.com/Pipelex/pipelex/blob/main/.codeboarding/Pipeline_Execution_Core.md" "Details"
    click AI_Service_Integration_Layer href "https://github.com/Pipelex/pipelex/blob/main/.codeboarding/AI_Service_Integration_Layer.md" "Details"
    click Working_Memory_Data_Store href "https://github.com/Pipelex/pipelex/blob/main/.codeboarding/Working_Memory_Data_Store.md" "Details"
```

[![CodeBoarding](https://img.shields.io/badge/Generated%20by-CodeBoarding-9cf?style=flat-square)](https://github.com/CodeBoarding/CodeBoarding)[![Demo](https://img.shields.io/badge/Try%20our-Demo-blue?style=flat-square)](https://www.codeboarding.org/diagrams)[![Contact](https://img.shields.io/badge/Contact%20us%20-%20contact@codeboarding.org-lightgrey?style=flat-square)](mailto:contact@codeboarding.org)

## Details

The Pipelex system is structured around a core set of components designed to facilitate the definition, execution, and management of AI/ML pipelines. The User Interaction Layer provides the primary interface for users to interact with the system, submitting pipeline definitions and initiating executions. These definitions are then processed by the Workflow Definition & Registry, which interprets the declarative PLX language and transforms it into an executable blueprint. The Pipeline Execution Core is responsible for orchestrating the actual pipeline runs, managing control flow, and executing individual pipe operations. During execution, the Working Memory & Data Store acts as a central data bus, managing the flow of intermediate data. For AI-specific tasks, the AI Service Integration Layer provides a unified interface to various AI inference workers. This architecture ensures a clear separation of concerns, enabling modular development and efficient data flow for complex AI workflows.

### User Interaction Layer [[Expand]](./User_Interaction_Layer.md)
Provides the primary interface for users to define, run, validate, and manage pipelines through command-line tools (CLI) or a programmatic Python API. It also serves as the gateway for receiving execution reports and logs.


**Related Classes/Methods**:

- <a href="https://github.com/Pipelex/pipelex/blob/main/pipelex/cli/" target="_blank" rel="noopener noreferrer">`pipelex/cli/`</a>
- <a href="https://github.com/Pipelex/pipelex/blob/main/pipelex/client/" target="_blank" rel="noopener noreferrer">`pipelex/client/`</a>
- <a href="https://github.com/Pipelex/pipelex/blob/main/pipelex/pipeline/track/" target="_blank" rel="noopener noreferrer">`pipelex/pipeline/track/`</a>
- <a href="https://github.com/Pipelex/pipelex/blob/main/pipelex/pipeline/activity/" target="_blank" rel="noopener noreferrer">`pipelex/pipeline/activity/`</a>


### Workflow Definition & Registry [[Expand]](./Workflow_Definition_Registry.md)
Interprets the declarative PLX language, transforming pipeline and concept definitions from raw PLX content into an executable internal blueprint. It also manages the lifecycle and availability of all user-defined and native pipes, concepts (data schemas), and domains.


**Related Classes/Methods**:

- <a href="https://github.com/Pipelex/pipelex/blob/main/pipelex/core/interpreter.py#L30-L1016" target="_blank" rel="noopener noreferrer">`pipelex.core.interpreter.PipelexInterpreter`:30-1016</a>
- <a href="https://github.com/Pipelex/pipelex/blob/main/pipelex/libraries/" target="_blank" rel="noopener noreferrer">`pipelex/libraries/`</a>
- <a href="https://github.com/Pipelex/pipelex/blob/main/pipelex/core/pipes/" target="_blank" rel="noopener noreferrer">`pipelex/core/pipes/`</a>
- <a href="https://github.com/Pipelex/pipelex/blob/main/pipelex/core/concepts/" target="_blank" rel="noopener noreferrer">`pipelex/core/concepts/`</a>
- <a href="https://github.com/Pipelex/pipelex/blob/main/pipelex/core/domains/" target="_blank" rel="noopener noreferrer">`pipelex/core/domains/`</a>


### Pipeline Execution Core [[Expand]](./Pipeline_Execution_Core.md)
The foundational layer responsible for bootstrapping the Pipelex environment, initializing core services, and providing a central hub for accessing managers. It controls the overall execution flow of pipelines, managing sequences, parallel branches, conditional logic, and batch processing, and executes individual "operator pipes" for specific AI/ML tasks or data transformations, including internal activity tracking.


**Related Classes/Methods**:

- <a href="https://github.com/Pipelex/pipelex/blob/main/pipelex/__init__.py" target="_blank" rel="noopener noreferrer">`pipelex/__init__.py`</a>
- <a href="https://github.com/Pipelex/pipelex/blob/main/pipelex/pipelex.py" target="_blank" rel="noopener noreferrer">`pipelex/pipelex.py`</a>
- <a href="https://github.com/Pipelex/pipelex/blob/main/pipelex/hub.py" target="_blank" rel="noopener noreferrer">`pipelex/hub.py`</a>
- <a href="https://github.com/Pipelex/pipelex/blob/main/pipelex/pipeline/pipeline_manager.py#L14-L44" target="_blank" rel="noopener noreferrer">`pipelex.pipeline.pipeline_manager.PipelineManager`:14-44</a>
- <a href="https://github.com/Pipelex/pipelex/blob/main/pipelex/pipe_controllers/" target="_blank" rel="noopener noreferrer">`pipelex/pipe_controllers/`</a>
- <a href="https://github.com/Pipelex/pipelex/blob/main/pipelex/pipe_operators/" target="_blank" rel="noopener noreferrer">`pipelex/pipe_operators/`</a>


### AI Service Integration Layer [[Expand]](./AI_Service_Integration_Layer.md)
Centralizes the management and provisioning of various AI inference workers (LLM, Image Generation, OCR) and tracks their operational costs. It provides abstract interfaces for interacting with different Large Language Model, Image Generation, and OCR providers, handling provider-specific API calls and prompt construction.


**Related Classes/Methods**:

- <a href="https://github.com/Pipelex/pipelex/blob/main/pipelex/cogt/inference/" target="_blank" rel="noopener noreferrer">`pipelex/cogt/inference/`</a>
- <a href="https://github.com/Pipelex/pipelex/blob/main/pipelex/cogt/llm/" target="_blank" rel="noopener noreferrer">`pipelex/cogt/llm/`</a>
- <a href="https://github.com/Pipelex/pipelex/blob/main/pipelex/cogt/imgg/" target="_blank" rel="noopener noreferrer">`pipelex/cogt/imgg/`</a>
- <a href="https://github.com/Pipelex/pipelex/blob/main/pipelex/cogt/ocr/" target="_blank" rel="noopener noreferrer">`pipelex/cogt/ocr/`</a>
- <a href="https://github.com/Pipelex/pipelex/blob/main/pipelex/plugins/" target="_blank" rel="noopener noreferrer">`pipelex/plugins/`</a>


### Working Memory & Data Store [[Expand]](./Working_Memory_Data_Store.md)
Manages the in-memory state and data ("stuffs") that flow through the pipeline. It supports various content types (text, image, PDF, structured objects) and ensures data consistency and accessibility across pipes, acting as the central data bus.


**Related Classes/Methods**:

- <a href="https://github.com/Pipelex/pipelex/blob/main/pipelex/core/memory/" target="_blank" rel="noopener noreferrer">`pipelex/core/memory/`</a>
- <a href="https://github.com/Pipelex/pipelex/blob/main/pipelex/core/stuffs/" target="_blank" rel="noopener noreferrer">`pipelex/core/stuffs/`</a>


### Unclassified
Component for all unclassified files and utility functions (Utility functions/External Libraries/Dependencies)


**Related Classes/Methods**: _None_



### [FAQ](https://github.com/CodeBoarding/GeneratedOnBoardings/tree/main?tab=readme-ov-file#faq)
