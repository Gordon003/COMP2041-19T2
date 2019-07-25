./legit-init
echo line 1 >a
./legit-add a
./legit-commit -m commit-0
./legit-branch b1
echo line 2 >>a
echo hello >b
./legit-add a b
./legit-commit -m commit-1
./legit-checkout b1
echo line 3 >>a
echo world >b
touch c
./legit-add a b c
./legit-commit -m commit-2
./legit-checkout master

