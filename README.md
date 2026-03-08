# HITO 3: Automatización Inteligente con n8n + Ollama + PostgreSQL + Qdrant

Este proyecto implementa dos sistemas de IA utilizando n8n como orquestador:
1.  **Sistema RAG Educativo**: Ingesta y consulta de documentos con búsqueda semántica.
2.  **Chatbot Multiherramienta**: Asistente que decide qué API consultar según la intención del usuario.

## 🚀 Requisitos
- Docker y Docker Compose
- Ollama instalado localmente
- Modelos: `mistral` (u otro similar)

## 🛠️ Instalación y Uso

1.  Clona el repositorio.
2.  Ve a la carpeta `docker/`.
3.  Copia `.env.example` a `.env` y configura tus variables.
4.  Levanta los servicios:
    ```bash
    docker compose up -d
    ```
5.  Importa los workflows en n8n (`n8n/workflows/`).
6.  Ejecuta las pruebas desde `tests/pruebas.http`.

## 📁 Estructura del Proyecto
- `docker/`: Configuración de contenedores.
- `n8n/workflows/`: Exportaciones JSON de los workflows.
- `postgres/`: Script de inicialización de base de datos.
- `tests/`: Pruebas HTTP para validar el funcionamiento.
- `docs/`: Documentación adicional y capturas.

## 🎥 Demo
El vídeo de demostración se puede encontrar en: [Enlace al vídeo]

## 📝 Autores
- Desarrollado por [Nombre] y [Nombre]
