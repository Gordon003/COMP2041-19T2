# Add 4 files
# Commit 3 files
# Force remove 1 file
# Edit 1 file and add it
# Show status
rm -rf .legit
./legit-init
echo line 1 > a
echo line 2 > b
echo line 3 > c
echo line 4 > d
./legit-add a b c
./legit-commit -m 'first commit'
./legit-rm --force a
echo line 5 > b
./legit-add b d
./legit-status
