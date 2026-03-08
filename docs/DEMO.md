# Guía de Funcionamiento - HITO 3

Esta guía detalla los pasos para verificar el funcionamiento técnico del proyecto.

## 1. Proyecto A: Sistema RAG
- **Paso 1**: Subida de un PDF/TXT mediante el webhook de ingesta.
- **Paso 2**: Verificación de los chunks generados y almacenados en Qdrant.
- **Paso 3**: Realización de preguntas complejas sobre el contenido del documento.
- **Paso 4**: Validación de que el historial se guarda en la tabla `consultas_rag` de PostgreSQL.

## 2. Proyecto B: Chatbot Multiherramienta
- **Paso 1**: Pregunta sobre el clima (OpenMeteo).
- **Paso 2**: Pregunta sobre un país (REST Countries).
- **Paso 3**: Pregunta sobre un personaje histórico (Wikipedia).
- **Paso 4**: Petición de un chiste (JokeAPI).
- **Paso 5**: Validación de la clasificación de intención por parte de Ollama y el guardado en `historial_chatbot`.

## 3. Arquitectura Técnica
- **Orquestador**: n8n (Webhooks, Nodos HTTP, PostgreSQL, Switch, Code).
- **Modelos IA**: Ollama (mistral para embeddings y respuestas).
- **Bases de Datos**:
  - **Qdrant**: Almacenamiento vectorial para búsqueda semántica.
  - **PostgreSQL**: Persistencia de metadatos y logs de conversación.
