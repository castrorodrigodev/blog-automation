#!/bin/bash

# Check if a name was provided
if [ -z "$1" ]; then
  echo "Usage: $0 descriptive_name"
  exit 1
fi

# Normalize name: lowercase and underscores
NAME=$(echo "$1" | tr ' ' '_' | tr '[:upper:]' '[:lower:]')
DIR="sql/migrations"

# Check if a migration with this descriptive name already exists (ignoring timestamp)
if ls "$DIR"/*_"$NAME".sql 1> /dev/null 2>&1; then
  echo "Error: A migration with the name '$NAME' already exists"
  exit 1
fi

# Generate a unique timestamp in UTC
TIMESTAMP=$(date -u +%Y%m%d%H%M%S)
FILE="$DIR/${TIMESTAMP}_${NAME}.sql"

# Create migrations folder if it does not exist
mkdir -p "$DIR"

# Create base migration file
{
  echo "-- Migration: $1"
  echo "-- Created at: $(date -u)"
  echo
  echo "-- Write your SQL script here"
} > "$FILE"

echo "✅ Migration file created: $FILE"
