Build · SH
#!/usr/bin/env bash
set -e
 
# Use the master channel, because the project requires a pre-release Dart SDK (^3.15.0-12.0.dev)
git clone https://github.com/flutter/flutter.git -b master --depth 1 "$HOME/flutter"
export PATH="$HOME/flutter/bin:$PATH"
 
flutter --version
flutter config --enable-web
flutter pub get
flutter build web --release
 