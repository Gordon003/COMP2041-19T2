# Add 6 files
# Commit 6 files
# Legit-rm force 2 files
# rm 1 files from working directory
# Edit and commit 3 files
rm -rf .legit
./legit-init
echo line 1 > a
echo line 2 > b
echo line 3 > c
echo line 4 > d
echo line 5 > e
echo line 6 > f
./legit-add a b c d e f
./legit-commit -m 'first commit'
./legit-rm --force a b
rm c
echo line 7 > d
echo line 8 > e
echo line 9 > f
./legit-add d e f
./legit-commit -a -m 'second commit'
./legit-log
./legit-status
