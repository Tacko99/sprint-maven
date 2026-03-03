# Utiliser une image Python officielle
FROM python:3.11-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers du projet dans le conteneur
COPY . .

# Installer les dépendances Python (si requirements.txt est vide, ça ne fera rien)
RUN pip install --no-cache-dir -r requirements.txt

# Exposer un port si ton application web en a besoin (ici c’est optionnel)
# EXPOSE 5000

# Commande pour lancer ton script Python
CMD ["python", "app.py"]
