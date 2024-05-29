@_default:
    just --list --unsorted

# Generate PNG images from PlantUML files
generate-puml:
  docker run --rm -v $(pwd):/puml -w /puml ghcr.io/plantuml/plantuml:latest -tpng "**/*.puml"

# Build the website using Quarto
build-website:
  docker run --rm -v $(pwd):/site -w /site ghcr.io/quarto-dev/quarto:latest quarto render
