---
title: "Riassunto Git"
author: ["Andrea Auletta", "Augusto Zanellato"]
date: "11/11/2022"
titlepage: false
...

# Aree

```{ .plantuml width=60% caption="Funzionamento aree Git"}
participant WA as "Working Area"
participant SA as "Staging Area"
participant RL as "Repo Locale"
participant RR as "Repo Remoto"
WA -> SA: git add
SA -> RL: git commit
RL -> RR: git push
RR -> RL: git fetch\ngit pull
RL -> WA: git restore
SA -> WA: git restore --staged
```

# Recap comandi

## Gestione file

```bash
git add nomefile  # Aggiunge il file alla staging area
git add .  # Aggiunge tutta la working area alla staging area
git restore --staged nomefile  # Rimuove un file dalla staging area (preservando le modifiche nella working area però) (si può usare anche . come nome file)
git status  # Mostra lo stato corrente del repository, indicando branch corrente, stato delle modifiche (working vs staging) etc
git diff  # Mostra le modifiche tra working area e staging area
git diff --staged  # Mostra le modifiche tra staging area e HEAD (ultimo commit)
git stash  # Crea uno stash con le modifiche correnti, essenzialmente le "nasconde", utile prima di fare pull in caso di modifiche
git stash apply # Applica l'ultimo stash sulla working area corrente
git stash pop  # Come apply, ma poi elimina lo stash
git clean -dfx  # Elimina i file non tracciati da git e quelli ignorati in .gitignore (NOTA: IRREVERSIBILE)
```

## Commit

```bash
git log  # Mostra il registro (log) dei commit
git commit -m "questo è il messaggio del commit"  # Crea commit esplicitando messaggio del commit
git commit -a -m "questo è il messaggio del commit"  # Crea commit, esplicitando messaggio e committando tutte le modifiche nella working area
```

### NOTA: NON FARE COMMIT DIRETTAMENTE SU MASTER (sennò vi picchio :) )

## Branch

```bash
git checkout nomeBranch  # Passa ad un branch esistente
git checkout -b nomeNuovoBranch  # Crea un nuovo branch e ne fa checkout
git branch -d nomeBranch  # Elimina un branch dal repository locale
git branch -D nomeBranch  # Elimina un branch dal repository locale E DA QUELLO REMOTO
```

## Interazione con repository remoto

```bash
git fetch  # Scarica dal remote tutte le modifiche e i nuovi branch, ma senza applicare.
git pull  # Come fetch, ma applica le modifiche al branch corrente se ce ne sono.
git clone git@github.com:user/repo.git  # Scarica un repository da GitHub
git push --set-upstream origin nomeBranch  # Fa il primo push del branch corrente sul remote
git push  # Fa il push del branch corrente sul remote (non funziona se il branch non è già sul remote)
```

# Workflow Git

```{ .plantuml caption="Workflow Git da adottare"}
:Checkout e pull di master;
:Creazione di branch con nome uguale a ID
della issue su cui si lavora(eg. SL-123);
:Effettuare modifiche e scrittura di eventuali test;
:Effettuare commit con messaggio descrittivo
(eg. //[SL-123] Aggiunta funzionalità bla bla//);
:Effettuare push del proprio branch;
:Aprire una pull request;
repeat :Verificare il successo dei test in CI;
backward:Risolvere i problemi che fanno fallire i test;    
repeat while (I test in CI passano?) is (no)
-> sì;
repeat :Richiedere una review a chi di dovere;
backward:Effettuare i cambiamenti richiesti;
repeat while (Le modifiche vengono approvate?) is (no)
-> sì;
:Accettare la pull request usando 
**Squash and merge** o **Rebase and merge**;
```
