# Entrega HITO 3 - Automatización Inteligente con n8n - Proyecto A y B

## 📋 Funcionalidades Implementadas
- [x] **Proyecto A (Sistema RAG)**:
    - [x] Workflow de ingesta con extracción de texto y chunking (500 palabras/50 overlap).
    - [x] Generación de embeddings con Ollama (mistral).
    - [x] Almacenamiento vectorial en Qdrant.
    - [x] Workflow de consulta con búsqueda semántica y respuesta contextualizada.
    - [x] Persistencia de metadatos e historial en PostgreSQL.
- [x] **Proyecto B (Chatbot Multiherramienta)**:
    - [x] Análisis de intención con Ollama.
    - [x] Orquestación mediante nodo Switch.
    - [x] Integración de 4 herramientas API (OpenMeteo, REST Countries, Wikipedia, JokeAPI).
    - [x] Formateo natural de respuestas mediante LLM.
    - [x] Historial conversacional persistente en PostgreSQL.
- [x] **Infraestructura**:
    - [x] Containerización completa con Docker Compose.
    - [x] Script de inicialización SQL automático.
    - [x] Suite de pruebas en `tests/pruebas.http`.

## 🛠️ Dificultades y Soluciones
- **Desafío**: Mismatch de versiones en PostgreSQL con datos existentes.
- **Solución**: Actualización de la imagen a `postgres:16-alpine` y aislamiento de volúmenes mediante nombres específicos (`hito3_postgres_data`).
- **Desafío**: Errores de Certificado TLS al descargar modelos de Ollama en redes restrictivas.
- **Solución**: Documentación de alternativas (hotspot móvil/pull local) para asegurar que el evaluador pueda ejecutar el sistema sin bloqueos de red.

## 🚀 Instrucciones para Ejecutar
1. Clonar el repositorio y acceder a la carpeta `docker/`.
2. Crear archivo `.env` (copiar de `.env.example`).
3. Ejecutar `docker compose up -d`.
4. Descargar el modelo: `docker exec -it docker-ollama-1 ollama pull mistral`.
5. Importar los JSON de `n8n/workflows/` en tu instancia local de n8n.
6. Usar `tests/pruebas.http` para validar las funciones.

---
**Participante**:
- AngelDB06 (Ángel)
