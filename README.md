Inicijalizacija repozitorija
```
echo "# Rad01" >> README.md
git init
git add README.md
git commit -m "First commit"
git branch -M main
git remote -v
git remote set-url origin https://token@github.com/Zverkan/Rad01.git
git push -u origin main
```
Alternativno kada popravim logiranje
```
echo "# Rad01" >> README.md
git init
git add README.md
git commit -m "First commit"
git branch -M main
git remote add origin https://github.com/Zverkan/Rad01.git
git push -u origin main
```

Za provjeravanja statusa u folderu
```
git status
```

Dodavanje fileova u repozitorij
```
git add functions.g graph.g hyperovals.g init.g main.g o-polynomials.g ovals.g pointnumbers.g random.g timers.g 
git status
git commit -m "First commit"
git push
```

Ako se se dogodile promjene na repozitoriju na webu, onda se te promjene lokalno updateaju s
```
git pull
```

Ako si na drugom racunalu i zelis klonirati i nastaviti raditi na repozotoriju, odi u neki folder
```
git clone https://github.com/Zverkan/Rad01.git
```
ili ako to ne radi onda
```
git clone https://token@github.com/Zverkan/Rad01.git
```
Ovo ce napraviti folder `./Rad01` i u njemu cijeli repozitorij

Za sve fileove koje imaju promjene treba napraviti
```
git add hyperovals.g 
git commit -m "Test commit"
git push 
```
i s pushanjem te se promjene updateaju na webu
