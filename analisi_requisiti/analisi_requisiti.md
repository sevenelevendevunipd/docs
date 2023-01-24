---
title: "Analisi dei requisiti"
date: "15/11/2022"
responsabile: "Nicola Cecchetto"
redattori: ["Andrea Auletta", "Mattia Brunello", "Davide Vitagliano"]
verificatori: ["Antonio Stan", "Augusto Zanellato", "Enrik Rucaj"]
toc: true
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
    cambiamenti: Revisione degli errori
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
  0.6.0:
    autore: Nicola Cecchetto
    data: 08/12/2022
    cambiamenti: Revisione post-conferenza con azienda
  0.6.1:
    autore: Mattia Brunello
    data: 16/12/2022
    cambiamenti: Divisone UC3.4 in UC3.4.1, UC3.4.2 e UC3.4.3. Aggiunti OUC3 e OUC4
  0.6.2:
    autore: Nicola Cecchetto
    data: 18/12/2022
    cambiamenti: Aggiunta casi d'errore
  0.6.3:
    autore: Davide Vitagliano
    data: 19/12/2022
    cambiamenti: Revisione degli errori e identificazione corretta attori
  0.6.4:
    autore: Enrik Rucaj
    data: 19/12/2022
    cambiamenti: Revisione di tutto il documento
  0.6.5:
    autore: Andrea Auletta
    data: 20/12/2022
    cambiamenti: Aggiornamento post-conferenza con azienda
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

* [Slide sull'analisi dei requisiti tratte dalle lezioni del professor T. Vardanega](https://www.math.unipd.it/~tullio/IS-1/2022/Dispense/T06.pdf)
* [Slide sugli Use Case tratte dalle lezioni del professor R. Cardin](https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf)

# Requisiti

Questa parte del documento ha lo scopo d'illustrare i vari tipi di requisiti delle applicazioni "SmartLogViewer" e
"SmartLogStatistics".

## Requisiti funzionali - SmartLogViewer

* VRF1 - L'utente deve poter caricare nell'applicazione un singolo file di log (.csv) presente localmente;
* VRF2 - Deve essere presente una visualizzazione in forma tabellare con le seguenti funzionalità:
  * VRF2.1 - L'applicazione colora degli eventi in base a:
    * VRF2.1.1 - Codice di identificazione (code);
    * VRF2.1.2 - Livello di nidificazione (16 Unit/16 livelli per SubUnit);
  * VRF2.2 - Funzioni di filtro e ordinamento sulle colonne in modo simile agli spreadsheet;
  * VRF2.3 - Funzione di ricerca per codice eventi;
  * VRF2.4 - Funzione di ricerca e visualizzazione per Data/Ora: dato un intervallo di tempo vengono visualizzati tutti gli eventi presenti in quel lasso di tempo;
* VRF3 - Deve essere presente una visualizzazione in forma grafica con le seguenti caratteristiche:
  * VRF3.1 - L’asse X rappresenta il tempo;
  * VRF3.2 - L’asse Y contiene l’insieme degli eventi;
  * VRF3.3 - Un rettangolo “pieno” che si sviluppa sull'asse x indica il periodo di tempo in cui l’evento (indicato
    sull'asse y) è ATTIVO;
  * VRF3.4 - Deve essere possibile cambiare l'intervallo temporale del grafico con le seguenti funzioni:
    * VRF3.4.1 - Select: selezione degli estremi temporali;
    * VRF3.4.2 - Zoom: zoom in/out;
    * VRF3.4.3 - Span: scroll orizzontale;
  * VRF3.5 - Deve essere possibile filtrare gli eventi in base alle colonne ( Code, Unit/subUnit, data/ora);
* VRF4 - Deve essere presente una funzione di ricerca di sequenze di eventi note all’interno di un log, con la relativa
  etichettatura (gli eventi devono essere ordinati ma non obbligatoriamente consecutivi l'uno all'altro).

## Requisiti funzionali - SmartLogStatistics

* SRF1 - L'utente deve poter selezionare i log da analizzare per range di data/ora (min, max, all);
  * SRF1.1 - L'utente deve poter aggiungere/togliere altri file di log a quelli già selezionati precedentemente;
* SRF2 - L'utente deve potere visualizzare le seguenti statistiche in un prospetto:
  * SRF2.1 - Intervallo Temporale (data più vecchia - data più recente);
  * SRF2.2 - Numero di log analizzati;
  * SRF2.3 - Media Numero di eventi tra i log;
  * SRF2.4 - Max Numero di eventi tra i log;
  * SRF2.5 - Deviazione Standard Numero di eventi tra i log;
  * SRF2.6 - Lista degli eventi raggruppata per frequenza di occorrenza (0-1) con possibilità di filtraggio e
    ordinamento per:
    * SRF2.6.1 - Unit/subUnit;
    * SRF2.6.2 - Data/Ora;
    * SRF2.6.3 - Versione firmware;
* SRF3 - L'utente deve poter visualizzare sotto forma di grafico:
  * SRF3.1 - Il numero totale di occorrenze (0-1) rispetto al tempo per singolo evento:
    * SRF3.1.1 - ci deve essere la possibilità di selezionare/filtrare gli eventi per Code, Unit/subUnit (cumulativo
      vs tempo);
  * SRF3.2 - Il numero di occorrenze rispetto alle versioni firmware per singolo evento:
    * SRF3.2.1 - ci deve essere la possibilità di selezionare gli eventi e la lista dei firmware.

## Requisiti opzionali

* RO1 - L'utente deve poter esportare un file che visualizza tabelle e sue varianti grafiche;
* RO2 - L'utente deve poter eliminare simultaneamente tutti i filtri applicati precedentemente;
* VRO1 - L'utente deve poter visualizzare altri tipi di grafici;
* VRO2 - L'utente deve poter ricercare sequenze più o meno note con relativa etichettatura dato un limite di tempo
  (gli eventi ricercati possono essere anche in ordine sparso ma devono avere una correlazione);
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

Entrambe le applicazioni non hanno bisogno di essere eseguite su un sistema operativo specifico.

* VRSO1 - L'applicazione web SmartLogViewer viene eseguita solo lato client;
* SRSO1 - L'applicazione web SmartLogStatistics è basata su un modello client-server.
<!-- trovare un modo sensato per dire sta roba-->

## Requisiti prestazionali

* VRP1 - I tempi computazionali non devono essere eccessivi per entrambe le applicazioni.

# Casi d'uso

## Attori

Le applicazioni dovranno essere utilizzate dagli utenti interni all'azienda: SmartLogViewer viene utilizzata principalmente
dai tecnici, mentre SmartLogStatistics da altri impiegati. <!--non ricordo il termine usato da loro-->
In aggiunta, è presente un database dei log accessibile agli impiegati.
Vengono identificati i seguenti attori:

* Il tecnico;
* L'analista;

```{ .plantuml caption="Attori"}
:Utente: as u
u <|-- :Tecnico:
u <|-- :Analista:
```

## SmartLogViewer

```{ .plantuml caption="SmartLogViewer"}
left to right direction
:Tecnico: as t
package "SmartLogViewer"{
usecase VUC1 as "VUC1
Caricamento File"
usecase VUC1.1 as "VUC1.1
File non Compatibile"
usecase VUC2 as "VUC2
Visualizzazione Tabella"
usecase VUC3 as "VUC3
Modifica Visualizzazione Tabella"
usecase VUC4 as "VUC4
Ricerca Eventi Ordinati"
usecase VUC4.1 as "VUC4.1
Sequenza di Eventi non Trovata"
usecase VUC5 as "VUC5
Visualizzazione Grafico"
usecase VUC6 as "VUC6
Modifica Visualizzazione Grafico"
}
t--VUC6
t--VUC5
VUC4 <.. VUC4.1 : <<extend>>
t--VUC4
t--VUC3
t--VUC2
t--VUC1
VUC1 <.. VUC1.1 : <<extend>>
```

### VUC1 - Caricamento file di log (VRF1)

* Scenario: l'utente vuole caricare un file di log da visualizzare nell'applicazione SmartLogViewer;
* Attore: tecnico;
* Precondizioni: l'applicazione è operativa e funzionante;
* Postcondizioni: il file appena caricato viene processato correttamente dall'applicazione.

### VUC1.1 File non compatibile

* Scenario: l'utente carica un file non compatibile nell'applicazione SmartLogViewer;
* Attore: tecnico;
* Precondizioni: l'applicazione è operativa e funzionante;
* Postcondizioni: l'applicazione non accetta il file caricato.

### VUC2 - Visualizzazione Tabella

```{ .plantuml caption="VUC2"}
left to right direction
:Tecnico: as z
package "VUC2 Visualizzazione Tabella"{
usecase VUC2.1 as "VUC2.1
Visualizzazione Singolo Elemento"
}
z--VUC2.1
```

* Scenario: l'utente vuole visualizzare i dati del log in una tabella;
* Attore: tecnico;
* Precondizioni: è stato caricato correttamente un file di log [VUC1];
* Postcondizioni: viene visualizzata la tabella con i dati;

#### VUC2.1 - Visualizzazione Singolo Elemento

```{ .plantuml caption="VUC2.1"}
left to right direction
:Tecnico: as y
package "VUC2.1 Visualizzazione Singolo Elemento"{
usecase VUC2.1.1 as "VUC2.1.1
Visualizzazione Data/Ora"
usecase VUC2.1.2 as "VUC2.1.2
Visualizzazione Codice Evento"
usecase VUC2.1.3 as "VUC2.1.3
Visualizzazione Unit/Subunit"
usecase VUC2.1.4 as "VUC2.1.4
Visualizzazione Firmware"
usecase VUC2.1.5 as "VUC2.1.5
Visualizzazione Descrizione"
usecase VUC2.1.6 as "VUC2.1.6
Visualizzazione Stato (ON/OFF)"
}
y--VUC2.1.1
y--VUC2.1.2
y--VUC2.1.3
y--VUC2.1.4
y--VUC2.1.5
y--VUC2.1.6
```

* Scenario: l'utente vuole visualizzare i dati di una singola riga del log;
* Attore: tecnico;
* Precondizioni: è stato caricato correttamente un file di log [VUC1];
* Postcondizioni: viene visualizzata riga con i dati;

##### VUC2.1.1 - Visualizzazione Data/Ora

* Scenario: l'utente vuole visualizzare la data e l'ora di una riga del log;
* Attore: tecnico;
* Precondizioni: è stato caricato correttamente un file di log [VUC1];
* Postcondizioni: vengono visualizzati data e ora della riga del log;

##### VUC2.1.2 - Visualizzazione Codice Evento

* Scenario: l'utente vuole visualizzare il codice evento di una riga del log;
* Attore: tecnico;
* Precondizioni: è stato caricato correttamente un file di log [VUC1];
* Postcondizioni: viene visualizzato il codice evento della riga del log;

##### VUC2.1.3 - Visualizzazione Unit/Subunit

* Scenario: l'utente vuole visualizzare la Unit e la Subunit di una riga del log;
* Attore: tecnico;
* Precondizioni: è stato caricato correttamente un file di log [VUC1];
* Postcondizioni: vengono visualizzati Unit e Subunit della riga del log;

##### VUC2.1.4 - Visualizzazione Firmware

* Scenario: l'utente vuole visualizzare il firmware di una riga del log;
* Attore: tecnico;
* Precondizioni: è stato caricato correttamente un file di log [VUC1];
* Postcondizioni: viene visualizzato il fimware della riga del log;

##### VUC2.1.5 - Visualizzazione Descrizione

* Scenario: l'utente vuole visualizzare la descrizione di una riga del log;
* Attore: tecnico;
* Precondizioni: è stato caricato correttamente un file di log [VUC1];
* Postcondizioni: viene visualizzata la descrizione della riga del log;

##### VUC2.1.6 - Visualizzazione Stato

* Scenario: l'utente vuole visualizzare lo stato di una riga del log;
* Attore: tecnico;
* Precondizioni: è stato caricato correttamente un file di log [VUC1];
* Postcondizioni: viene visualizzato lo stato della riga del log;

### VUC3 - Modifica Visualizzazione della Tabella (VRF2.2, VRF2.3, VRF2.4)

```{ .plantuml caption="VUC3 Modifica visualizzazione tabella"}
left to right direction
:Tecnico: as c
package "VUC3 Modifica Visualizzazione Tabella"{
usecase VUC3.1 as "VUC3.1
Aggiunta Filtro"
usecase VUC3.2 as "VUC3.2
Ordinamento per Colonna"
usecase VUC3.3 as "VUC3.3
Ricerca Evento"
usecase VUC3.3.1 as "VUC3.3.1
Evento non Trovato"
}
c--VUC3.1
c--VUC3.2
c--VUC3.3
VUC3.3 <.. VUC3.3.1 : <<extend>>
```

* Scenari: l'utente vuole modificare la visualizzazione dei dati in tabella;
* Attore: tecnico;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella aggiornata.

#### VUC3.1 - Aggiunta filtro

```{ .plantuml caption="VUC3.1"}
left to right direction
:Tecnico: as r
package "VUC3.1 Aggiunta Filtro"{
usecase VUC3.1.1 as "VUC3.1.1
Per Intervallo Temporale"
usecase VUC3.1.1.1 as "VUC3.1.1.1
Intervallo Non Corretto"
usecase VUC3.1.2 as "VUC3.1.2
Per Unit/Subunit"
usecase VUC3.1.3 as "VUC3.1.3
Per Firmware"
}
r-- VUC3.1.1
VUC3.1.1 <.. VUC3.1.1.1 : <<extend>>
r-- VUC3.1.2
r-- VUC3.1.3
```

* Scenari: l'utente vuole applicare un filtro alle righe della tabella;
* Attore: tecnico;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con i dati filtrati.

##### VUC3.1.1 - Per Intervallo Temporale

* Scenari: l'utente vuole applicare un intervallo temporale ai dati visualizzati in tabella;
* Attore: tecnico;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con i dati che rispettano l'intervallo temporale.

##### VUC3.1.1.1 - Intervallo Non Corretto

* Scenario: l'intervallo temporale fornito dall'utente non è valido (data d'inizio posteriore alla data di fine);
* Attore: tecnico;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzato un messaggio d'errore (intervallo non corretto).

##### VUC3.1.2 - Per Unit/Subunit

* Scenari: l'utente vuole visualizzare solo le righe di una particolare Unit/Subunit;
* Attore: tecnico;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con i dati della Unit/Subunit selezionata.

##### VUC3.1.3 - Per Firmware

* Scenari: l'utente vuole visualizzare solo le righe di un particolare firmware;
* Attore: tecnico;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con i dati del firmware selezionato.

#### VUC3.2 - Ordinamento per Colonna

* Scenario: l'utente vuole applicare un ordinamento in base a una colonna della tabella;
* Attore: tecnico;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con i dati ordinati.

#### VUC3.3 - Ricerca tramite Codice Evento

* Scenario: l'utente vuole ricercare le tuple con un codice evento;
* Attore: tecnico;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con gli eventi con codice corrispondente ai parametri di ricerca.

#### VUC3.3.1 - Evento non Trovato

* Scenario: l'utente vuole ricercare le tuple con un codice evento che non fa parte dei dati;
* Attore: tecnico;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzato un messaggio di errore (evento non trovato).

### VUC4 - Ricerca Eventi Ordinati (VRF4)

* Scenario: l'utente vuole cercare una sequenza di eventi ordinati ma non necessariamente consecutivi;
* Attore: tecnico;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: vengono evidenziate le tuple con codice corrispondente ai parametri di ricerca.

### VUC4.1 Sequenza di Eventi non Trovata

* Scenario: almeno uno degli eventi ricercati dall'utente non è presente nel file di log e quindi l'intera sequenza di eventi non può essere trovata;
* Attore: tecnico;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene comunicato all'utente che la sequenza richiesta non è presente nel file di log.

### VUC5 - Visualizzazione Grafico

* Scenario: l'utente vuole visualizzare gli eventi del log in un grafico;
* Attore: tecnico;
* Precondizioni: è stato caricato correttamente un file di log [VUC1];
* Postcondizioni: viene visualizzata il grafico;

### VUC6 Modifica visualizzazione dei grafici (VRF3.4.2, VRF3.4.3)

```{ .plantuml caption="VUC6"}
left to right direction
:Tecnico: as d
package "VUC6 Modifica Visualizzazione Grafico"{
usecase VUC6.1 as "VUC6.1
Zoom"
usecase VUC6.2 as "VUC6.2
Scroll"
usecase VUC6.3 as "VUC6.3
Selezione intervallo temporale"
usecase VUC6.3.1 as "VUC6.3.1
Intervallo non Corretto"
usecase VUC6.4 as "VUC6.4
Aggiunta Filtro"
}
d--VUC6.1
d--VUC6.2
d--VUC6.3
VUC6.3 <.. VUC6.3.1 : <<extend>>
d--VUC6.4
```

* Scenario: l'utente vuole modificare la visualizzazione del grafico;
* Attore: tecnico;
* Precondizioni: è stato visualizzato il grafico [VUC5];
* Postcondizioni: viene visualizzato il grafico modificato.

#### VUC6.1 - Zoom dell'Intervallo Temporale (VRF3.4.2)

* Scenario: l'utente vuole visualizzare il grafico in un sottointervallo temporale più ristretto o più ampio;
* Attore: tecnico;
* Precondizioni: è stato visualizzato il grafico [VUC5];
* Postcondizioni: viene visualizzato il grafico con sull'asse x gli estremi temporali modificati.

#### VUC6.2 - Scroll Orizzontale (VRF3.4.3)

* Scenario: l'utente vuole visualizzare il grafico in un sottointervallo temporale successivo o precedente (a quello selezionato);
* Attore: tecnico;
* Precondizioni: è stato visualizzato il grafico [VUC5];
* Postcondizioni: viene visualizzato il grafico con sull'asse x gli estremi temporali modificati.

#### VUC6.3 - Selezione Intervallo Temporale

* Scenario: l'utente vuole visualizzare il grafico in un intervallo selezionato;
* Attore: tecnico;
* Precondizioni: è stato visualizzato il grafico [VUC5];
* Postcondizioni: viene visualizzato il grafico con sull'asse x gli estremi temporali modificati.

#### VUC6.3.1 - Intervallo non Corretto

* Scenario: l'intervallo temporale fornito dall'utente non è valido (data d'inizio posteriore alla data di fine);
* Attore: tecnico;
* Precondizioni: è stata visualizzato il grafico con i dati [VUC5];
* Postcondizioni: viene visualizzato un messaggio d'errore (intervallo non corretto).

#### VUC6.4 - Aggiunta filtro

```{ .plantuml caption="VUC6.4"}
left to right direction
:Tecnico: as e
package "VUC6.4 Aggiunta Filtro"{
usecase VUC6.4.1 as "VUC6.4.1
Per Unit/Subunit"
usecase VUC6.4.2 as "VUC6.4.2
Per Firmware"
}
e-- VUC6.4.1
e-- VUC6.4.2
```

* Scenario: l'utente vuole applicare un filtro agli eventi visualizzati nel grafico;
* Attore: tecnico;
* Precondizioni: è stata visualizzato il grafico con i dati [VUC5];
* Postcondizioni: viene visualizzato il grafico modificato.

##### VUC6.4.1 - Per Unit/Subunit

* Scenari: l'utente vuole visualizzare solo gli eventi di una particolare Unit/Subunit;
* Attore: tecnico;
* Precondizioni: è stata visualizzata il grafico con i dati [VUC5];
* Postcondizioni: viene visualizzato il grafico con gli eventi della Unit/Subunit selezionata.

##### VUC6.4.2 - Per Firmware

* Scenari: l'utente vuole visualizzare solo gli eventi di un particolare firmware;
* Attore: tecnico;
* Precondizioni: è stata visualizzata il grafico con i dati [VUC5];
* Postcondizioni: viene visualizzato il grafico con i dati del firmware selezionato.

## SmartLogStatistics

```{ .plantuml caption="SmartLogStatistics"}
left to right direction
:Analista: as t
package "SmartLogStatistics"{
usecase SUC1 as "SUC1
Caricamento Log per Intervallo Temporale"
usecase SUC1.1 as "SUC1.1
Intervallo non Corretto"
usecase SUC2 as "SUC2
Visualizzazione Prospetto"
usecase SUC3 as "SUC3
Modifica Visualizzazione Lista"
usecase SUC4 as "SUC4
Visualizzazione Grafico"
usecase SUC5 as "SUC5
Modifica Visualizzazione Grafico"
}
SUC1 <.. SUC1.1 : <<extend>>
t--SUC1
t--SUC2
t--SUC3
t--SUC4
t--SUC5
```

### SUC1 - Caricamento dei Log per Intervallo Temporale (SRF1, SRF1.1)

* Scenario: l'utente sceglie l'intervallo temporale iniziale per raccogliere i dati dai file di log;
* Attore: analista;
* Precondizioni: l'applicazione è operativa e funzionante;
* Postcondizioni: i log vengono caricati correttamente nell'applicazione SmartLogStatistics.

### SUC1.1 - Intervallo non Corretto

* Scenari: l'intervallo temporale fornito dall'utente non è valido (data d'inizio antecedente alla data di fine);
* Attore: analista;
* Precondizioni: l'applicazione è operativa e funzionante;
* Postcondizioni: viene notificato all'utente che le date fornite non sono valide.

### SUC2 - Visualizzazione Prospetto

```{ .plantuml caption="SUC2"}
left to right direction
:Analista: as f
package "SUC2 Visualizzazione Prospetto"{
usecase SUC2.1 as "SUC2.1
Visualizzazione Intervallo Temporale"
usecase SUC2.2 as "SUC2.2
Visualizzazione Numero di Log Analizzati"
usecase SUC2.3 as "SUC2.3
Visualizzazione Media Numero Eventi tra i Log"
usecase SUC2.4 as "SUC2.4
Visualizzazione Massimo Numero Eventi tra i Log"
usecase SUC2.5 as "SUC2.5
Visualizzazione Deviazione Standard Numero Eventi tra i Log"
usecase SUC2.6 as "SUC2.6
Visualizzazione Lista di Occorrenze Eventi"
}
f--SUC2.1
f--SUC2.2
f--SUC2.3
f--SUC2.4
f--SUC2.5
f--SUC2.6
```

* Scenario: l'utente vuole visualizzare un prospetto contenente dei dati relativi all'insieme di file di log analizzati.
* Attore: analista;
* Precondizioni: sono stati caricati dei file di log [SUC1];
* Postcondizioni: viene visualizzato il prospetto.

#### SUC2.1 - Visualizzazione Intervallo Temporale

* Scenario: l'utente vuole visualizzare l'intervallo temporale selezionato.
* Attore: analista;
* Precondizioni: sono stati caricati dei file di log [SUC1];
* Postcondizioni: viene visualizzato l'intervallo temporale.

#### SUC2.2 - Visualizzazione Numero di Log Analizzati

* Scenario: l'utente vuole visualizzare il numero totale di log analizzati.
* Attore: analista;
* Precondizioni: sono stati caricati dei file di log [SUC1];
* Postcondizioni: viene visualizzato il numero totale di log analizzati.

#### SUC2.3 - Visualizzazione Media Numero Eventi tra i Log

* Scenario: l'utente vuole visualizzare il numero medio di eventi tra i log.
* Attore: analista;
* Precondizioni: sono stati caricati dei file di log [SUC1];
* Postcondizioni: viene visualizzato il numero medio di eventi.

#### SUC2.4 - Visualizzazione Massimo Numero Eventi tra i Log

* Scenario: l'utente vuole visualizzare il numero massimo di eventi tra i log.
* Attore: analista;
* Precondizioni: sono stati caricati dei file di log [SUC1];
* Postcondizioni: viene visualizzato il numero massimo di eventi.

#### SUC2.5 - Visualizzazione Deviazione Standard Numero Eventi tra i Log

* Scenario: l'utente vuole visualizzare la deviazione standard del numero di eventi tra i log.
* Attore: analista;
* Precondizioni: sono stati caricati dei file di log [SUC1];
* Postcondizioni: viene visualizzato la deviazione standar del numero di eventi.

#### SUC2.6 - Visualizzazione Lista di Occorrenze Eventi

```{ .plantuml caption="SUC2.6"}
left to right direction
:Analista: as a
package "SUC2.6 Visualizzazione Lista di Occorrenze Eventi"{
usecase SUC2.6.1 as "SUC2.6.1
Visualizzazione Singolo Elemento della Lista"
}
a--SUC2.6.1
```

* Scenario: l'utente vuole visualizzare una lista di tutti gli eventi con le occorrenze.
* Attore: analista;
* Precondizioni: sono stati caricati dei file di log [SUC1];
* Postcondizioni: viene visualizzato la lista di occorrenze eventi.

##### SUC2.6.1 - Visualizzazione Singolo Elemento della Lista

```{ .plantuml caption="SUC2.6.1"}
left to right direction
:Analista: as b
package "SUC2.6.1 Visualizzazione Singolo Elemento della Lista"{
usecase SUC2.6.1.1 as "SUC2.6.1.1
Visualizzazione Codice Evento"
usecase SUC2.6.1.2 as "SUC2.6.1.2
Visualizzazione Numero Occorrenze"
}
b--SUC2.6.1.1
b--SUC2.6.1.2
```

* Scenario: l'utente vuole visualizzare un singolo elemento della lista di occorrenze eventi;
* Attore: analista;
* Precondizioni: sono stati caricati dei file di log [SUC1];
* Postcondizioni: viene visualizzato l'elemento della lista di occorrenze eventi.

###### SUC2.6.1.1 - Visualizzazione Codice Evento

* Scenario: l'utente vuole visualizzare il codice dell'evento;
* Attore: analista;
* Precondizioni: sono stati caricati dei file di log [SUC1];
* Postcondizioni: viene visualizzato il codice dell'evento.

###### SUC2.6.2.2 - Visualizzazione Numero Occorrenze

* Scenario: l'utente vuole visualizzare quante volte l'evento è avvenuto nei log;
* Attore: analista;
* Precondizioni: sono stati caricati dei file di log [SUC1];
* Postcondizioni: viene visualizzato il numero di occorrenze dell'evento.

### SUC3 - Modifica Visualizzazione Lista (SRF2.6, SRF3.1.1) <!-- DA QUI IN POI NON E' CORRETTO (bisogna capire che cosa fare con i filtri e l'ordinamento) -->

```{ .plantuml caption="SUC2"}
left to right direction
:Analista: as c
package "SUC3 Modifica visualizzazione Lista"{
usecase SUC3.1 as "SUC3.1
Aggiunta filtro"
usecase SUC3.1.3 as "SUC3.1.3
per versione firmware"
usecase SUC3.1.2 as "SUC3.1.2
per intervallo temporale"
usecase SUC3.1.2.1 as "SUC3.1.2.1
intervallo non corretto"
usecase SUC3.1.1 as "SUC3.1.1
Per unit/subunit"
usecase SUC3.2 as "SUC3.2
Ordinamento"
usecase SUC3.2.1 as "SUC3.2.1
Per Codice Evento"
usecase SUC3.2.2 as "SUC3.2.2
Per Numero Occorrenze"
}
c--SUC3.1
c--SUC3.2
SUC3.1<|-- SUC3.1.1
SUC3.1<|-- SUC3.1.2
SUC3.1.2 <.. SUC3.1.2.1 : <<extend>>
SUC3.1<|-- SUC3.1.3
SUC3.2<|-- SUC3.2.1
SUC3.2<|-- SUC3.2.2
```

* Scenari:
  1. l'utente applica dei filtri in base ai valori presenti nella tabella del prospetto [SUC2.1];
  2. l'utente applica un ordinamento in base ai valori presenti nella tabella del prospetto [SUC2.2];
* Attore: analista;
* Precondizioni: è stata visualizzata la tabella con i dati [SUC2];
* Postcondizioni: viene visualizzata la tabella con i dati selezionati;

#### SUC2.1 - Visualizzazione tabella filtrata

* Scenari:
  1. l'utente aggiunge dei filtri in base al valore nelle celle della tabella (SUC2.1.1);
  2. l'utente rimuove dei filtri in base al valore nelle celle della tabella (SUC2.1.2);
* Attori: analista;
* Precondizioni: è stata visualizzata la tabella con i dati [SUC2];
* Postcondizioni: viene visualizzata la tabella degli eventi filtrati.

#### SUC2.2 - Ordinamento per colonna

* Scenari: l'utente applica un ordinamento in base a una colonna della tabella;
* Attori: analista;
* Precondizioni: è stata visualizzata la tabella con i dati [SUC2];
* Postcondizioni: viene visualizzata la tabella degli eventi ordinati.

#### SUC2.3 - Raggruppamento tramite data/ora

* Scenari:
  1. l'utente vuole visualizzare il grafico in un intervallo temporale  [SUC2.3.1];
  2. l'intervallo temporale fornito dall'utente non è valido (data d'inizio posteriore alla data di fine) [SUC2.3.2];
* Attore: tecnico;
* Precondizioni: è stata visualizzata la tabella con i dati [SUC2];
* Postcondizioni: viene visualizzato il grafico con sull'asse x gli estremi temporali selezionati o una notifica per l'utente.

##### SUC2.3.1 Intervallo temporale corretto

* Scenari: l'utente filtra per data/ora la tabella di eventi da visualizzare;
* Attori: analista;
* Precondizioni: è stata visualizzata la tabella con i dati [SUC2];
* Postcondizioni: viene visualizzata la tabella degli eventi filtrata.

##### SUC2.3.2 Intervallo temporale non corretto

* Scenari: l'intervallo temporale fornito dall'utente non è valido (data inizio posteriore a data fine);
* Attori: analista;
* Precondizioni: è stata visualizzata la tabella con i dati [SUC2];
* Postcondizioni: viene notificato all'utente che le date inserite non sono corrette.

### SUC3 - Modifica visualizzazione grafica (SRF3.1.1, SRF3.2.1)

```{ .plantuml caption="SUC3"}
left to right direction
:Analista: as o
package "SmartLogStatistics Grafico"{
usecase SUC3.1 as "SUC3.1
Filtro"
usecase SUC3.1.2 as "SUC3.1.2
Filtro codice"
usecase SUC3.1.1 as "SUC3.1.1
Filtro unit/subUnit"
usecase SUC3.2 as "SUC3.2
Selezione eventi e firmware"
usecase SUC3.2.2 as "SUC3.2.2
Selezione lista firmware"
usecase SUC3.2.1 as "SUC3.2.1
Selezione eventi"
}
o--SUC3.1
o--SUC3.2
SUC3.1<|--SUC3.1.1
SUC3.1<|--SUC3.1.2
SUC3.2 ..> SUC3.2.1 : <<include>>
SUC3.2 ..> SUC3.2.2 : <<include>>
```

* Scenari:
  1. l'utente applica dei filtri in base al valore nelle celle della tabella [SUC3.1];
  2. l'utente seleziona gli eventi e la lista firmware da visualizzare [SUC3.2];
* Attore: analista;
* Precondizioni: è stato visualizzato il grafico con numero di occorrenze rispetto alla versione firmware [SUC2];
* Postcondizioni: viene visualizzato il grafico con i filtri applicati.

#### SUC3.1 - Visualizzazione grafico filtrato

* Scenari:
  1. l'utente filtra per codice la tabella di eventi da visualizzare (SUC3.1.1);
  2. l'utente filtra per unit/subUnit la tabella di eventi da visualizzare (SUC3.1.2);
* Attori: analista;
* Precondizioni: è stato visualizzato il grafico con numero di occorrenze rispetto alla versione firmware [SUC2];
* Postcondizioni: viene visualizzata il grafico degli eventi filtrato.

#### SUC3.2 - Visualizzazione grafico filtrato

* Scenari:
  1. l'utente seleziona gli eventi da visualizzare (SUC3.2.1);
  2. l'utente seleziona la lista di firmware da visualizzare (SUC3.2.2);
* Attori: analista;
* Precondizioni: è stato visualizzato il grafico con numero di occorrenze rispetto alla versione firmware [SUC2];
* Postcondizioni: viene visualizzata il grafico con solo gli eventi e i firmware selezionati.

## Opzionali

### OUC1 - Esportazione file che visualizza tabelle e varianti grafiche (RO1)

```{ .plantuml caption="OUC1"}
left to right direction
package "SmartLogViewer/SmartLogStatistics"{
usecase OUC1 as "OUC1
Esportazione file"
}
:Tecnico:--OUC1
:Analista:--OUC1
```

* Scenari: l'utente esporta un file dove verranno visualizzate le tabelle e le sue varianti grafiche;
* Attore: tecnico, analista;
* Precondizioni: è stato selezionato almeno un file di log nell'applicazione [VUC1] o [SUC1];
* Postcondizioni: viene esportato il file con la tabella e le forme grafiche.

### OUC2 - L'utente vuole eliminare i filtri applicati in precedenza (RO2)

```{ .plantuml caption="OUC2"}
left to right direction
package "SmartLogViewer/SmartLogStatistics"{
usecase OUC2 as "OUC2
Ripristino filtri"
}
:Tecnico:--OUC2
:Analista:--OUC2
```

* Scenari: l'utente elimina i filtri applicati precedentemente;
* Attore: tecnico, analista;
* Precondizioni: vengono applicati i filtri o le selezioni; [VUC2] [VUC3] [SUC2] [SUC3]
* Postcondizioni: i filtri vengono ripristinati.

### OUC3 - Ricerca sequenze di eventi non ordinati o parziali (VR02)

```{ .plantuml caption="OUC3"}
left to right direction
:Tecnico: as i
package "SmartLogViewer"{
usecase OUC3 as "OUC3
Ricerca sequenza di eventi"
usecase OUC3.1 as "OUC3.1
Trovati tutti gli eventi"
usecase OUC3.2 as "OUC3.2
Almeno un evento non trovato"
}
i--OUC3
OUC3<|--OUC3.1
OUC3<|--OUC3.2
```

* Scenari:
  1. l'utente ricerca una sequenza di eventi non ordinati o parziali [OUC3.1];
  2. l'utente inserisce almeno un evento non presente nel log [OUC3.2];
* Attore: tecnico;
* Precondizioni: viene visualizzata la tabella [VUC1];
* Postcondizioni: vengono evidenziate le tuple con gli eventi con codice corrispondente ai parametri di ricerca o una notifica per l'utente.

#### OUC3.1 Tutti gli eventi sono presenti

* Scenari: l'utente ricerca una sequenza di eventi non ordinati;
* Attore: tecnico;
* Precondizioni: viene visualizzata la tabella [VUC1];
* Postcondizioni: vengono evidenziate le tuple con gli eventi con codice corrispondente ai parametri di ricerca.

#### OUC3.2 Almeno un evento non presente

* Scenari: almeno un evento indicato dall'utente non è stato trovato all'interno del log;
* Attore: tecnico;
* Precondizioni: viene visualizzata la tabella [VUC1];
* Postcondizioni: vengono notificati all'utente quali eventi non sono stati trovati.

### OUC4 - Visualizzazione della matrice di correlazione (SR01.1)

```{ .plantuml caption="OUC4"}
left to right direction
:Analista: as i
package "SmartLogStatistics"{
usecase OUC4 as "OUC4
Visualizza matrice"
}
i--OUC4
```

* Scenari: l'utente decide di visualizzare la matrice di correlazione;
* Attore: analista;
* Precondizioni: è stato caricato almeno un file di log nell'applicazione[SUC1];
* Postcondizioni: viene visualizzata la matrice di correlazione.
