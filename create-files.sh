# /bin/bash

repo-add novos-core.db.tar.gz *.pkg.tar.zst
echo "Removing Symlinks"
rm novos-core.db
rm novos-core.files
echo "Renaming files"
mv novos-core.db.tar.gz novos-core.db
mv novos-core.files.tar.gz novos-core.files
git add *
git commit -a -m "New update"

# Redo process because of signing
rm novos-core.db
rm novos-core.files

repo-add novos-core.db.tar.gz *.pkg.tar.zst
echo "Removing Symlinks"
rm novos-core.db
rm novos-core.files
echo "Renaming files"
mv novos-core.db.tar.gz novos-core.db
mv novos-core.files.tar.gz novos-core.files
git add *
git commit -a -m "New update"
git push
