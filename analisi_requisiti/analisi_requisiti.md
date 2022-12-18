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
    * VRF2.1.2 - Livello di nidificazione (16 Unit/16 livelli per SubUnit):
  * VRF2.2 - Funzioni di filtro e ordinamento sulle colonne in modo simile agli spreadsheet;
  * VRF2.3 - Funzione di ricerca per codice eventi;
  * VRF2.4 - Funzione di raggruppamento e visualizzazione per Data/Ora: dato un intervallo di tempo vengono
    visualizzati tutti gli eventi presenti in quel lasso di tempo;
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

* VRSO1 - L'applicazione web SmartLogViewer viene eseguita solo lato client;
* SRSO1 - L'applicazione web SmartLogStatistics è basata su un modello client-server.
<!-- trovare un modo sensato per dire sta roba-->

## Requisiti prestazionali

L'azienda non ha posto requisiti prestazionali per le applicazioni.

# Casi d'uso

## Attori

Le applicazioni dovrà essere utilizzata dagli utenti interni all'azienda: SmartLogViewer viene utilizzata principalmente
dai tecnici, mentre SmartLogStatistics da altri impiegati. <!--non ricordo il termine usato da loro-->
In aggiunta, è presente un database dei log accessibile agli impiegati.
Vengono identificati i seguenti attori:

* Il tecnico;
* L'impiegato;
* Il database dei log.

```{ .plantuml caption="Attori"}
:Utente: as u
u <|-- :Tecnico:
u <|-- :Impiegato:
:DatabaseLog:
```

## SmartLogViewer

### VUC1 - Caricamento file di log (VRF1)

```{ .plantuml caption="VUC1"}
left to right direction
:Tecnico: as t
package "SmartLogViewer"{
usecase VUC1 as "VUC1
Caricamento file"
usecase VUC1.2 as "VUC1.2
File non compatibile"
usecase VUC1.1 as "VUC1.1
File di log"
}
t--VUC1
VUC1 <|-- VUC1.1
VUC1 <|-- VUC1.2
```

* Scenari:
  1. l'utente carica un file di log compatibile da visualizzare nell'applicazione SmartLogViewer [VUC1.1];
  2. l'utente carica un file non compatibile nell'applicazione SmartLogViewer [VUC1.2];
* Attore: tecnico;
* Precondizioni: l'applicazione è operativa e funzionante;
* Postcondizioni: il file appena caricato viene processato correttamente dall'applicazione.

#### VUC1.1 File di log compatibile

* Scenari: l'utente carica un file di log compatibile da visualizzare nell'applicazione SmartLogViewer;
* Attore: tecnico;
* Precondizioni: l'applicazione è operativa e funzionante;
* Postcondizioni: i dati del file appena caricato vengono visualizzati correttamente nell'applicazione.

#### VUC1.2 File non compatibile

* Scenari: l'utente carica un file non compatibile nell'applicazione SmartLogViewer;
* Attore: tecnico;
* Precondizioni: l'applicazione è operativa e funzionante;
* Postcondizioni: l'applicazione non accetta il file caricato.

### VUC2 - Inizializzazione della tabella e del grafico (VRF2, VRF3)

```{ .plantuml caption="VUC2"}
left to right direction
:Tecnico: as t
package "SmartLogViewer"{
usecase VUC2 as "VUC2
Inizializzazione"
usecase VUC2.2 as "VUC2.2
Visualizzazione grafico"
usecase VUC2.1 as "VUC2.1
Visualizzazione tabella"
}
t--VUC2
VUC2 ..> VUC2.1 : <<include>>
VUC2 ..> VUC2.2 : <<include>>
```

* Scenari:
  1. l'applicazione SmartLogViewer visualizza la tabella relativa ai dati del file di log caricato [VUC2.1];
  2. l'applicazione SmartLogViewer visualizza il grafico relativo ai dati del file di log caricato [VUC2.2];
* Attore: tecnico;
* Precondizioni: è stato caricato un file di log nell'applicazione [VUC1.1];
* Postcondizioni: vengono inizializzati correttamente i dati del file di log.

#### VUC2.1 Visualizzazione della tabella

* Scenari: l'applicazione SmartLogViewer visualizza la tabella relativa ai dati del file di log caricato;
* Attore: tecnico;
* Precondizioni: è stato caricato un file di log nell'applicazione [VUC1.1];
* Postcondizioni: viene visualizzata correttamente la tabella con i dati del file di log.

#### VUC2.2 Visualizzazione del grafico

* Scenari: l'applicazione SmartLogViewer visualizza il grafico relativo ai dati del file di log caricato;
* Attore: tecnico;
* Precondizioni: è stato caricato un file di log nell'applicazione [VUC1.1];
* Postcondizioni: viene visualizzato correttamente il grafico con i dati del file di log.

### VUC3 - Modifica visualizzazione della tabella (VRF2.2, VRF2.3, VRF2.4, VRF4)

```{ .plantuml caption="VUC3"}
left to right direction
:Tecnico: as t
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
Ricerca  eventi"
usecase VUC3.4 as "VUC3.4
Raggruppamento per data/ora"
usecase VUC3.4.1 as "VUC3.4.1
Selezione intervallo temporale"
usecase VUC3.4.1.1 as "VUC3.4.1.1
Intervallo temporale corretto"
usecase VUC3.4.1.2 as "VUC3.4.1.2
Intervallo temporale non corretto"
usecase VUC3.4.2 as "VUC3.4.2
Zoom intervallo temporale"
usecase VUC3.4.3 as "VUC3.4.3
Scroll orizzontale"
}
t--VUC3.1
t--VUC3.2
t--VUC3.3
t--VUC3.4
VUC3.1 ..> VUC3.1.1 : <<include>>
VUC3.1 ..> VUC3.1.2 : <<include>>
VUC3.4 ..> VUC3.4.1 : <<include>>
VUC3.4.1 ..> VUC3.4.1.1 : <<include>>
VUC3.4.1 ..> VUC3.4.1.2 : <<include>>
VUC3.4 ..> VUC3.4.2 : <<include>>
VUC3.4 ..> VUC3.4.3 : <<include>>
```

* Scenari:
  1. l'utente applica dei filtri in base al valore nelle celle della tabella [VUC3.1];
  2. l'utente applica un ordinamento in base a una colonna della tabella [VUC3.2];
  3. l'utente ricerca tuple tramite un codice evento [VUC3.3];
  4. l'utente ricerca tuple con data/ora contenuta in un lasso di tempo selezionato [VUC3.4];
* Attore: tecnico;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con i dati selezionati.

#### VUC3.1 - Filtri per valore

* Scenari:
  1. l'utente aggiunge dei filtri in base al valore nelle celle della tabella;
  2. l'utente rimuove dei filtri in base al valore nelle celle della tabella;
* Attore: tecnico;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con i dati filtrati.

#### VUC3.2 - Ordinamento per colonna

* Scenari: l'utente applica un ordinamento in base a una colonna della tabella;
* Attore: tecnico;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con i dati ordinati.

#### VUC3.3 - Ricerca tramite codice evento

* Scenari: l'utente ricerca tuple tramite un codice evento;
* Attore: tecnico;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con gli eventi con codice corrispondente ai parametri di ricerca.

#### VUC3.4 - Ricerca tramite data/ora

* Scenari: l'utente ricerca tuple con data/ora contenuta in un lasso di tempo selezionato;
* Attore: tecnico;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con gli eventi con data/ora corrispondente ai parametri di ricerca.

##### VUC3.4.1 - Selezione dell'intervallo temporale (VRF3.4.1)

* Scenari:
  1. l'utente vuole visualizzare il grafico in un intervallo temporale;
  2. l'intervallo temporale fornito dall'utente non è valido (data d'inizio posteriore alla data di fine)
* Attore: tecnico;
* Precondizioni: è stato visualizzato il grafico [VUC2];
* Postcondizioni: viene visualizzato il grafico con sull'asse x gli estremi temporali selezionati.

###### VUC3.4.1.1 Intervallo temporale corretto

* Scenari: l'utente vuole visualizzare il grafico in un intervallo temporale;
* Attore: tecnico;
* Precondizioni: è stato visualizzato il grafico [VUC2];
* Postcondizioni: viene visualizzato il grafico con sull'asse x gli estremi temporali selezionati.

###### VUC3.4.1.2 Intervallo temporale non corretto

* Scenari: l'intervallo temporale fornito dall'utente non è valido (data d'inizio antecedente alla data di fine);
* Attore: tecnico;
* Precondizioni: è stato visualizzato il grafico [VUC2];
* Postcondizioni: viene notificato all'utente che le date fornite non sono valide.

##### VUC3.4.2 - Zoom dell'intervallo temporale (VRF3.4.2)

* Scenari: l'utente vuole visualizzare il grafico in un intervallo temporale più ristretto o più ampio;
* Attore: tecnico;
* Precondizioni: è stato visualizzato il grafico [VUC2];
* Postcondizioni: viene visualizzato il grafico con sull'asse x gli estremi temporali modificati.

##### VUC3.4.3 - Scroll orizzontale (VRF3.4.3)

* Scenari: l'utente vuole visualizzare il grafico in un intervallo temporale successivo o precedente;
* Attore: tecnico;
* Precondizioni: è stato visualizzato il grafico [VUC2];
* Postcondizioni: viene visualizzato il grafico con sull'asse x gli estremi temporali modificati.

### VUC4 - Ricerca eventi ordinati (VRF4)

```{ .plantuml caption="VUC4"}
left to right direction
:Tecnico: as t
package "SmartLogViewer Tabella"{
usecase VUC4 as "VUC4
Ricerca eventi ordinati"
usecase VUC4.2 as "VUC4.2
Almeno un evento non trovato"
usecase VUC4.1 as "VUC4.1
Trovati tutti gli eventi"
}
t--VUC4
VUC4<|--VUC4.1
VUC4<|--VUC4.2
```

* Scenari:
  1. l'utente vuole cercare una sequenza di eventi ordinati ma non necessariamente consecutivi [VUC4.1];
  2. almeno uno degli eventi ricercati dall'utente non è presente nel file di log [VUC4.2];
* Attore: tecnico;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: vengono evidenziate le tuple con codice corrispondente ai parametri di ricerca o un messaggio per l'utente.

#### VUC4.1 Tutti gli eventi sono stati trovati

* Scenari: l'utente vuole cercare una sequenza di eventi ordinati ma non necessariamente consecutivi;
* Attore: tecnico;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con gli eventi con codice corrispondente ai parametri di ricerca.

#### VUC4.2 Almeno un evento non è stato trovato

* Scenari: almeno uno degli eventi ricercati dall'utente non è presente nel file di log;
* Attore: tecnico;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene comunicato all'utente che la sequenza richiesta non è presente nel file di log.

## SmartLogStatistics

### SUC1 - Caricamento dei log per range di data/ora (SRF1, SRF1.1)

```{ .plantuml caption="SUC1"}
:Impiegato: as i
:DatabaseLog: as d
package "SmartLogStatistics"{
usecase SUC1 as "SUC1
Caricamento log per range data/ora"
usecase SUC1.1.1 as"SUC1.1.1
Aggiunta log"
usecase SUC1.1.2 as"SUC1.1.2
Rimozione log"
}
i-right-SUC1
SUC1 <.. SUC1.1.1 : <<extend>>
SUC1 <.. SUC1.1.2 : <<extend>>
d-left-SUC1
```

* Scenari:
  1. l'utente sceglie i file da visualizzare nell'applicazione SmartLogStatistics per range di data/ora;
  2. l'utente aggiunge o toglie log da visualizzare a quelli già presenti [SUC1.1];
* Attore: impiegato, databaseLog;
* Precondizioni: l'applicazione è operativa e funzionante;
* Postcondizioni: i log vengono caricati correttamente nell'applicazione SmartLogStatistics.

#### SUC1.1 - Aggiunta o rimozione log da visualizzare

* Scenari:
  1. l'utente aggiunge log da visualizzare a quelli già presenti (SUC1.1.1);
  2. l'utente toglie log da visualizzare a quelli già presenti (SUC1.1.2);
* Attore: impiegato, databaseLog;
* Precondizioni: l'applicazione è operativa e funzionante;
* Postcondizioni: i log vengono caricati correttamente nell'applicazione SmartLogStatistics.

### SUC2 - Inizializzazione del prospetto e dei grafici (SRF2, SRF3)

```{ .plantuml caption="SUC2"}
left to right direction
:Impiegato: as i
package "SmartLogStatistics"{
usecase SUC2 as "SUC2
Inizializzazione"
usecase SUC2.2 as "SUC2.2
Visualizzazione grafico"
usecase SUC2.1 as "SUC2.1
Visualizzazione prospetto"
}
i--SUC2
SUC2 ..> SUC2.1 : <<include>>
SUC2 ..> SUC2.2 : <<include>>
```

* Scenari:
  1. l'applicazione SmartLogStatistics visualizza il prospetto relativo ai dati dei file di log caricati [SUC2.1];
  2. l'applicazione SmartLogStatistics visualizza i grafici relativi ai dati dei file di log caricati [SUC2.2];
* Attore: impiegato;
* Precondizioni: è stato caricato almeno un file di log nell'applicazione [SUC1];
* Postcondizioni: vengono inizializzati correttamente i dati dei file di log.

#### SUC2.1 - Visualizzazione del prospetto

* Scenari: l'applicazione SmartLogStatistics visualizza il prospetto relativa ai dati dei file di log caricati;
* Attore: impiegato;
* Precondizioni: è stato caricato almeno un file di log nell'applicazione [SUC1];
* Postcondizioni: viene visualizzata correttamente il prospetto con i dati dei file di log.

#### SUC2.2 - Visualizzazione del grafico

* Scenari: l'applicazione SmartLogStatistics visualizza il grafico relativo ai dati dei file di log caricati;
* Attore: impiegato;
* Precondizioni: è stato caricato almeno un file di log nell'applicazione [SUC1];
* Postcondizioni: viene visualizzato correttamente il grafico con i dati dei file di log.

### SUC3 - Modifica visualizzazione del prospetto (SRF2.6, SRF3.1.1)

```{ .plantuml caption="SUC3"}
left to right direction
:Impiegato: as i
package "SmartLogStatistics Prospetto"{
usecase SUC3.1 as "SUC3.1
Filtro"
usecase SUC3.1.3 as "SUC3.1.3
Filtro su versione firmware"
usecase SUC3.1.2 as "SUC3.1.2
Filtro su data/ora"
usecase SUC3.1.1 as "SUC3.1.1
Filtro su unit/subUnit"
usecase SUC3.1.2.2 as "SUC3.1.2.2
Intervallo temporale scorretto"
usecase SUC3.1.2.1 as "SUC3.1.2.1
Intervallo temporale corretto"
usecase SUC3.2 as "SUC3.2
Ordinamento"
usecase SUC3.2.3 as "SUC3.2.3
Ordinamento per versione firmware"
usecase SUC3.2.2 as "SUC3.2.2
Ordinamento per unit/subUnit"
usecase SUC3.2.1 as "SUC3.2.1
Ordinamento per versione firmware"
}
i--SUC3.1
i--SUC3.2
SUC3.1<|--SUC3.1.1
SUC3.1<|--SUC3.1.2
SUC3.1.2<|--SUC3.1.2.1
SUC3.1.2<|--SUC3.1.2.2
SUC3.1<|--SUC3.1.3
SUC3.2<|--SUC3.2.1
SUC3.2<|--SUC3.2.2
SUC3.2<|--SUC3.2.3
```

* Scenari:
  1. l'utente applica dei filtri in base ai valori presenti nella tabella del prospetto [SUC3.1];
  2. l'utente applica un ordinamento in base ai valori presenti nella tabella del prospetto [SUC3.2];
* Attore: impiegato;
* Precondizioni: è stata visualizzata la tabella con i dati [SUC2];
* Postcondizioni: viene visualizzata la tabella con i dati selezionati;

#### SUC3.1 - Visualizzazione tabella filtrata

* Scenari:
  1. l'utente filtra per unit/subUnit la tabella di eventi da visualizzare [SUC3.1.1];
  2. l'utente filtra per data/ora la tabella di eventi da visualizzare [SUC3.1.2];
  3. l'utente filtra per versione del firmware la tabella di eventi da visualizzare [SUC3.1.3];
* Attori: impiegato;
* Precondizioni: è stata visualizzata la tabella con i dati [SUC2];
* Postcondizioni: viene visualizzata la tabella degli eventi filtrata.

##### SUC3.1.1 Filtra per unit/subunit

* Scenari: l'utente filtra per unit/subUnit la tabella di eventi da visualizzare;
* Attori: impiegato;
* Precondizioni: è stata visualizzata la tabella con i dati [SUC2];
* Postcondizioni: viene visualizzata la tabella degli eventi filtrata.

##### SUC3.1.2 Filtra per data/ora

* Scenari:
  1. l'utente filtra per data/ora la tabella di eventi da visualizzare [SUC3.1.2.1];
  2. l'intervallo temporale fornito dall'utente non è valido (data inizio posteriore a data fine) [SUC3.1.2.2];
* Attori: impiegato;
* Precondizioni: è stata visualizzata la tabella con i dati [SUC2];
* Postcondizioni: viene visualizzata la tabella degli eventi filtrata.

###### SUC3.1.2.1 Intervallo temporale corretto

* Scenari: l'utente filtra per data/ora la tabella di eventi da visualizzare;
* Attori: impiegato;
* Precondizioni: è stata visualizzata la tabella con i dati [SUC2];
* Postcondizioni: viene visualizzata la tabella degli eventi filtrata.

###### SUC3.1.2.2 Intervallo temporale non corretto

* Scenari: l'intervallo temporale fornito dall'utente non è valido (data inizio posteriore a data fine);
* Attori: impiegato;
* Precondizioni: è stata visualizzata la tabella con i dati [SUC2];
* Postcondizioni: viene notificato all'utente che le date inserite non sono corrette.

##### SUC3.1.3 Filtra per versione firmware

* Scenari: l'utente filtra per versione del firmware la tabella di eventi da visualizzare;
* Attori: impiegato;
* Precondizioni: è stata visualizzata la tabella con i dati [SUC2];
* Postcondizioni: viene visualizzata la tabella degli eventi filtrata.

#### SUC3.2 - Visualizzazione tabella ordinata

* Scenari:
  1. l'utente ordina per unit/subUnit la tabella di eventi da visualizzare (SUC3.2.1);
  2. l'utente ordina per data/ora la tabella di eventi da visualizzare (SUC3.2.2);
  3. l'utente ordina per versione del firmware la tabella di eventi da visualizzare (SUC3.2.3);
* Attori: impiegato;
* Precondizioni: è stata visualizzata la tabella con i dati [SUC2];
* Postcondizioni: viene visualizzata la tabella degli eventi ordinati.

### SUC4 - Modifica visualizzazione grafica (SRF3.1.1, SRF3.2.1)

```{ .plantuml caption="SUC4"}
left to right direction
:utente: as o
package "SmartLogStatistics Grafico"{
usecase SUC4.1 as "SUC4.1
Filtro"
usecase SUC4.1.2 as "SUC4.1.2
Filtro codice"
usecase SUC4.1.1 as "SUC4.1.1
Filtro unit/subUnit"
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

* Scenari:
  1. l'utente applica dei filtri in base al valore nelle celle della tabella [SUC4.1];
  2. l'utente seleziona gli eventi e la lista firmware da visualizzare [SUC4.2];
* Attore: impiegato;
* Precondizioni: è stato visualizzato il grafico con numero di occorrenze rispetto alla versione firmware [SUC2];
* Postcondizioni: viene visualizzato il grafico con i filtri applicati.

#### SUC4.1 - Visualizzazione grafico filtrato

* Scenari:
  1. l'utente filtra per codice la tabella di eventi da visualizzare (SUC4.1.1);
  2. l'utente filtra per unit/subUnit la tabella di eventi da visualizzare (SUC4.1.2);
* Attori: impiegato;
* Precondizioni: è stato visualizzato il grafico con numero di occorrenze rispetto alla versione firmware [SUC2];
* Postcondizioni: viene visualizzata il grafico degli eventi filtrato.

#### SUC4.2 - Visualizzazione grafico filtrato

* Scenari:
  1. l'utente seleziona gli eventi da visualizzare (SUC4.2.1);
  2. l'utente seleziona la lista di firmware da visualizzare (SUC4.2.2);
* Attori: impiegato;
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
:Impiegato:--OUC1
```

* Scenari: l'utente esporta un file dove verranno visualizzate le tabelle e le sue varianti grafiche;
* Attore: tecnico, impiegato;
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
:Impiegato:--OUC2
```

* Scenari: l'utente elimina i filtri applicati precedentemente;
* Attore: tecnico, impiegato;
* Precondizioni: vengono applicati i filtri o le selezioni; [VUC3] [VUC4] [SUC3] [SUC4]
* Postcondizioni: i filtri vengono ripristinati.

### OUC3 - Ricerca sequenze di eventi non ordinati o parziali (VR02)

```{ .plantuml caption="OUC3"}
left to right direction
:Tecnico: as i
package "SmartLogViewer"{
usecase OUC3 as "OUC3
Ricerca sequenze"
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
* Postcondizioni: vengono evidenziate le tuple con gli eventi con codice corrispondente ai parametri di ricerca.

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

### OUC4 - Selezione eventi per matrice di correlazione (SR01.1)
  
```{ .plantuml caption="OUC4"}
left to right direction
:Impiegato: as i
package "SmartLogStatistics"{
usecase OUC4 as "OUC4
Selezione eventi per code e unit/subUnit"
}
i--OUC4
```

* Scenari: l'utente seleziona gli eventi per la matrice di correlazione;
* Attore: impiegato;
* Precondizioni: è stata visualizzata la matrice di correlazione[SR01];
* Postcondizioni: viene aggiornata la matrice con gli eventi selezionati.
