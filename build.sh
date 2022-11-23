shopt -s expand_aliases
set -e

if [ "$CI" = true ]; then
    echo "Running in CI, using pandocker image..."
    alias touch='sudo touch'
    alias pandoc='docker run -i --rm -v "$(pwd)/:/work" -w /work ghcr.io/sevenelevendevunipd/latex_pandoc_filters'
fi

# Compile markdown
for S in `find . -name "*.md" -not -path "./template*"`
do
  DESTDIR=$(echo docs/`dirname $S`)
  DESTNAME=$(echo $DESTDIR/`basename $S ".md"`.pdf)
  mkdir -p $DESTDIR
  echo "Building $S..."
  pandoc  -d pandoc-defaults.yaml --metadata-file pandoc-metadata.yaml $S -o $DESTNAME
  touch -amd "$(date -R -r $S)" $DESTNAME
done

# Copy everything else
for S in `find . -type f -not -path "./template*" -not -path "./.git*" -not -path "./.vscode*" -not -path "./.idea*" -not -path "./build.sh" -not -name "*.md" -not -path "./docs*" -not -path "./assets*" -not -path "./plantuml-images*" -not -name "pandoc-*.yaml" -not -name "glossary.yaml" -not -name "acronyms.yaml"`
do
  DESTDIR=$(echo docs/`dirname $S`)
  DESTNAME=$(echo $DESTDIR/`basename $S`)
  mkdir -p $DESTDIR
  echo "Copying $S..."
  cp $S $DESTNAME
done
