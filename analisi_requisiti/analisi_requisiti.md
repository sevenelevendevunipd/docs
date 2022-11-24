---
title: "Analisi dei requisiti"
date: "15/11/2022"
responsabile: "Nicola Cecchetto"
redattori: ["Andrea Auletta", "Davide Vitagliano"]
verificatori: ["Mattia Brunello", "Enrik Rucaj", "Antonio Stan", "Augusto Zanellato"]
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
* l'operatore;
* l'applicazione SmartLogViewer;
* l'applicazione SmartLogStatistics.

## SmartLogViewer

* UC1 - Caricamento file di log:
  * Scenario: l'utente vuole caricare un file di log nell'applicazione SmartLogViewer;
  * Attori: Operatore;
  * Precondizioni: l'applicazione è operativa e funzionante;
  * Postcondizioni: il file di log viene caricato correttamente nell'applicazione.
  <!-- inserire diagrammi -->

* UC2 - Visualizzazione tabellare:
  * Scenario: l'utente sceglie di visualizzare il file di log in forma tabellare;
  * Attori: Operatore, SmartLogViewer;
  * Precondizioni: è stato caricato un file di log nell'applicazione [UC1];
  * Postcondizioni: viene visualizzata la tabella.

* UC3 - Visualizzazione grafica:
  * Scenario: l'utente sceglie di visualizzare il file di log in forma grafica;
  * Attori: SmartLogViewer;
  * Precondizioni: è stato caricato un file di log nell'applicazione [UC1];
  * PostCondizioni: viene visualizzato il grafico.

## SmartLogStatistics

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
  etichettatura;
  (che identifica in forma mnemonica la sequenza. i.e. Sequenza di accensione, di spegnimento).

## Requisiti funzionali - SmartLogStatistics

### Capitolato

* SRF1 - L'utente deve poter selezionare i log da analizzare per range di data/ora (min, max, all);
* SRF2 - L'utente deve potere visualizzare le seguenti statistiche come tabella:  <!-- Da sistemare alla prossima
  versione perché risulta ambigua la spiegazione ->
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
      Con la possibilità di selezionare/filtrare gli eventi per Code, Unit/subUnit (cumulativo vs tempo)
    * SRF3.2 - Il numero di occorrenze normalizzato per numero di storici rispetto alle versioni firmware, con la
      possibilità di selezionare gli eventi e la lista dei firmware

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
