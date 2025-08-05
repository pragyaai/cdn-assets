#!/bin/bash

SRC_DIR="./your_source_directory"  # Root folder to start from
DEST_DIR="./optimized_gifs"
MAX_DIM=1200

echo "Optimizing GIFs from $SRC_DIR to $DEST_DIR ..."

find "$SRC_DIR" -type f -iname "*.gif" ! -path "$DEST_DIR/*" | while read -r src_file; do
  # Get relative path from SRC_DIR
  rel_path="${src_file#$SRC_DIR/}"
  dest_file="$DEST_DIR/$rel_path"
  dest_dir=$(dirname "$dest_file")

  # Create destination directory if it doesn't exist
  mkdir -p "$dest_dir"

  echo "Processing $rel_path ..."
  gifsicle -O3 --resize-fit ${MAX_DIM}x${MAX_DIM} --colors 128 "$src_file" -o "$dest_file"

  # # Get file sizes
  # orig_size=$(stat -f %z "$src_file")
  # new_size=$(stat -f %z "$dest_file")

  # # Convert to human-readable KB or MB
  # orig_kb=$((orig_size / 1024))
  # new_kb=$((new_size / 1024))

  # if [ "$orig_kb" -gt 1024 ]; then
  #   orig_human="$(awk "BEGIN {printf \"%.2f MB\", $orig_kb/1024}")"
  # else
  #   orig_human="${orig_kb} KB"
  # fi

  # if [ "$new_kb" -gt 1024 ]; then
  #   new_human="$(awk "BEGIN {printf \"%.2f MB\", $new_kb/1024}")"
  # else
  #   new_human="${new_kb} KB"
  # fi

  # # Print comparison
  # echo "📦 Original: $orig_human → Optimized: $new_human"
done

echo "✅ Done! Optimized GIFs saved in $DEST_DIR"

# chmod +x optimize-gifs.sh
# ./optimize-gifs.sh