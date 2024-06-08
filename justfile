@_default:
    just --list --unsorted

# Generate PNG images from PlantUML files
generate-puml:
  docker run --rm -v $(pwd):/puml -w /puml ghcr.io/plantuml/plantuml:latest -tsvg "**/*.puml"

# Build the website using Quarto
build-website:
  # This can't install chromium, need to run installed version of quarto
  # docker run --rm -v $(pwd):/site -w /site ghcr.io/quarto-dev/quarto:latest quarto render
  quarto preview
