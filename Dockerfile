# Basierend auf dem offiziellen Python-Image
FROM python:3.12-slim

# Arbeitsverzeichnis im Container setzen
WORKDIR /app
ENV PYTHONPATH="${PYTHONPATH}:/app"

# Kopiere den Anwendungscode in den Container
COPY . /app/

# Abhängigkeiten installieren
RUN pip install --no-cache-dir -r requirements.txt

# Setze eine Umgebungsvariable
ENV PORT=8501
ENV APP_TITLE="DAX"
ENV DOCKER_ENV=true 

# Starte die Dash-App direkt mit dem Python-Interpreter
CMD ["streamlit", "run", "streamlit_project_final_JK.py"]

