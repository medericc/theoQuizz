#!/bin/bash

# Télécharger Flutter (dernière version stable)
git clone https://github.com/flutter/flutter.git -b stable --depth 1

# Ajouter Flutter au PATH
export PATH="$PWD/flutter/bin:$PATH"

# S'assurer que Flutter est prêt
flutter doctor

# Activer le support Web
flutter config --enable-web

# Précharger pour le web
flutter precache --web

# Installer les dépendances
flutter pub get

# Construire pour le web
flutter build web --release
