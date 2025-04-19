#!/usr/bin/env sh

# Gradle wrapper script for Unix systems
# This is a minimal gradle wrapper script to allow building the project

DIRNAME=$(dirname "$0")
exec java -jar "$DIRNAME/gradle/wrapper/gradle-wrapper.jar" "$@"
