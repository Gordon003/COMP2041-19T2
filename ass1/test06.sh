# Add 2 files but remove one file before committing it
rm -rf .legit
./legit-init
echo line 1 > a
echo line 2 > b
./legit-add a b
./legit-rm --force a
./legit-commit -m "Commit 1"
echo line 1 > a
./legit-status
echo line 3 > c
./legit-rm  c
echo line 3 > a
./legit-add a
./legit-commit -m "Commit 2"
