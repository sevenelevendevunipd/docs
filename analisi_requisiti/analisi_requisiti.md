---
title: "Analisi dei requisiti"
date: "15/11/2022"
responsabile: "Nicola Cecchetto"
redattori: ["Andrea Auletta", "Mattia Brunello", "Davide Vitagliano"]
verificatori: ["Enrik Rucaj", "Antonio Stan", "Augusto Zanellato"]
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
    cambiamenti: Aggiunti graifci dei casi d'uso e riorganizzazione del documento
  0.3.2:
    autore: Davide Vitagliano
    data: 01/12/2022
    cambiamenti: revisione degli errori

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
  su SmartLogViewer anche delle statistiche come ad esempio la correlazione di alcuni eventi mediante l’uso di grafici;

## Glossario

Alcuni termini potrebbero non risultare consoni al linguaggio usuale quindi questi ultimi vengono inseriti nel
documento *Glossario* assieme alle loro definizioni.

## Riferimenti

<!-- riferimenti al capitolato e alle slide-->

# Requisiti

Questa parte del documento ha lo scopo d'illustrare i vari tipi di requisiti delle applicazioni "SmartLogViewer" e
"SmartLogStatistics".

## Requisiti funzionali - SmartLogViewer

### Capitolato

* VRF1 - L'utente deve poter caricare nell'applicazione un singolo file di log (.csv) presente localmente;
* VRF2 - Deve essere presente una visualizzazione in forma tabellare con le seguenti funzionalità:
  * VRF2.1 - L'applicazione colora degli eventi in base a:
    * VRF2.1.1 - Codice di identificazione (code);
    * VRF2.1.2 - Livello di nidificazione (Unit/SubUnit); <!-- TODO capire cosa dovrebbe essere -->
  * VRF2.2 - Funzioni di filtro e ordinamento sulle colonne in modo simile agli spreadsheet;
  * VRF2.3 - Funzione di ricerca eventi;
  * VRF2.4 - Funzione di raggruppamento e visualizzazione per Data/Ora:
    dato un intervallo di tempo vengono visualizzati tutti gli eventi presenti in quel lasso di tempo;
* VRF3 - Deve essere presente una visualizzazione in forma grafica con le seguenti caratteristiche:
  * VRF3.1 - L’asse X rappresenta il tempo;
  * VRF3.2 - L’asse Y contiene l’insieme degli eventi;
  * VRF3.3 - Un rettangolo “pieno” che si sviluppa sull'asse x indica il periodo di tempo in cui l’evento (indicato
    sull'asse y) è ATTIVO;
  * VRF3.4 - Deve essere possibile selezione l’intervallo di tempo desiderato, con funzioni di select/zoom/span/altro;
  * VRF3.5 - Deve essere possibile filtrare gli eventi in base alle colonne ( Code, Unit/subUnit. etc);
* VRF4 - Deve essere presente una funzione di ricerca di sequenze di eventi note all’interno di un log, con la relativa
  etichettatura; (che identifica in forma mnemonica la sequenza. i.e. Sequenza di accensione, di spegnimento).

## Requisiti funzionali - SmartLogStatistics

### Capitolato

* SRF1 - L'utente deve poter selezionare i log da analizzare per range di data/ora (min, max, all);
* SRF2 - L'utente deve potere visualizzare le seguenti statistiche come tabella:  <!-- Da sistemare alla prossima versione perché risulta ambigua la spiegazione -->
  * SRF2.1 - Intervallo Temporale;
  * SRF2.2 - Numero di storici analizzati;
  * SRF2.3 - Media Numero di eventi per log;
  * SRF2.4 - Max Numero di eventi per log;
  * SRF2.5 - Deviazione Standard Numero di eventi per log;
  * SRF2.6 - Lista degli eventi raggruppata per frequenza di occorrenza (0-1) con possibilità di filtraggio e
    ordinamento per:
    * SRF2.6.1 - Unit/subUnit;
    * SRF2.6.2 - Data e Ora;
    * SRF2.6.3 - Versione firmware;
* SRF3 - L'utente deve poter visualizzare sotto forma di grafico:
  * SRF3.1 - Il numero totale di occorrenze (0-1) rispetto al tempo per singolo evento (velocità):
    * SRF3.1.1 - ci deve essere la possibilità di selezionare/filtrare gli eventi per Code, Unit/subUnit (cumulativo vs tempo);
  * SRF3.2 - Il numero di occorrenze normalizzato per numero di storici rispetto alle versioni firmware:
    * SRF3.2.1 ci deve essere la possibilità di selezionare gli eventi e la lista dei firmware.

## Requisiti qualitativi

### Capitolato

* RQ1 - Il prodotto deve essere sviluppato seguendo le regole descritte nel documento *Norme di progetto*;
* RQ2 - Deve essere fornita la documentazione minima richiesta anche dal corso di "Ingegneria del Software";
* RQ3 - Deve essere fornita una guida per sviluppatori;
* RQ4 - Viene richiesto l'utilizzo di un repository pubblico (GitHub).

## Requisiti di vincoli

### Capitolato

* RV1 - L'interfaccia di visualizzazione deve essere di tipo Web.
* RV2 - È desiderabile l'utilizzo di Python per la parte di analisi dei dati.

## Requisiti sistemi operativi

Non è stato individuato nessun requisito di vincolo riguardante i sistemi operativi da supportare poiché l’applicativo
da sviluppare viene eseguito su browser.

## Requisiti prestazionali

L'azienda non ha posto requisiti prestazionali per le applicazioni.

# Casi d'uso

## Attori

L'applicazione dovrà essere utilizzata dagli operatori interni all'azienda.
Vengono identificati i seguenti attori:

* L'utente.

## SmartLogViewer

### VUC1 - Caricamento file di log (VRF1)

```{ .plantuml caption="VUC1"}
left to right direction
:utente: as o
package "SmartLogViewer"{
usecase VUC1 as "VUC1
Carica log"
}
o--VUC1
```

* Scenario: l'utente vuole caricare un file di log nell'applicazione SmartLogViewer;
* Attore: utente;
* Precondizioni: l'applicazione è operativa e funzionante;
* Postcondizioni: il file di log viene caricato correttamente nell'applicazione.

<!--TODO ROTTO TUTTO MODIFICARE USE CASE (TABELLA E GRAFICO PRESENTI CONTEMPORANEAMENTE) VUC2 e VUC4-->

### VUC2 - Visualizzazione tabellare (VRF2)

```{ .plantuml caption="VUC2"}
left to right direction
:utente: as o
package "SmartLogViewer"{
usecase VUC2 as "VUC2
Visualizza tabella"

' colora celle in base a Code e Unit/SubUnit'
' è l'applicazione che lo fa'
}
o--VUC2
```

* Scenario: l'utente sceglie di visualizzare il file di log in forma tabellare;
* Attore: utente;
* Precondizioni: è stato caricato un file di log nell'applicazione [VUC1];
* Postcondizioni: viene visualizzata la tabella con i dati colorati correttamente.

### VUC3 - Modifica visualizzazione tabella (VRF2.2, VRF2.3, VRF2.4)

```{.plantuml caption="VUC3"}
left to right direction
:utente: as o
package "SmartLogViewer Tabella"{
usecase VUC3.1 as "VUC3.1
Ordinamento e filtri"
usecase VUC3.2 as "VUC3.2
Ricerca eventi tramite keyword"
usecase VUC3.3 as "VUC3.3
Raggruppamento e visualizzazione per data/ora"
}
o--VUC3.1
o--VUC3.2
o--VUC3.3
```

* Scenari:
  1. L'utente applica dei filtri o decide un ordinamento in base alle colonne della tabella;
  2. L'utente ricerca tramite keyword un evento;
  3. L'utente ricerca eventi dato un periodo con inizio e fine;
* Attore: utente;
* Precondizioni: è visualizzata la tabella con i dati [VUC2];
* Postcondizioni: è visualizzata la tabella con i dati selezionati;

### VUC4 - Visualizzazione grafica (VRF3)

```{ .plantuml caption="VUC4"}
left to right direction
:utente: as o
package "SmartLogViewer"{
usecase VUC4 as "VUC4
Visualizza grafico"
}
o--VUC4
```

* Scenario: l'utente sceglie di visualizzare il file di log in forma grafica;
* Attore: utente;
* Precondizioni: è stato caricato un file di log nell'applicazione [VUC1];
* Postcondizioni: viene visualizzato il grafico.

### VUC5 - Selezione dell'intervallo di tempo su grafico (VRF3.4)

```{.plantuml caption="VUC5"}
left to right direction
:utente: as o
package "SmartLogViewer Grafico"{
usecase VUC5 as "VUC5
Selezione intervallo di tempo"
}
o--VUC5
```

* Scenario: l'utente vuole selezionare un intervallo di tempo tramite funzioni apposite;
* Attore: utente;
* Precondizioni: è visualizzato il grafico [VUC4];
* Postcondizioni: viene visualizzato il grafico filtrato secondo le date fornite.

### VUC6 - Filtraggio degli eventi (VRF3.5)

```{.plantuml caption="VUC6"}
left to right direction
:utente: as o
package "SmartLogViewer Grafico"{
usecase VUC6 as "VUC6
Selezione filtri"
}
o--VUC6
```

* Scenario: l'utente vuole filtrare degli eventi sul grafico;
* Attore: utente;
* Precondizioni: è visualizzato il grafico [VUC4];
* Postcondizioni: viene visualizzato il grafico con gli eventi filtrati.

<!--TODO use case VRF4-->

## SmartLogStatistics

### SUC1 - Selezione dei log per range di data/ora (SRF1)

```{ .plantuml caption="SUC1"}
left to right direction
:utente: as o
package "SmartLogStatistics"{
usecase SUC1 as "SUC1
Selezione range di tempo"
}
o--SUC1
```

* Scenario: l'utente sceglie i file di log da visualizzare per range di data/ora (min, max, all);
* Attore: utente;
* Precondizioni: l'applicazione è operativa e funzionante;
* Postcondizioni: i log vengono caricati correttamente nell'applicazione.

<!--TODO ROTTO TUTTO MODIFICARE USE CASE (TABELLA E GRAFICO PRESENTI CONTEMPORANEAMENTE) SUC2 e SUC6-->

### SUC2 - Visualizzazione tabellare (SRF2)

```{ .plantuml caption="SUC2"}
left to right direction
:utente: as o
package "SmartLogStatistics"{
usecase SUC2 as "SUC2
Visualizza tabella"
}
o--SUC2
```

* Scenario: l'utente sceglie di visualizzare i log in forma tabellare;
* Attori: utente;
* Precondizioni: sono stati filtrati i log da visualizzare [SUC1];
* Postcondizioni: viene visualizzata la tabella.

### SUC3 - Visualizzazione lista filtrata per Unit/Subunit (SRF2.6.1)

```{ .plantuml caption="SUC3"}
left to right direction
:utente: as o
package "SmartLogStatistics Tabella"{
usecase SUC3 as "SUC3
Visualizza lista filtrata per Unit/Subunit"
}
o--SUC3
```

* Scenario: L'utente vuole filtrare per unit/subunit la lista di eventi da visualizzare;
* Attori: utente;
* Precondizioni: viene visualizzata la lista degli eventi per frequenza di occorrenza;
* Postcondizioni: viene visualizzata la lista degli eventi filtrata.

### SUC4 - Visualizzazione lista filtrata per data e ora (SRF2.6.2)

```{ .plantuml caption="SUC4"}
left to right direction
:utente: as o
package "SmartLogStatistics Tabella"{
usecase SUC4 as "SUC4
Visualizza lista filtrata per data e ora"
}
o--SUC4
```

* Scenario: L'utente vuole visualizzare la lista di eventi filtrando per data/ora;
* Attori: utente;
* Precondizioni: viene visualizzata la lista degli eventi per frequenza di occorrenza;
* Postcondizioni: viene visualizzata la lista filtrata.

### SUC5 - Visualizzazione lista filtrata per versione firmware (SRF2.6.3)

```{ .plantuml caption="SUC5"}
left to right direction
:utente: as o
package "SmartLogStatistics Tabella"{
usecase SUC5 as "SUC5
Visualizza lista filtrata per versione firmware"
}
o--SUC5
```

* Scenario: L'utente vuole visualizzare la lista di eventi filtrando per versione firmware;
* Attori: utente;
* Precondizioni: viene visualizzata la lista degli eventi per frequenza di occorrenza;
* Postcondizioni: viene visualizzata la lista filtrata.

### SUC6 - Visualizzazione grafica - totale di occorrenze rispetto al tempo(SRF3)

```{ .plantuml caption="SUC6"}
left to right direction
:utente: as o
package "SmartLogStatistics"{
usecase SUC6 as "SUC6
Visualizza grafico"
}
o--SUC6
```

* Scenario: l'utente sceglie di visualizzare i log in forma grafica;
* Attori: utente;
* Precondizioni: sono stati filtrati i log da visualizzare [SUC1];
* Postcondizioni: viene visualizzato il grafico.

### SUC7 - Filtraggio eventi per code, unit, subunit (SRF3.1.1)

```{ .plantuml caption="SUC7"}
left to right direction
:utente: as o
package "SmartLogStatistics Grafico"{
usecase SUC7 as "SUC7
Filtraggio eventi per code, unit, subunit"
}
o--SUC7
```

* Scenario: l'utente vuole filtrare gli eventi per code, unit, subunit;
* Attore: utente;
* Precondizioni: viene visualizzato il grafico [SUC4];
* Postcondizioni: viene visualizzato il grafico con i log filtrati.

### SUC8 - Visualizzazione grafica - Numero di occorrenze rispetto alla versione firmware (SRF3.2)

```{ .plantuml caption="SUC8"}
left to right direction
:utente: as o
package "SmartLogStatistics Grafico"{
usecase SUC8 as "SUC8
Visualizza grafico con numero di occorrenze
rispetto alla versione firmware"
}
o--SUC8
```

* Scenario: l'utente vuole visualizzare il numero di occorrenze rispetto alla versione firmware;
* Attore: utente;
* Precondizioni: sono stati filtrati i log da visualizzare [SUC1];
* Postcondizioni: viene visualizzato il grafico con numero di occorrenze rispetto alla versione firmware.

### SUC9 - Selezione degli eventi e la lista dei firmware (SRF3.2.1)

```{ .plantuml caption="SUC9"}
left to right direction
:utente: as o
package "SmartLogStatistics Grafico"{
usecase SUC9 as "SUC9
Selezione degli eventi e la lista dei firmware"
}
o--SUC9
```

* Scenario: l'utente vuole selezionare degli eventi e la lista dei firmware;
* Attore: utente;
* Precondizioni: viene visualizzato il grafico con numero di occorrenze rispetto alla versione firmware [SUC8];
* Postcondizioni: viene visualizzato il grafico con i filtri applicati.
