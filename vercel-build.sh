#!/bin/bash

# Install Flutter
git clone https://github.com/flutter/flutter.git -b stable --depth 1
export PATH="$PATH:$PWD/flutter/bin"

# Enable Flutter Web
flutter config --enable-web
flutter precache --web

# Get dependencies
flutter pub get

# Build Flutter Web
flutter build web --release
