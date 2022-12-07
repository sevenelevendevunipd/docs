---
title: "Analisi dei requisiti"
date: "15/11/2022"
responsabile: "Nicola Cecchetto"
redattori: ["Andrea Auletta", "Mattia Brunello", "Davide Vitagliano","Enrik Rucaj"]
verificatori: ["Antonio Stan", "Augusto Zanellato"]
versioni:
  0.0.1:
    autore: Andrea Auletta
    data: 15/11/2022
    cambiamenti: Prima stesura
  0.1.0:
    autore: Andrea Auletta
    data: 16/11/2022
    cambiamenti: Stesura requisiti espliciti del capitolato
  0.2.0:
    autore: Davide Vitagliano
    data: 24/11/2022
    cambiamenti: Stesura parziale Use Cases per SmartLogViewer
  0.3.0:
    autore: Andrea Auletta
    data: 25/11/2022
    cambiamenti: Completata prima stesura dei casi d'uso
  0.3.1:
    autore: Mattia Brunello
    data: 26/11/2022
    cambiamenti: Aggiunti grafici dei casi d'uso e riorganizzazione del documento
  0.3.2:
    autore: Davide Vitagliano
    data: 01/12/2022
    cambiamenti: revisione degli errori
  0.4.0:
    autore: Enrik Rucaj
    data: 04/12/2022
    cambiamenti: Aggiunti requisiti impliciti e opzionali
  0.5.0:
    autore: Davide Vitagliano
    data: 06/12/2022
    cambiamenti: Aggiunti e riscritti use cases
  0.5.1:
    autore: Augusto Zanellato
    data: 07/12/2022
    cambiamenti: Verifica e correzione errori minori
...

# Introduzione

## Scopo del documento

Lo scopo di questo documento è quello d'illustrare i casi d'uso e i requisiti fondamentali dal gruppo durante l'analisi
riguardanti il capitolato proposto dall'azienda Socomec.
La formulazione segue le regole esposte nel documento *Norme di progetto*.

## Scopo del prodotto

Il progetto prevede di sviluppare due applicazioni:

* SmartLogViewer: Permette la visualizzazione di un singolo file di log evidenziandone alcune caratteristiche e fornendo
  dei grafici sull’andamento di alcuni valori;
* SmartLogStatistics: Permette la visualizzazione aggregata di una serie di file di log mostrando oltre ai dati visibili
  su SmartLogViewer anche delle statistiche come ad esempio la correlazione di alcuni eventi mediante l’uso di grafici.

## Glossario

Alcuni termini potrebbero non risultare consoni al linguaggio usuale quindi questi ultimi vengono inseriti nel
documento *Glossario*[^1] assieme alle loro definizioni.

[^1]: Il glossario è in corso di stesura e risulta non completo al momento.

## Riferimenti

<!-- riferimenti al capitolato e alle slide-->

# Requisiti

Questa parte del documento ha lo scopo d'illustrare i vari tipi di requisiti delle applicazioni "SmartLogViewer" e
"SmartLogStatistics".

## Requisiti funzionali - SmartLogViewer

* VRF1 - L'utente deve poter caricare nell'applicazione un singolo file di log (.csv) presente localmente;
* VRF2 - Deve essere presente una visualizzazione in forma tabellare con le seguenti funzionalità:
  * VRF2.1 - L'applicazione colora degli eventi in base a:
    * VRF2.1.1 - Codice di identificazione (code);
    * VRF2.1.2 - Livello di nidificazione (Unit/SubUnit);
  * VRF2.2 - Funzioni di filtro e ordinamento sulle colonne in modo simile agli spreadsheet;
  * VRF2.3 - Funzione di ricerca per codice eventi;
  * VRF2.4 - Funzione di raggruppamento e visualizzazione per Data/Ora: dato un intervallo di tempo vengono
    visualizzati tutti gli eventi presenti in quel lasso di tempo;
* VRF3 - Deve essere presente una visualizzazione in forma grafica con le seguenti caratteristiche:
  * VRF3.1 - L’asse X rappresenta il tempo;
  * VRF3.2 - L’asse Y contiene l’insieme degli eventi;
  * VRF3.3 - Un rettangolo “pieno” che si sviluppa sull'asse x indica il periodo di tempo in cui l’evento (indicato
    sull'asse y) è ATTIVO;
  * VRF3.4 - Deve essere possibile selezione l’intervallo di tempo desiderato, con funzioni di select/zoom/span/altro;
  * VRF3.5 - Deve essere possibile filtrare gli eventi in base alle colonne ( Code, Unit/subUnit, etc);
* VRF4 - Deve essere presente una funzione di ricerca di sequenze di eventi note all’interno di un log, con la relativa
  etichettatura; (che identifica in forma mnemonica la sequenza. i.e. Sequenza eventi di accensione).

## Requisiti funzionali - SmartLogStatistics

* SRF1 - L'utente deve poter selezionare i log da analizzare per range di data/ora (min, max, all);
  * SRF1.1 - L'utente deve poter aggiungere/togliere altri file di log a quelli già selezionati precedentemente;
* SRF2 - L'utente deve potere visualizzare le seguenti statistiche come tabella:
  * SRF2.1 - Intervallo Temporale;
  * SRF2.2 - Numero di storici analizzati;
  * SRF2.3 - Media Numero di eventi per log;
  * SRF2.4 - Max Numero di eventi per log;
  * SRF2.5 - Deviazione Standard Numero di eventi per log;
  * SRF2.6 - Lista degli eventi raggruppata per frequenza di occorrenza (0-1) con possibilità di filtraggio e
    ordinamento per:
    * SRF2.6.1 - Unit/subUnit;
    * SRF2.6.2 - Data/Ora;
    * SRF2.6.3 - Versione firmware;
* SRF3 - L'utente deve poter visualizzare sotto forma di grafico:
  * SRF3.1 - Il numero totale di occorrenze (0-1) rispetto al tempo per singolo evento (velocità):
    * SRF3.1.1 - ci deve essere la possibilità di selezionare/filtrare gli eventi per Code, Unit/subUnit (cumulativo
      vs tempo);
  * SRF3.2 - Il numero di occorrenze normalizzato per numero di storici rispetto alle versioni firmware:
    * SRF3.2.1 - ci deve essere la possibilità di selezionare gli eventi e la lista dei firmware.

## Requisiti opzionali

* RO1 - L'utente deve poter esportare un file che visualizza tabelle e sue varianti grafiche;
* RO2 - L'utente deve poter eliminare simultaneamente tutti i filtri applicati precedentemente;
* VRO1 - L'utente deve poter visualizzare altri tipi di grafici;
* VRO2 - L'utente deve poter ricercare sequenze più o meno note con relativa etichettatura;
* SRO1 - L'utente deve poter visualizzare un grafico matrice di correlazione che mostri l'indice di correlazione tra
  coppie di eventi;
  * SRO1.1 - Dovrà essere possibile selezionare gli eventi per code e unit/subunit.

## Requisiti qualitativi

* RQ1 - Il prodotto deve essere sviluppato seguendo le regole descritte nel documento *Norme di progetto*;
* RQ2 - Deve essere fornita la documentazione minima richiesta anche dal corso di "Ingegneria del Software";
* RQ3 - Deve essere fornita una guida per sviluppatori;
* RQ4 - Viene richiesto l'utilizzo di un repository pubblico (GitHub).

## Requisiti di vincoli

* RV1 - L'interfaccia di visualizzazione deve essere di tipo Web;
* RV2 - È desiderabile l'utilizzo di Python per la parte di analisi dei dati.

## Requisiti sistemi operativi

Non è stato individuato nessun requisito di vincolo riguardante i sistemi operativi da supportare poiché l’applicativo
da sviluppare viene eseguito su browser.

## Requisiti prestazionali

L'azienda non ha posto requisiti prestazionali per le applicazioni.

# Casi d'uso

## Attori

L'applicazione dovrà essere utilizzata dagli utenti interni all'azienda, senza distinzioni gerarchiche.
Vengono identificati i seguenti attori:

* L'utente;
* SmartLogViewer;
* SmartLogStatistics.

```{ .plantuml caption="Attori"}
:Utente:
actor :Applicazione: as a
a <|-- :SmartLogViewer:
a <|-- :SmartLogStatistics:
```

## UC1 - Caricamento dei file di log

```{ .plantuml caption="UC1"}
left to right direction
:utente: as o
package  "SmartLog"{
usecase UC1 as "UC1
Caricamento file di log"
}
o--UC1
```

* Scenario: l'utente vuole caricare uno o più file di log nell'applicazione;
* Attore: utente;
* Precondizioni: l'applicazione è operativa e funzionante;
* Postcondizioni: i file di log vengono caricati correttamente.

## UC2 - Selezione dell'applicazione

```{ .plantuml caption="UC2"}
left to right direction
:utente: as o
package "SmartLog"{
usecase UC2.1 as "UC2.1
Selezione SmartLogViewer"
usecase UC2.2 as "UC2.2
Selezione SmartLogStatistics"
}
o--UC2.1
o--UC2.2
```

* Scenario:
  1. l'utente vuole selezionare l'applicazione SmartLogViewer [UC2.1];
  2. l'utente vuole selezionare l'applicazione SmartLogStatistics [UC2.2];
* Attore: utente;
* Precondizioni: è stato caricato nell'applicazione almeno un file di log [UC1];
* Postcondizioni: l'applicazione scelta viene selezionata correttamente ed è possibile scegliere tra i file di log
  caricati.

### UC2.1 - Selezione di SmartLogViewer

* Scenario: l'utente vuole selezionare l'applicazione SmartLogViewer;
* Attore: utente;
* Precondizioni: è stato caricato nell'applicazione almeno un file di log [UC1];
* Postcondizioni: l'applicazione SmartLogViewer viene caricata correttamente ed è possibile scegliere un solo file di
  log.

### UC2.2 - Selezione di SmartLogStatistics

* Scenario: l'utente vuole selezionare l'applicazione SmartLogStatistics;
* Attore: utente;
* Precondizioni: è stato caricato nell'applicazione almeno un file di log [UC1];
* Postcondizioni: l'applicazione SmartLogStatistics viene caricata correttamente ed è possibile scegliere uno o più file
  di log.

## SmartLogViewer

### VUC1 - Selezione file di log (VRF1)

```{ .plantuml caption="VUC1"}
left to right direction
:utente: as o
:SmartLogViewer: as v
package "SmartLogViewer"{
usecase VUC1 as "VUC1
Selezione log"
}
o--VUC1
VUC1--v
```

* Scenario: l'utente seleziona un file di log da visualizzare nell'applicazione SmartLogViewer;
* Attore: utente, SmartLogViewer;
* Precondizioni: l'applicazione è operativa e funzionante [UC1];
* Postcondizioni: i dati del file di log vengono caricati correttamente nell'applicazione SmartLogViewer.

### VUC2 - Inizializzazione della tabella e del grafico (VRF2, VRF3)

```{ .plantuml caption="VUC2"}
left to right direction
:SmartLogViewer: as v
package "SmartLogViewer"{
usecase VUC2 as "VUC2
Inizializzazione"
usecase VUC2.2 as "VUC2.2
Visualizzazione grafico"
usecase VUC2.1 as "VUC2.1
Visualizzazione tabella"
}
v--VUC2
VUC2 ..> VUC2.1 : <<include>>
VUC2 ..> VUC2.2 : <<include>>
```

* Scenario:
  1. l'applicazione SmartLogViewer visualizza la tabella relativa ai dati del file di log caricato [VUC2.1];
  2. l'applicazione SmartLogViewer visualizza il grafico relativo ai dati del file di log caricato [VUC2.2];
* Attore: SmartLogViewer;
* Precondizioni: è stato caricato un file di log nell'applicazione [VUC1];
* Postcondizioni: vengono inizializzati correttamente i dati del file di log.

#### VUC2.1 Visualizzazione della tabella

* Scenario: l'applicazione SmartLogViewer visualizza la tabella relativa ai dati del file di log caricato;
* Attore: SmartLogViewer;
* Precondizioni: è stato caricato un file di log nell'applicazione [VUC1];
* Postcondizioni: viene visualizzata correttamente la tabella con i dati del file di log.

#### VUC2.2 Visualizzazione del grafico

* Scenario: l'applicazione SmartLogViewer visualizza il grafico relativo ai dati del file di log caricato;
* Attore: SmartLogViewer;
* Precondizioni: è stato caricato un file di log nell'applicazione [VUC1];
* Postcondizioni: viene visualizzato correttamente il grafico con i dati del file di log.

### VUC3 - Modifica visualizzazione della tabella (VRF2.2, VRF2.3, VRF2.4, VRF4)

```{ .plantuml caption="VUC3"}
left to right direction
:utente: as o
package "SmartLogViewer Tabella"{
usecase VUC3.1 as "VUC3.1
Filtro"
usecase VUC3.1.2 as "VUC3.1.2
Rimozione filtro"
usecase VUC3.1.1 as "VUC3.1.1
Aggiunta filtro"
usecase VUC3.2 as "VUC3.2
Ordinamento"
usecase VUC3.3 as "VUC3.3
Ricerca sequenza eventi"
usecase VUC3.4 as "VUC3.4
Raggruppamento per data/ora"
}
o--VUC3.1
o--VUC3.2
o--VUC3.3
o--VUC3.4
VUC3.1 ..> VUC3.1.1 : <<include>>
VUC3.1 ..> VUC3.1.2 : <<include>>
```

* Scenari:
  1. l'utente applica dei filtri in base al valore nelle celle della tabella [VUC3.1];
  2. l'utente applica un ordinamento in base a una colonna della tabella [VUC3.2];
  3. l'utente ricerca tuple tramite una sequenza di codici evento, con la possibilità di effettuare una ricerca
     semplice inserendo un solo codice [VUC3.3];
  4. l'utente ricerca tuple con data/ora contenuta in un lasso di tempo selezionato [VUC3.4];
* Attore: utente;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con i dati selezionati.

#### VUC3.1 - Filtri per valore

* Scenari:
  1. l'utente aggiunge dei filtri in base al valore nelle celle della tabella;
  2. l'utente rimuove dei filtri in base al valore nelle celle della tabella;
* Attore: utente;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con i dati filtrati.

#### VUC3.2 - Ordinamento per colonna

* Scenari: l'utente applica un ordinamento in base a una colonna della tabella;
* Attore: utente;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con i dati ordinati.

#### VUC3.3 - Ricerca tramite sequenza di codice evento

* Scenari: l'utente ricerca tuple tramite una sequenza di codici evento;
* Attore: utente;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con gli eventi con codice corrispondente ai parametri di ricerca.

#### VUC3.4 - Ricerca tramite data/ora

* Scenari: l'utente ricerca tuple con data/ora contenuta in un lasso di tempo selezionato;
* Attore: utente;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con gli eventi con data/ora corrispondente ai parametri di ricerca.

### VUC4 - Selezione dell'intervallo temporale sul grafico (VRF3.4)

```{ .plantuml caption="VUC4"}
left to right direction
:utente: as o
package "SmartLogViewer Grafico"{
usecase VUC4 as "VUC4
Selezione intervallo temporale sul grafico"
}
o--VUC4
```

* Scenario: l'utente vuole visualizzare il grafico in un intervallo temporale scelto tramite funzioni apposite;
* Attore: utente;
* Precondizioni: è stato visualizzato il grafico [VUC2];
* Postcondizioni: viene visualizzato il grafico con sull'asse x gli estremi temporali selezionati.

## SmartLogStatistics

### SUC1 - Selezione dei log per range di data/ora (SRF1, SRF1.1)

```{ .plantuml caption="SUC1"}
:utente: as o
:SmartLogStatistics: as s
package "SmartLogStatistics"{
usecase SUC1 as "SUC1
Selezione log per range data/ora"
usecase SUC1.1 as"SUC1.1
Aggiunta log"
usecase SUC1.2 as"SUC1.2
Rimozione log"
}
o-right-SUC1
SUC1-right-s
SUC1 <.. SUC1.1 : <<extends>>
SUC1 <.. SUC1.2 : <<extends>>
```

* Scenario:
  1. l'utente seleziona i file di log da visualizzare nell'applicazione SmartLogLogistics per range di data/ora;
  2. l'utente aggiunge o toglie log da visualizzare a quelli già presenti;
* Attore: utente, SmartLogStatistics;
* Precondizioni: l'applicazione è operativa e funzionante;
* Postcondizioni: i log vengono caricati correttamente nell'applicazione SmartLogStatistics.

### SUC2 - Inizializzazione delle tabelle e dei grafici (SRF2, SRF3)

```{ .plantuml caption="SUC2"}
left to right direction
:SmartLogStatistics: as s
package "SmartLogStatistics"{
usecase SUC2 as "SUC2
Inizializzazione"
usecase SUC2.2 as "SUC2.2
Visualizzazione grafico"
usecase SUC2.1 as "SUC2.1
Visualizzazione tabella"
}
s--SUC2
SUC2 ..> SUC2.1 : <<include>>
SUC2 ..> SUC2.2 : <<include>>
```

* Scenario:
  1. l'applicazione SmartLogStatistics visualizza le tabelle relative ai dati dei file di log caricati [SUC2.1];
  2. l'applicazione SmartLogStatistics visualizza i grafici relativi ai dati dei file di log caricati [SUC2.2];
* Attore: SmartLogStatistics;
* Precondizioni: è stato caricato almeno un file di log nell'applicazione [SUC1];
* Postcondizioni: vengono inizializzati correttamente i dati dei file di log.

#### SUC2.1 - Visualizzazione della tabella

* Scenario: l'applicazione SmartLogStatistics visualizza la tabella relativa ai dati dei file di log caricati;
* Attore: SmartLogStatistics;
* Precondizioni: è stato caricato almeno un file di log nell'applicazione [SUC1];
* Postcondizioni: viene visualizzata correttamente la tabella con i dati dei file di log.

#### SUC2.2 - Visualizzazione del grafico

* Scenario: l'applicazione SmartLogStatistics visualizza il grafico relativo ai dati dei file di log caricati;
* Attore: SmartLogStatistics;
* Precondizioni: è stato caricato almeno un file di log nell'applicazione [SUC1];
* Postcondizioni: viene visualizzato correttamente il grafico con i dati dei file di log.

### SUC3 - Modifica visualizzazione della tabella (SRF2.6, SRF3.1.1)

```{ .plantuml caption="SUC3"}
left to right direction
:utente: as o
package "SmartLogStatistics Tabella"{
usecase SUC3.1 as "SUC3.1
Filtro"
usecase SUC3.1.3 as "SUC3.1.3
Filtro su versione firmware"
usecase SUC3.1.2 as "SUC3.1.2
Filtro su unit/subUnit"
usecase SUC3.1.1 as "SUC3.1.1
Filtro su data/ora"
usecase SUC3.2 as "SUC3.2
Ordinamento"
usecase SUC3.2.3 as "SUC3.2.3
Ordinamento per versione firmware"
usecase SUC3.2.2 as "SUC3.2.2
Ordinamento per unit/subUnit"
usecase SUC3.2.1 as "SUC3.2.1
Ordinamento per versione firmware"
}
o--SUC3.1
o--SUC3.2
SUC3.1<|--SUC3.1.1
SUC3.1<|--SUC3.1.2
SUC3.1<|--SUC3.1.3
SUC3.2<|--SUC3.2.1
SUC3.2<|--SUC3.2.2
SUC3.2<|--SUC3.2.3
```

* Scenari:
  1. l'utente applica dei filtri in base al valore nelle celle della tabella [SUC3.1];
  2. l'utente applica un ordinamento in base a una colonna della tabella [SUC3.2];
* Attore: utente;
* Precondizioni: è stata visualizzata la tabella con i dati [SUC2];
* Postcondizioni: viene visualizzata la tabella con i dati selezionati;

#### SUC3.1 - Visualizzazione tabella filtrata

* Scenario:
  1. l'utente filtra per unit/subUnit la tabella di eventi da visualizzare;
  2. l'utente filtra per data/ora la tabella di eventi da visualizzare;
  3. l'utente filtra per versione del firmware la tabella di eventi da visualizzare;
* Attori: utente;
* Precondizioni: è stata visualizzata la tabella con i dati [SUC2];
* Postcondizioni: viene visualizzata la tabella degli eventi filtrata.

#### SUC3.2 - Visualizzazione tabella ordinata

* Scenario:
  1. l'utente ordina per unit/subUnit la tabella di eventi da visualizzare;
  2. l'utente ordina per data/ora la tabella di eventi da visualizzare;
  3. l'utente ordina per versione del firmware la tabella di eventi da visualizzare;
* Attori: utente;
* Precondizioni: è stata visualizzata la tabella con i dati [SUC2];
* Postcondizioni: viene visualizzata la tabella degli eventi ordinati.

### SUC4 - Modifica visualizzazione grafica (SRF3.1.1, SRF3.2.1)

```{ .plantuml caption="SUC4"}
left to right direction
:utente: as o
package "SmartLogStatistics Grafico"{
usecase SUC4.1 as "SUC4.1
Filtro"
usecase SUC4.1.1 as "SUC4.1.1
Filtro unit/subUnit"
usecase SUC4.1.2 as "SUC4.1.2
Filtro code"
usecase SUC4.2 as "SUC4.2
Selezione eventi e firmware"
usecase SUC4.2.2 as "SUC4.2.2
Selezione lista firmware"
usecase SUC4.2.1 as "SUC4.2.1
Selezione eventi"
}
o--SUC4.1
o--SUC4.2
SUC4.1<|--SUC4.1.1
SUC4.1<|--SUC4.1.2
SUC4.2 ..> SUC4.2.1 : <<include>>
SUC4.2 ..> SUC4.2.2 : <<include>>
```

* Scenario:
  1. l'utente applica dei filtri in base al valore nelle celle della tabella [SUC4.1];
  2. l'utente seleziona gli eventi e la lista firmware da visualizzare [SUC4.2];
* Attore: utente;
* Precondizioni: è stato visualizzato il grafico con numero di occorrenze rispetto alla versione firmware [SUC2];
* Postcondizioni: viene visualizzato il grafico con i filtri applicati.

#### SUC4.1 - Visualizzazione grafico filtrato

* Scenario:
  1. l'utente filtra per code la tabella di eventi da visualizzare;
  2. l'utente filtra per unit/subUnit la tabella di eventi da visualizzare;
* Attori: utente;
* Precondizioni: è stato visualizzato il grafico con numero di occorrenze rispetto alla versione firmware [SUC2];
* Postcondizioni: viene visualizzata il grafico degli eventi filtrato.

#### SUC4.2 - Visualizzazione grafico filtrato

* Scenario:
  1. l'utente seleziona gli eventi da visualizzare;
  2. l'utente seleziona la lista di firmware da visualizzare;
* Attori: utente;
* Precondizioni: è stato visualizzato il grafico con numero di occorrenze rispetto alla versione firmware [SUC2];
* Postcondizioni: viene visualizzata il grafico con solo gli eventi e i firmware selezionati.

## Opzionali

### OUC1 - Esportazione file che visualizza tabelle e varianti grafiche (RO1)

```{ .plantuml caption="OUC1"}
left to right direction
:utente: as o
:SmartLogViewer: as v
:SmartLogStatistics: as s
package "SmartLogViewer/SmartLogStatistics"{
usecase OUC1 as "OUC1
Esportazione file"
}
o--OUC1
OUC1--v
OUC1--s
```

* Scenario: l'utente esporta un file dove verranno visualizzate le tabelle e le sue varianti grafiche;
* Attore: utente, SmartLogViewer, SmartLogStatistics;
* Precondizioni: è stato selezionato almeno un file di log nell'applicazione [VUC1] o [SUC1];
* Postcondizioni: viene esportato il file con la tabella e le forme grafiche.

### OUC2 - L'utente vuole eliminare i filtri applicati in precedenza (RO2)

```{ .plantuml caption="OUC2"}
left to right direction
:utente: as o
:SmartLogViewer: as v
:SmartLogStatistics: as s
package "SmartLogViewer/SmartLogStatistics"{
usecase OUC2 as "OUC2
Ripristino filtri"
}
o--OUC2
OUC2--v
OUC2--s
```

* Scenario: l'utente elimina i filtri applicati precedentemente;
* Attore: utente;
* Precondizioni: vengono applicati i filtri o le selezioni; [VUC3] [VUC4] [SUC3] [SUC4]
* Postcondizioni: i filtri vengono ripristinati.
