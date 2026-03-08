-- Tabla 1: Documentos procesados
CREATE TABLE IF NOT EXISTS documentos (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  ruta_archivo TEXT,
  num_chunks INTEGER,
  fecha_procesado TIMESTAMP DEFAULT NOW()
);

-- Índice para búsquedas rápidas
CREATE INDEX IF NOT EXISTS idx_documentos_nombre 
ON documentos(nombre);

-- Tabla 2: Historial de consultas RAG
CREATE TABLE IF NOT EXISTS consultas_rag (
  id SERIAL PRIMARY KEY,
  pregunta TEXT NOT NULL,
  respuesta TEXT NOT NULL,
  documentos_usados TEXT[], -- Array de nombres de docs
  timestamp TIMESTAMP DEFAULT NOW()
);

-- Índice para consultas recientes
CREATE INDEX IF NOT EXISTS idx_consultas_timestamp 
ON consultas_rag(timestamp DESC);

-- Tabla 3: Historial Conversacional Chatbot
CREATE TABLE IF NOT EXISTS historial_chatbot (
  id SERIAL PRIMARY KEY,
  user_id VARCHAR(255),
  mensaje_usuario TEXT NOT NULL,
  intencion VARCHAR(50),
  respuesta_bot TEXT NOT NULL,
  herramienta_usada VARCHAR(50),
  timestamp TIMESTAMP DEFAULT NOW()
);
