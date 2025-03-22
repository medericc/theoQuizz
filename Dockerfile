# Utiliser une image officielle de Flutter avec Web
FROM cirrusci/flutter:stable

# Définir le dossier de travail
WORKDIR /app

# Copier tous les fichiers du projet
COPY . .

# Installer les dépendances
RUN flutter pub get

# Construire l'application Flutter Web
RUN flutter build web

# Définir le dossier de sortie pour Vercel
CMD ["cp", "-r", "build/web", "/vercel/output"]
