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
...

# Introduzione

## Scopo del documento

Lo scopo di questo documento è quello d'illustrare i casi d'uso e i requisiti fondamentali dal gruppo durante l'analisi
riguardanti il capitolato proposto dall'azienda Socomec.
La formulazione segue le regole esposte nel documento *Norme di progetto*

## Scopo del prodotto

Il progetto prevede di sviluppare due applicazioni:

* SmartLogViewer: Permette la visualizzazione di un singolo file di log evidenziandone alcune caratteristiche e fornendo
  dei grafici sull’andamento di alcuni valori;
* SmartLogStatistics: Permette la visualizzazione aggregata di una serie di file di log mostrando oltre ai dati visibili
  su SmartLogViewer anche delle statistiche come ad esempio la correlazione di alcuni eventi mediante l’uso di grafici;

## Glossario

Alcuni termini potrebbero non risultare consoni al linguaggio usuale quindi questi ultimi vengono inseriti nel
documento *Glossario* assieme alle loro definizioni.

## Rifermenti

<!-- riferimenti al capitolato e alle slide-->

# Casi d'uso

Questa sezione descrive i casi d'uso individuati dal gruppo, riferendosi alle funzionalità del prodotto.

## Attori

L'applicazione dovrà essere utilizzata dagli operatori interni all'azienda.
Vengono identificati i seguenti attori:

* l'utente;

```{ .plantuml caption="Attori"}
:Utente:<|--:utente:
:SmartLogViewer:
:SmartLogViewer:
```

## SmartLogViewer

* VUC1 - Caricamento file di log (VRF1):

  ```{ .plantuml caption="VUC1"}
  left to right direction
  :utente: as o
  usecase VUC1 as "VUC1
  Carica log"
  o--VUC1
  ```

  * Scenario: l'utente vuole caricare un file di log nell'applicazione SmartLogViewer;
  * Attore: utente;
  * Precondizioni: l'applicazione è operativa e funzionante;
  * Postcondizioni: il file di log viene caricato correttamente nell'applicazione.

* VUC2 - Visualizzazione tabellare (VRF2):

  ```{ .plantuml caption="VUC2"}
  left to right direction
  :utente: as o
  :SmartLogViewer: as v
  package SmartLogViewer{
  usecase VUC2 as "VUC2
  Visualizza tabella"
  usecase VUC2.1 as "VUC2.1
  colora celle"
  VUC2.1.>VUC2 : <<include>>
  o--VUC2
  VUC2--v
  }
  ```

  * Scenario: l'utente sceglie di visualizzare il file di log in forma tabellare;
  * Attore: utente;
  * Precondizioni: è stato caricato un file di log nell'applicazione [VUC1];
  * Postcondizioni: viene visualizzata la tabella.

* VUC3 - Ordinamento e filtri (VRF2.2):

  * Scenario: l'utente applica dei filtri o decide un ordinamento in base alle colonne della tabella;
  * Attore: utente;
  * Precondizioni: è visualizzata la tabella con i dati [VUC2];
  * Postcondizioni: viene visualizzata la tabella con i filtri applicati.

* VUC4 - Ricerca eventi (VRF2.3):
  * Scenario: l'utente ricerca tramite keyword un evento;
  * Attore: utente;
  * Precondizioni: è visualizzata la tabella con i dati [VUC2];
  * Postcondizioni: viene visualizzate le righe con l'evento ricercato
  
* VUC5 - Raggruppamento e visualizzazione per data/ora (VRF2.4):
  * Scenario: L'utente ricerca eventi dato un periodo con inizio e fine
  * Attore: utente;
  * Precondizioni: è visualizzata la tabella con i dati [VUC2];
  * Postcondizioni: vengono visualizzate le righe della tabella aventi data/ora appartenti all'intervello selezionato

* VUC6 - Visualizzazione grafica (VRF3):

  * Scenario: l'utente sceglie di visualizzare il file di log in forma grafica;
  * Attore: utente;
  * Precondizioni: è stato caricato un file di log nell'applicazione [VUC1];
  * PostCondizioni: viene visualizzato il grafico.

* VUC7 - Selezione dell'intervallo di tempo su grafico (VRF3.4)
  
  * Scenario: l'utente vuole selezionare un intervallo di tempo tramite funzioni;
  * Attore: utente;
  * Precondizioni: è visualizzato il grafico [VUC6];
  * PostCondizioni: viene visualizzato il grafico filtrato secondo le date fornite.

* VUC8 - Filtraggio degli eventi (VRF3.5):
  * Scenario: l'utente vuole filtrare degli eventi sul grafico;
  * Attore: utente;
  * Precondizioni: è visualizzato il grafico [VUC6];
  * PostCondizioni: viene visualizzato il grafico con gli eventi filtrati.

* VUC9 (VRF4) <!-- da sistemare dopo la chiamata-->

## SmartLogStatistics

* SUC1 - Selezione dei log per range di data/ora (SRF1):

  * Scenario: l'utente sceglie i log da prendere in considerazione per i grafici mediante range di data/ora (min, max, all);
  * Attore: utente;
  * Precondizioni: l'applicazione è operativa e funzionante;
  * PostCondizioni: i log vengono caricati correttamente nell'applicazione.

* SUC2 - Visualizzazione tabellare (SRF2):
  * Scenario: l'utente sceglie di visualizzare i log in forma tabellare;
  * Attori: utente;
  * Precondizioni: sono stati filtrati i log da visualizzare [SUC1];
  * PostCondizioni: viene visualizzata la tabella.

* SUC3 - Visualizzazione lista (SRF2.6) <!-- da finire -->

* SUC4 - Visualizzazione grafica - totale di occorrenze rispetto al tempo(SRF3):
  * Scenario: l'utente sceglie di visualizzare i log in forma grafica;
  * Attori: utente;
  * Precondizioni: sono stati filtrati i log da visualizzare [SUC1];
  * PostCondizioni: viene visualizzato il grafico.

* SUC5 - Filtraggio eventi per code, unit, subunit (SRF3.1.1)
  * Scenario: l'utente filtra gli eventi per code, unit, subunit;
  * Attore: utente;
  * Precondizioni: viene visualizzato il grafico [SUC4];
  * PostCondizioni: viene visualizzato il grafico con i log filtrati.

* SUC6 - Visualizzazione grafica - Numero di occorrenze rispetto alle versione firmware
  * Scenario: l'utente sceglie di visualizzare i log in forma grafica;
  * Attore: utente;
  * Precondizioni: sono stati filtrati i log da visualizzare [SUC1];
  * PostCondizioni: viene visualizzato il grafico.

* SUC7 - Selezione degli eventi e la lista dei firmware
  * Scenario: l'utente vuole selezionare degli eventi e/o la lista dei firmaware;
  * Attore: utente;
  * Precondizioni: viene visualizzato il grafico [SUC6];
  * PostCondizioni: viene visualizzato il grafico con i log selezionati.

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
  * SRF3.1 - Il numero totale di occorrenze (0->1) rispetto al tempo per singolo evento (velocità).
    * SRF3.1.1 - ci deve essere la possibilità di selezionare/filtrare gli eventi per Code, Unit/subUnit (cumulativo vs tempo)
  * SRF3.2 - Il numero di occorrenze normalizzato per numero di storici rispetto alle versioni firmware
    * SRF3.2.1 ci deve essere la  possibilità di selezionare gli eventi e la lista dei firmware

## Requisiti qualitativi

### Capitolato

* RQ1 - Il prodotto deve essere sviluppato seguendo le regole descritte nel documento *norme_progetto*;
* RQ2 - Deve essere fornita la documentazione minima richiesta anche dal corso di "Ingegneria del Software";
* RQ3 - Deve essere fornita una guida per sviluppatori;
* RQ4 - Viene richiesto l'utilizzo di un repository pubblico (GitHub).

Decisioni interne:

## Requisiti di vincoli

### Capitolato

* RV1 - L'interfaccia di visualizzazione deve essere di tipo Web

## Requisiti sistemi operativi

Non è stato individuato nessun requisito di vincolo riguardante i sistemi operativi da supportare poiché l’applicativo
da sviluppare viene eseguito su browser.

## Requisiti prestazionali

L'azienda non ha posto requisiti prestazionali per le applicazioni.
