shopt -s expand_aliases
set -e

if [ "$CI" = true ]; then
    alias pandoc='docker run -i --rm -v "$(pwd)/:/work" -w /work dalibo/pandocker:latest-buster-full'
fi

# Compile markdown
for S in `find . -name "*.md" -not -path "./template*"`
do
  DESTDIR=$(echo out/`dirname $S`)
  DESTNAME=$(echo $DESTDIR/`basename $S ".md"`.pdf)
  mkdir -p $DESTDIR
  pandoc $S -o $DESTNAME --from markdown --template template/eisvogel.tex --listings
done

# Copy everything else
for S in `find . -type f -not -path "./template*" -not -path "./.git*" -not -path "./.vscode*" -not -path "./build.sh" -not -name "*.md" -not -path "./out*" -not -path "./assets*"`
do
  DESTDIR=$(echo out/`dirname $S`)
  DESTNAME=$(echo $DESTDIR/`basename $S`)
  mkdir -p $DESTDIR
  cp $S $DESTNAME
done