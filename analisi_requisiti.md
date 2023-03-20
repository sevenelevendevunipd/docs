---
title: "Analisi dei requisiti"
date: "15/11/2022"
responsabile: "Andrea Auletta"
redattori: ["Antonio Stan", "Enrik Rucaj"]
verificatori: ["Mattia Brunello", "Nicola Cecchetto","Augusto Zanellato", "Davide Vitagliano"]
toc: true
versioni:
  0.0.1:
    autore: Andrea Auletta
    data: 15/11/2022
    cambiamenti: Prima stesura
  0.0.2:
    autore: Andrea Auletta
    data: 16/11/2022
    cambiamenti: Stesura requisiti espliciti del capitolato
  0.1.0:
    autore: Antonio Stan
    data: 17/11/2022
    cambiamenti: Verifica generale del documento
  0.1.1:
    autore: Davide Vitagliano
    data: 24/11/2022
    cambiamenti: Stesura parziale Use Cases per smartlogviewer
  0.2.0:
    autore: Augusto Zanellato
    data: 24/11/2022
    cambiamenti: Verifica generale del documento  
  0.2.1:
    autore: Andrea Auletta
    data: 25/11/2022
    cambiamenti: Completata prima stesura dei casi d'uso
  0.2.2:
    autore: Nicola Cecchetto
    data: 26/11/2022
    cambiamenti: Aggiunti grafici dei casi d'uso e riorganizzazione del documento
  0.3.0:
    autore: Enrik Rucaj
    data: 02/12/2022
    cambiamenti: Verifica generale del documento
  0.3.1:
    autore: Davide Vitagliano
    data: 04/12/2022
    cambiamenti: Aggiunti requisiti impliciti e opzionali
  0.4.0:
   autore: Antonio Stan
   data: 05/12/2022
   cambiamenti: Verifica generale del documento
  0.4.1:
    autore: Davide Vitagliano
    data: 06/12/2022
    cambiamenti: Aggiunti e riscritti use cases
  0.5.0:
   autore: Augusto Zanellato
   data: 08/12/2022
   cambiamenti: Verifica generale del documento
  0.5.1:
    autore: Nicola Cecchetto
    data: 08/12/2022
    cambiamenti: Aggiornamento post-conferenza con azienda
  0.5.2:
    autore: Andrea Auletta
    data: 16/12/2022
    cambiamenti: Divisone UC3.4 in UC3.4.1, UC3.4.2 e UC3.4.3. Aggiunti OUC3 e OUC4
  0.5.3:
    autore: Nicola Cecchetto
    data: 18/12/2022
    cambiamenti: Aggiunta casi d'errore
  0.5.4:
    autore: Andrea Auletta
    data: 20/12/2022
    cambiamenti: Aggiornamento post-conferenza con azienda
  0.6.0:
    autore: Enrik Rucaj
    data: 21/12/2022
    cambiamenti: Verifica generale del documento
  0.6.1:
    autore: Nicola Cecchetto
    data: 31/01/2023
    cambiamenti: Aggiornamento post-esercitazioni del prof. Cardin
  0.6.2:
    autore: Nicola Cecchetto
    data: 14/02/2023
    cambiamenti: Aggiornamento post conferenza con il professor Cardin
  0.6.3:
    autore: Andrea Auletta
    data: 15/02/2023
    cambiamenti: Aggiunta tabelle di tracciamento
  0.6.4:
    autore: Nicola Cecchetto
    data: 20/02/2023
    cambiamenti: Aggiunti riferimenti al glossario
  0.7.0:
    autore: Antonio Stan
    data: 21/02/2023
    cambiamenti: Verifica generale del documento
  1.0.0:
    autore: Mattia Brunello
    data: 22/02/2023
    cambiamenti: Approvazione per il rilascio
  1.0.1:
    autore: Enrik Rucaj
    data: 10/03/2023
    cambiamenti: Correzione degli errori evidenziati dal professor Cardin
...

# Introduzione

## Scopo del documento

Lo scopo di questo documento è quello d'illustrare i casi d'uso e i requisiti individuati dal gruppo durante l'analisi riguardanti il capitolato proposto dall'azienda Socomec.
La formulazione segue le regole esposte nel documento *Norme di progetto*.

## Scopo del prodotto

Il progetto prevede di sviluppare due applicazioni:

* {g:smartlogviewer}: Permette la visualizzazione di un singolo file di {g:log} evidenziandone alcune caratteristiche e fornendo
  dei grafici sull’andamento di alcuni valori;
* {g:smartlogstatistics}: Permette la visualizzazione aggregata di una serie di file di {g:log} mostrando oltre ai dati visibili
  su {g:smartlogviewer} anche delle statistiche come ad esempio la correlazione di alcuni eventi mediante l’uso di grafici.

## Glossario

Alcuni termini potrebbero non risultare consoni al linguaggio usuale quindi questi ultimi vengono inseriti nel
documento *Glossario*[^1] assieme alle loro definizioni.

[^1]: [Glossario](https://sevenelevendevunipd.github.io/docs/glossario.pdf)

## Riferimenti

* [Slide sull'analisi dei requisiti tratte dalle lezioni del professor T. Vardanega](https://www.math.unipd.it/~tullio/IS-1/2022/Dispense/T06.pdf)
* [Slide sugli Use Case tratte dalle lezioni del professor R. Cardin](https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf)
* [Norme di progetto](https://sevenelevendevunipd.github.io/docs/norme_progetto.pdf)

# Casi d'uso

## Attori

Le applicazioni dovranno essere utilizzate dagli utenti interni all'azienda: {g:smartlogviewer} viene utilizzata principalmente
dai tecnici, mentre {g:smartlogstatistics} da altri impiegati. <!--non ricordo il termine usato da loro-->
In aggiunta, è presente un database dei {g:log} accessibile agli impiegati.
Vengono identificati i seguenti attori:

* Il {g:tecnico};
* L'analista;

```{ .plantuml caption="Attori"}
:Utente: as u
u <|-- :Tecnico:
u <|-- :Analista:
```

## SmartLogViewer

```{ .plantuml caption="smartlogviewer"}
left to right direction
:Tecnico: as t
package "smartlogviewer"{
usecase VUC1 as "VUC1
Caricamento File"
usecase VUC1.1 as "VUC1.1
File non Compatibile"
usecase VUC2 as "VUC2
Visualizzazione Tabella"
usecase VUC3 as "VUC3
Aggiunta Filtro Tabella"
usecase VUC4 as "VUC4
Ordinamento per Colonna"
usecase VUC5 as "VUC5
Ricerca Eventi Ordinati"
usecase VUC5.1 as "VUC5.1
Sequenza di Eventi non Trovata"
usecase VUC6 as "VUC6
Visualizzazione Grafico"
usecase VUC7 as "VUC7
Zoom Intervallo Temporale"
usecase VUC8 as "VUC8
Scroll Orizzontale"
usecase VUC9 as "VUC9
Selezione Intervallo Temporale"
usecase VUC9.1 as "VUC9.1
Intervallo non corretto"
usecase VUC10 as "VUC10
Aggiunta Filtro Grafico"
}
t--VUC10
VUC9 <.. VUC9.1 : <<extend>>
t--VUC9
t--VUC8
t--VUC7
t--VUC6
VUC5 <.. VUC5.1 : <<extend>>
t--VUC5
t--VUC3
t--VUC4
t--VUC2
t--VUC1
VUC1 <.. VUC1.1 : <<extend>>
```

### VUC1 - Caricamento file di log

* Scenario: l'utente vuole caricare un file (in formato .csv) di {g:log} da visualizzare nell'applicazione {g:smartlogviewer} tramite ricerca nel file system;
* Attore: {g:tecnico};
* Precondizioni: l'applicazione è operativa e funzionante;
* Postcondizioni: il file appena caricato viene processato correttamente dall'applicazione.

### VUC1.1 File non compatibile

* Scenario: l'utente carica un file non compatibile nell'applicazione {g:smartlogviewer};
* Attore: {g:tecnico};
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

* Scenario: l'utente vuole visualizzare i dati del {g:log} in una tabella;
* Attore: {g:tecnico};
* Precondizioni: è stato caricato correttamente un file di {g:log} [VUC1];
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
Visualizzazione Stato"
usecase VUC2.1.6.1 as "VUC2.1.6.1
Visualizzazione stato ON"
usecase VUC2.1.6.2 as "VUC2.1.6.2
Visualizzazione stato OFF"
usecase VUC2.1.7 as "VUC2.1.7
Visualizzazione Colore Evento"
}
y--VUC2.1.1
y--VUC2.1.2
y--VUC2.1.3
y--VUC2.1.4
y--VUC2.1.5
y--VUC2.1.6
VUC2.1.6<|--VUC2.1.6.1
VUC2.1.6<|--VUC2.1.6.2
y--VUC2.1.7
```

* Scenario: l'utente vuole visualizzare i dati di una singola riga del {g:log};
* Attore: {g:tecnico};
* Precondizioni: è stato caricato correttamente un file di {g:log} [VUC1];
* Postcondizioni: viene visualizzata riga con i dati;

##### VUC2.1.1 - Visualizzazione Data/Ora

* Scenario: l'utente vuole visualizzare la data e l'ora di una riga del {g:log};
* Attore: {g:tecnico};
* Precondizioni: è stato caricato correttamente un file di {g:log} [VUC1];
* Postcondizioni: vengono visualizzati data e ora della riga del {g:log};

##### VUC2.1.2 - Visualizzazione Codice Evento

* Scenario: l'utente vuole visualizzare il {g:codice_evento} di una riga del {g:log};
* Attore: {g:tecnico};
* Precondizioni: è stato caricato correttamente un file di {g:log} [VUC1];
* Postcondizioni: viene visualizzato il {g:codice_evento} della riga del {g:log};

##### VUC2.1.3 - Visualizzazione Unit/Subunit

* Scenario: l'utente vuole visualizzare la Unit e la Subunit di una riga del {g:log};
* Attore: {g:tecnico};
* Precondizioni: è stato caricato correttamente un file di {g:log} [VUC1];
* Postcondizioni: vengono visualizzati Unit e Subunit della riga del {g:log};

##### VUC2.1.4 - Visualizzazione Firmware

* Scenario: l'utente vuole visualizzare il {g:firmware} di una riga del {g:log};
* Attore: {g:tecnico};
* Precondizioni: è stato caricato correttamente un file di {g:log} [VUC1];
* Postcondizioni: viene visualizzato il {g:firmware} della riga del {g:log};

##### VUC2.1.5 - Visualizzazione Descrizione

* Scenario: l'utente vuole visualizzare la descrizione di una riga del {g:log};
* Attore: {g:tecnico};
* Precondizioni: è stato caricato correttamente un file di {g:log} [VUC1];
* Postcondizioni: viene visualizzata la descrizione della riga del {g:log};

##### VUC2.1.6 - Visualizzazione Stato

* Scenario: l'utente vuole visualizzare lo stato di una riga del {g:log};
* Attore: {g:tecnico};
* Precondizioni: è stato caricato correttamente un file di {g:log} [VUC1];
* Postcondizioni: viene visualizzato lo stato della riga del {g:log};

###### VUC2.1.6.1 Visualizzazione stato ON

* Scenario: l'utente visualizza lo stato ON;
* Attore: {g:tecnico};
* Precondizioni: L'utente visualizza lo stato [VUC.1.6];
* Postcondizioni: viene visualizzato lo stato ON;

###### VUC2.1.6.1 Visualizzazione stato OFF

* Scenario: l'utente visualizza lo stato OFF;
* Attore: {g:tecnico};
* Precondizioni: L'utente visualizza lo stato [VUC.1.6];
* Postcondizioni: viene visualizzato lo stato OFF;

##### VUC2.1.7 - Visualizzazione colore

* Scenario: l'utente vuole visualizzare il colore associato all'evento di una riga del {g:log};
* Attore: {g:tecnico};
* Precondizioni: è stato caricato correttamente un file di {g:log} [VUC1];
* Postcondizioni: viene visualizzato il colore associato all'evento della riga del {g:log};

#### VUC3 - Aggiunta Filtro Tabella

```{ .plantuml caption="VUC3"}
left to right direction
:Tecnico: as r
package "VUC3 Aggiunta Filtro Tabella"{
usecase VUC3.1 as "VUC3.1
Per Intervallo Temporale"
usecase VUC3.1.1 as "VUC3.1.1
Intervallo Non Corretto"
usecase VUC3.2 as "VUC3.2
Per Unit/Subunit"
usecase VUC3.3 as "VUC3.3
Per Firmware"
usecase VUC3.4 as "VUC3.4
Per Codice evento"
}
r-- VUC3.1
VUC3.1 <.. VUC3.1.1 : <<extend>>
r-- VUC3.2
r-- VUC3.3
r-- VUC3.4
```

* Scenari: l'utente vuole applicare un filtro alle righe della tabella;
* Attore: {g:tecnico};
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con i dati filtrati.

##### VUC3.1 - Per Intervallo Temporale

* Scenari: l'utente vuole applicare un intervallo temporale ai dati visualizzati in tabella;
* Attore: {g:tecnico};
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con i dati che rispettano l'intervallo temporale.

##### VUC3.1.1 - Intervallo Non Corretto

* Scenario: l'intervallo temporale fornito dall'utente non è valido (data d'inizio posteriore alla data di fine);
* Attore: {g:tecnico};
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzato un messaggio d'errore (intervallo non corretto).

##### VUC3.2 - Per Unit/Subunit

* Scenari: l'utente vuole visualizzare solo le righe di una particolare {g:unitsubunit};
* Attore: {g:tecnico};
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con i dati della {g:unitsubunit} selezionata.

##### VUC3.3 - Per Firmware

* Scenari: l'utente vuole visualizzare solo le righe di un particolare {g:firmware};
* Attore: {g:tecnico};
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con i dati del {g:firmware} selezionato.

##### VUC3.4 - Per codice evento

* Scenari: l'utente vuole visualizzare le righe che hanno un certo {g:codice_evento};
* Attore: {g:tecnico};
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con i dati del {g:codice_evento} selezionato.

#### VUC4 - Ordinamento per Colonna

```{ .plantuml caption="VUC4"}
left to right direction
:Tecnico: as r
package "VUC4 Ordinamento"{
usecase VUC4.1 as "VUC4.1
Per Data/Ora"
usecase VUC4.2 as "VUC4.2
Per Codice Evento"
usecase VUC4.3 as "VUC4.3
Per Unit/Subunit"
usecase VUC4.4 as "VUC4.4
Per Firmware"
}
r-- VUC4.1
r-- VUC4.2
r-- VUC4.3
r-- VUC4.4
```

* Scenario: l'utente vuole applicare un ordinamento in base a una colonna della tabella;
* Attore: {g:tecnico};
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella con i dati ordinati.

##### VUC4.1 - Ordinamento per Data/Ora

* Scenario: l'utente vuole ordinare le righe della tabella secondo il campo data/ora;
* Attore: {g:tecnico};
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella ordinata secondo data/ora;

##### VUC4.2 - Ordinamento per Codice Evento

* Scenario: l'utente vuole ordinare le righe della tabella secondo il campo {g:codice_evento};
* Attore: {g:tecnico};
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella ordinata secondo {g:codice_evento};

##### VUC4.3 - Ordinamento per Unit/Subunit

* Scenario: l'utente vuole ordinare le righe della tabella secondo il campo {g:unitsubunit};
* Attore: {g:tecnico};
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella ordinata secondo {g:unitsubunit};

##### VUC4.4 - Ordinamento per Firmware

* Scenario: l'utente vuole ordinare le righe della tabella secondo il campo {g:firmware};
* Attore: {g:tecnico};
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene visualizzata la tabella ordinata secondo {g:firmware};

### VUC5 - Ricerca Eventi Ordinati

* Scenario: l'utente vuole cercare una sequenza di eventi ordinati ma non necessariamente consecutivi;
* Attore: {g:tecnico};
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: vengono evidenziate le tuple con codice corrispondente ai parametri di ricerca.

### VUC5.1 Sequenza di Eventi non Trovata

* Scenario: almeno uno degli eventi ricercati dall'utente non è presente nel file di {g:log} e quindi l'intera sequenza di eventi non può essere trovata;
* Attore: {g:tecnico};
* Precondizioni: è stata visualizzata la tabella con i dati [VUC2];
* Postcondizioni: viene comunicato all'utente che la sequenza richiesta non è presente nel file di {g:log}.

### VUC6 - Visualizzazione Grafico

```{ .plantuml caption="VUC6"}
left to right direction
:Tecnico: as i
package "VUC6"{
usecase VUC6.1 as "VUC6.1
Visualizza tempo sull'asse x"
usecase VUC6.2 as "VUC6.2
Visualizza eventi sull'asse y"
usecase VUC6.3 as "VUC6.3
Visualizza rettangolo pieno quando l'evento è attivo"
}
i--VUC6.1
i--VUC6.2
i--VUC6.3
```

* Scenario: l'utente vuole visualizzare un {g:grafico_timeline} che mostra sull'asse x il tempo e sull'asse y tutti gli eventi del {g:log}. Ogni  {g:evento} ha associato un rettangolo sviluppato sull'asse x che viene riempito quando l'evento è attivo;
* Attore: {g:tecnico};
* Precondizioni: è stato caricato correttamente un file di {g:log} [VUC1];
* Postcondizioni: viene visualizzato il grafico sopra descritto;

#### VUC6.1 - Visualizza Tempo sull'asse x

* Scenario: l'utente vuole visualizzare sull'asse x del {g:grafico_timeline} il tempo;
* Attore: {g:tecnico};
* Precondizioni: è stato caricato correttamente un file di {g:log} [VUC1];
* Postcondizioni: viene visualizzato il grafico con il tempo sull'asse x;

#### VUC6.2 - Visualizza Eventi sull'asse y

* Scenario: l'utente vuole visualizzare sull'asse y del {g:grafico_timeline} tutti gli eventi;
* Attore: {g:tecnico};
* Precondizioni: è stato caricato correttamente un file di {g:log} [VUC1];
* Postcondizioni: viene visualizzato il grafico con gli eventi sull'asse y;

#### VUC6.3 - Visualizza rettangolo pieno quando l'evento è attivo

* Scenario: l'utente vuole visualizzare un rettangolo pieno quando un  {g:evento} è attivo;
* Attore: {g:tecnico};
* Precondizioni: è stato caricato correttamente un file di {g:log} [VUC1];
* Postcondizioni: ogni volta che un  {g:evento} è attivo il rettangolo viene riempito;

#### VUC7 - Zoom dell'Intervallo Temporale

* Scenario: l'utente vuole visualizzare il grafico in un sottointervallo temporale più ristretto o più ampio;
* Attore: {g:tecnico};
* Precondizioni: è stato visualizzato il grafico [VUC6];
* Postcondizioni: viene visualizzato il grafico con sull'asse x gli estremi temporali modificati.

#### VUC8 - Scroll Orizzontale

* Scenario: l'utente vuole visualizzare il grafico in un sottointervallo temporale successivo o precedente (a quello selezionato);
* Attore: {g:tecnico};
* Precondizioni: è stato visualizzato il grafico [VUC6];
* Postcondizioni: viene visualizzato il grafico con sull'asse x gli estremi temporali modificati.

#### VUC9 - Selezione Intervallo Temporale

* Scenario: l'utente vuole visualizzare il grafico in un intervallo selezionato;
* Attore: {g:tecnico};
* Precondizioni: è stato visualizzato il grafico [VUC6];
* Postcondizioni: viene visualizzato il grafico con sull'asse x gli estremi temporali modificati.

#### VUC9.1 - Intervallo non Corretto

* Scenario: l'intervallo temporale fornito dall'utente non è valido (data d'inizio posteriore alla data di fine);
* Attore: {g:tecnico};
* Precondizioni: è stata visualizzato il grafico con i dati [VUC6];
* Postcondizioni: viene visualizzato un messaggio d'errore (intervallo non corretto).

#### VUC10 - Aggiunta Filtro Grafico

```{ .plantuml caption="VUC10"}
left to right direction
:Tecnico: as e
package "VUC10 Aggiunta Filtro Grafico"{
usecase VUC10.1 as "VUC10.1
Per Unit/Subunit"
usecase VUC10.2 as "VUC10.2
Per Firmware"
usecase VUC10.3 as "VUC10.3
Per Codice Evento"
}
e-- VUC10.1
e-- VUC10.2
e-- VUC10.3
```

* Scenario: l'utente vuole applicare un filtro agli eventi visualizzati nel grafico;
* Attore: {g:tecnico};
* Precondizioni: è stata visualizzato il grafico con i dati [VUC6];
* Postcondizioni: viene visualizzato il grafico modificato.

##### VUC10.1 - Per Unit/Subunit

* Scenari: l'utente vuole visualizzare solo gli eventi di una particolare {g:unitsubunit};
* Attore: {g:tecnico};
* Precondizioni: è stata visualizzata il grafico con i dati [VUC6];
* Postcondizioni: viene visualizzato il grafico con gli eventi della {g:unitsubunit} selezionata.

##### VUC10.2 - Per Firmware

* Scenari: l'utente vuole visualizzare solo gli eventi di un particolare {g:firmware};
* Attore: {g:tecnico};
* Precondizioni: è stata visualizzata il grafico con i dati [VUC6];
* Postcondizioni: viene visualizzato il grafico con i dati del {g:firmware} selezionato.

##### VUC10.3 - Per Codice evento

* Scenari: l'utente vuole visualizzare solo gli eventi di un {g:codice_evento} specificato;
* Attore: {g:tecnico};
* Precondizioni: è stata visualizzata il grafico con i dati [VUC6];
* Postcondizioni: viene visualizzato il grafico con i dati del {g:codice_evento} selezionato.

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
Aggiunta Filtro Lista"
usecase SUC4 as "SUC4
Ordinamento per Colonna Lista"
usecase SUC5 as "SUC5
Visualizzazione Grafico Tempo/Occorrenze"
usecase SUC6 as "SUC6
Visualizzazione Grafico Firmware/Occorrenze"
usecase SUC7 as "SUC7
Filtro Grafico Tempo/Occorrenze"
usecase SUC8 as "SUC8
Filtro Grafico Firmware/Occorrenze"
}
SUC1 <.. SUC1.1 : <<extend>>
t--SUC1
t--SUC2
t--SUC3
t--SUC4
t--SUC5
t--SUC6
t--SUC7
t--SUC8
```

### SUC1 - Caricamento dei Log per Intervallo Temporale

* Scenario: l'utente sceglie l'intervallo temporale iniziale per raccogliere i dati dai file di {g:log};
* Attore: {g:analista};
* Precondizioni: l'applicazione è operativa e funzionante;
* Postcondizioni: i {g:log} vengono caricati correttamente nell'applicazione {g:smartlogstatistics}.

### SUC1.1 - Intervallo non Corretto

* Scenari: l'intervallo temporale fornito dall'utente non è valido (data d'inizio antecedente alla data di fine);
* Attore: {g:analista};
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

* Scenario: l'utente vuole visualizzare un prospetto contenente dei dati relativi all'insieme di file di {g:log} analizzati.
* Attore: {g:analista};
* Precondizioni: sono stati caricati dei file di {g:log} [SUC1];
* Postcondizioni: viene visualizzato il prospetto.

#### SUC2.1 - Visualizzazione Intervallo Temporale

* Scenario: l'utente vuole visualizzare l'intervallo temporale selezionato.
* Attore: {g:analista};
* Precondizioni: sono stati caricati dei file di {g:log} [SUC1];
* Postcondizioni: viene visualizzato l'intervallo temporale.

#### SUC2.2 - Visualizzazione Numero di Log Analizzati

* Scenario: l'utente vuole visualizzare il numero totale di {g:log} analizzati.
* Attore: {g:analista};
* Precondizioni: sono stati caricati dei file di {g:log} [SUC1];
* Postcondizioni: viene visualizzato il numero totale di {g:log} analizzati.

#### SUC2.3 - Visualizzazione Media Numero Eventi tra i Log

* Scenario: l'utente vuole visualizzare il numero medio di eventi tra i {g:log}.
* Attore: {g:analista};
* Precondizioni: sono stati caricati dei file di {g:log} [SUC1];
* Postcondizioni: viene visualizzato il numero medio di eventi.

#### SUC2.4 - Visualizzazione Massimo Numero Eventi tra i Log

* Scenario: l'utente vuole visualizzare il numero massimo di eventi tra i {g:log}.
* Attore: {g:analista};
* Precondizioni: sono stati caricati dei file di {g:log} [SUC1];
* Postcondizioni: viene visualizzato il numero massimo di eventi.

#### SUC2.5 - Visualizzazione Deviazione Standard Numero Eventi tra i Log

* Scenario: l'utente vuole visualizzare la deviazione standard del numero di eventi tra i {g:log}.
* Attore: {g:analista};
* Precondizioni: sono stati caricati dei file di {g:log} [SUC1];
* Postcondizioni: viene visualizzato la deviazione standard del numero di eventi.

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
* Attore: {g:analista};
* Precondizioni: sono stati caricati dei file di {g:log} [SUC1];
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
usecase SUC2.6.1.3 as "SUC2.6.1.3
Visualizzazione Versione Firmware"
}
b--SUC2.6.1.1
b--SUC2.6.1.2
b--SUC2.6.1.3
```

* Scenario: l'utente vuole visualizzare un singolo elemento della lista di occorrenze eventi;
* Attore: {g:analista};
* Precondizioni: sono stati caricati dei file di {g:log} [SUC1];
* Postcondizioni: viene visualizzato l'elemento della lista di occorrenze eventi.

###### SUC2.6.1.1 - Visualizzazione Codice Evento

* Scenario: l'utente vuole visualizzare il codice dell'evento;
* Attore: {g:analista};
* Precondizioni: sono stati caricati dei file di {g:log} [SUC1];
* Postcondizioni: viene visualizzato il codice dell'evento.

###### SUC2.6.1.2 - Visualizzazione Numero Occorrenze

* Scenario: l'utente vuole visualizzare quante volte l'evento è avvenuto nei {g:log};
* Attore: {g:analista};
* Precondizioni: sono stati caricati dei file di {g:log} [SUC1];
* Postcondizioni: viene visualizzato il numero di occorrenze dell'evento.

###### SUC2.6.1.3 - Visualizzazione Versione Firmware

* Scenario: l'utente vuole visualizzare la versione {g:firmware} relativa all'evento;
* Attore: {g:analista};
* Precondizioni: sono stati caricati dei file di {g:log} [SUC1];
* Postcondizioni: viene visualizzato la versione {g:firmware} dell'evento.

#### SUC3 - Aggiunta Filtro Lista

```{ .plantuml caption="SUC3"}
left to right direction
:Analista: as y
package "SUC3 Aggiunta Filtro Lista"{
usecase SUC3.1 as "SUC3.1
Per unit/subunit"
usecase SUC3.2 as "SUC3.2
Per Intervallo Temporale"
usecase SUC3.2.1 as "SUC3.2.1
Intervallo non Corretto"
usecase SUC3.3 as "SUC3.3
Per Versione Firmware"
}
y--SUC3.1
y--SUC3.2
y--SUC3.3
SUC3.2 <.. SUC3.2.1 : <<extend>>
```

* Scenario: l'utente vuole aggiungere un filtro ai dati presentati nella lista di occorrenza eventi;
* Attore: {g:analista};
* Precondizioni: è stata visualizzata la lista di occorrenza eventi [SUC2.6];
* Postcondizioni: la lista di occorrenza eventi mostra i dati opportunamente filtrati.

##### SUC3.1 - Filtra per Unit/Subunit

* Scenario: l'utente vuole filtrare i dati della lista di occorrenza eventi in base alla {g:unitsubunit};
* Attore: {g:analista};
* Precondizioni: è stata visualizzata la lista di occorrenza eventi [SUC2.6];
* Postcondizioni: la lista di occorrenza eventi mostra i dati filtrati secondo la {g:unitsubunit}.

##### SUC3.2 - Filtra per Intervallo Temporale

* Scenario: l'utente vuole filtrare i dati della lista di occorrenza eventi secondo un intervallo temporale;
* Attore: {g:analista};
* Precondizioni: è stata visualizzata la lista di occorrenza eventi [SUC2.6];
* Postcondizioni: la lista di occorrenza eventi mostra i dati tenendo conto del nuovo intervallo temporale.

##### SUC3.2.1 - Intervallo Temporale non Corretto

* Scenario: l'intervallo selezionato dall'utente non è valido;
* Attore: {g:analista};
* Precondizioni: è stata visualizzata la lista di occorrenze eventi [SUC2.6];
* Postcondizioni: viene mostrato un messaggio di errore.

##### SUC3.3 - Per Versione Firmware

* Scenario: l'utente vuole filtrare i dati della lista di occorrenza eventi;
* Attore: {g:analista};
* Precondizioni: è stata visualizzata la lista di occorrenze eventi [SUC2.6];
* Postcondizioni: la lista di occorrenza eventi mostra i dati filtrati per versione {g:firmware};

#### SUC4 - Ordinamento per Colonna Lista

```{ .plantuml caption="SUC4"}
left to right direction
:Tecnico: as r
package "SUC4 Ordinamento"{
usecase SUC4.1 as "SUC4.1
Per Codice Evento"
usecase SUC4.2 as "SUC4.2
Per Numero Occorrenze"
usecase SUC4.3 as "SUC4.3
Per Firmware"
}
r-- SUC4.1
r-- SUC4.2
r-- SUC4.3
```

* Scenario: l'utente vuole modificare l'ordine dei dati presentati nella lista di occorrenza eventi secondo l'ordine di una colonna;
* Attore: {g:analista};
* Precondizioni: è stata visualizzata la lista di occorrenze eventi [SUC2.6];
* Postcondizioni: la lista di occorrenza eventi mostra i dati della lista ordinati secondo la colonna scelta.

##### SUC4.1 - Ordinamento per Codice Evento

* Scenario: l'utente vuole ordinare le righe della lista secondo il campo {g:codice_evento};
* Attore: {g:tecnico};
* Precondizioni: è stata visualizzata la lista di occorrenze eventi [SUC2.6];
* Postcondizioni: viene visualizzata la lista ordinata secondo {g:codice_evento};

##### SUC4.2 - Ordinamento per Numero Occorrenze

* Scenario: l'utente vuole ordinare le righe della lista secondo il campo numero occorrenze;
* Attore: {g:tecnico};
* Precondizioni: è stata visualizzata la lista di occorrenze eventi [SUC2.6];
* Postcondizioni: viene visualizzata la lista ordinata secondo il numero occorrenze;

##### SUC4.3 - Ordinamento per Firmware

* Scenario: l'utente vuole ordinare le righe della lista secondo il campo {g:firmware};
* Attore: {g:tecnico};
* Precondizioni: è stata visualizzata la lista di occorrenze eventi [SUC2.6];
* Postcondizioni: viene visualizzata la lista ordinata secondo il {g:firmware};
  
### SUC5 - Visualizzazione Grafico Tempo/Occorrenze

```{ .plantuml caption="SUC5"}
left to right direction
:Tecnico: as i
package "SUC5"{
usecase VUC5.1 as "VUC5.1
Visualizza tempo sull'asse x"
usecase VUC5.2 as "VUC5.2
Visualizza numero di occorrenze sull'asse y"
usecase VUC5.3 as "VUC5.3
Visualizza una linea per ogni evento"
}
i--VUC5.1
i--VUC5.2
i--VUC5.3
```

* Scenario: l'utente vuole visualizzare un {g:grafico_linee} che mette in relazione il tempo con il numero di occorrenze degli eventi in esame;
* Attore: {g:analista};
* Precondizioni: sono stati caricati dei file di {g:log} [SUC1];
* Postcondizioni: viene mostrato a schermo il grafico che mette in relazione il tempo (asse x) con il numero di occorrenze degli eventi in esame (asse y).

#### SUC5.1 - Visualizzazione tempo sull'asse x

* Scenario: l'utente vuole visualizzare il tempo sull'asse x;
* Attore: {g:analista};
* Precondizioni: sono stati caricati dei file di {g:log} [SUC1];
* Postcondizioni: il grafico mostra sull'asse x il tempo.

#### SUC5.2 - Visualizzazione numero occorrenze sull'asse y

* Scenario: l'utente vuole visualizzare il numero di occorrenze degli eventi sull'asse y;
* Attore: {g:analista};
* Precondizioni: sono stati caricati dei file di {g:log} [SUC1];
* Postcondizioni: il grafico mostra sull'asse y il numero di occorrenze degli eventi.

#### SUC5.3 - Visualizza una linea per ogni evento

* Scenario: l'utente vuole visualizzare una linea per ogni  {g:evento} presente nel {g:log};
* Attore: {g:analista};
* Precondizioni: sono stati caricati dei file di {g:log} [SUC1];
* Postcondizioni: il grafico mostra una linea per ogni  {g:evento}.

### SUC6 - Visualizzazione Grafico Firmware/Occorrenze

```{ .plantuml caption="SUC6"}
left to right direction
:Tecnico: as i
package "SUC6 Visualizzazione Grafico Firmware/Occorrenze"{
usecase SUC6.1 as "SUC6.1
Visualizza firmware sull'asse x"
usecase SUC6.2 as "SUC6.2
Visualizza numero di occorrenze sull'asse y"
usecase SUC6.3 as "SUC6.3
Visualizza una barra per ogni versione firmware"
}
i--SUC6.1
i--SUC6.2
i--SUC6.3
```

* Scenario: l'utente vuole visualizzare un {g:grafico_barre} che mette in relazione le versioni {g:firmware} con il numero di occorrenze degli eventi in esame;
* Attore: {g:analista};
* Precondizioni: sono stati caricati dei file di {g:log} [SUC1];
* Postcondizioni: viene mostrato a schermo il grafico che mette in relazione le versioni {g:firmware} (asse x) con il numero di occorrenze degli eventi in esame (asse y).

#### SUC6.1 - Visualizzazione firmware sull'asse x

* Scenario: l'utente vuole visualizzare tutti i {g:firmware} sull'asse x;
* Attore: {g:analista};
* Precondizioni: sono stati caricati dei file di {g:log} [SUC1];
* Postcondizioni: il grafico mostra sull'asse x i {g:firmware}.

#### SUC6.2 - Visualizzazione tempo sull'asse y

* Scenario: l'utente vuole visualizzare il numero di occorrenze degli eventi sull'asse y;
* Attore: {g:analista};
* Precondizioni: sono stati caricati dei file di {g:log} [SUC1];
* Postcondizioni: il grafico mostra sull'asse y il numero di occorrenze degli eventi.

#### SUC6.3 - Visualizza una barra per ogni firmware

* Scenario: l'utente vuole visualizzare una barra per ogni {g:firmware} presente nel {g:log};
* Attore: {g:analista};
* Precondizioni: sono stati caricati dei file di {g:log} [SUC1];
* Postcondizioni: il grafico mostra una barra per ogni {g:firmware}.

### SUC7 - Filtro Grafico Tempo/Occorrenze

```{ .plantuml caption="SUC7"}
left to right direction
:Analista: as u
package "SUC7 Filtro Grafico Tempo/Occorrenze"{
usecase SUC7.1 as "SUC7.1
Per Codice Evento"
usecase SUC7.2 as "SUC7.2
Per Unit/Subunit"
}
u--SUC7.1
u--SUC7.2
```

* Scenario: l'utente vuole modificare la visualizzazione del grafico tempo/occorrenze applicando dei filtri ai dati;
* Attore: {g:analista};
* Precondizioni: è stato visualizzato il grafico tempo/occorrenze [SUC5];
* Postcondizioni: vengono applicati i filtri selezionati.

#### SUC7.1 - Filtro per Codice Event

* Scenario: l'utente vuole filtrare il grafico tempo/occorrenze selezionando quali eventi visualizzare;
* Attore: {g:analista};
* Precondizioni: è stato visualizzato il grafico tempo/occorrenze [SUC5];
* Postcondizioni: il grafico viene aggiornato tenendo conto degli eventi da visualizzare.

#### SUC7.2 - Filtro per Unit/Subunit

* Scenario: l'utente vuole filtrare il grafico tempo/occorrenze selezionando quali {g:unitsubunit} considerare;
* Attore: {g:analista};
* Precondizioni: è stato visualizzato il grafico tempo/occorrenze [SUC5];
* Postcondizioni: il grafico viene aggiornato tenendo conto delle {g:unitsubunit} selezionate.

### SUC8 - Filtro Grafico Firmware/Occorrenze

```{ .plantuml caption="SUC8"}
left to right direction
:Analista: as u
package "SUC8 Filtro Grafico Firmware/Occorrenze"{
usecase SUC8.1 as "SUC8.1
Per Codice Evento"
usecase SUC8.2 as "SUC8.2
Per Firmware"
}
u--SUC8.1
u--SUC8.2
```

* Scenario: l'utente vuole modificare la visualizzazione del grafico {g:firmware}/occorrenze applicando dei filtri ai dati;
* Attore: {g:analista};
* Precondizioni: è stato visualizzato il grafico {g:firmware}/occorrenze [SUC6];
* Postcondizioni: vengono applicati i filtri selezionati.

#### SUC8.1 - Filtro per Codice Evento

* Scenario: l'utente vuole filtrare il grafico firmware/occorrenze selezionando quali eventi visualizzare;
* Attore: {g:analista};
* Precondizioni: è stato visualizzato il grafico firmware/occorrenze [SUC6];
* Postcondizioni: il grafico viene aggiornato tenendo conto degli eventi da visualizzare.

#### SUC8.2 - Filtro per Firmware

* Scenario: l'utente vuole filtrare il grafico firmware/occorrenze selezionando quali {g:firmware} considerare;
* Attore: {g:analista};
* Precondizioni: è stato visualizzato il grafico firmware/occorrenze [SUC6];
* Postcondizioni: il grafico viene aggiornato tenendo conto dei {g:firmware} selezionati.

## Opzionali

### OUC1 - Esportazione file PDF che visualizza tabelle e varianti grafiche

```{ .plantuml caption="OUC1"}
left to right direction
package "smartlogviewer/SmartLogStatistics"{
usecase OUC1 as "OUC1
Esportazione file"
}
:Tecnico:--OUC1
:Analista:--OUC1
```

* Scenari: l'utente esporta un file PDF dove verranno visualizzati i grafici, quest'ultimo viene salvato nella locazione desiderata;
* Attore: {g:tecnico}, {g:analista};
* Precondizioni: è stato selezionato almeno un file di {g:log} nell'applicazione [VUC1] o [SUC1];
* Postcondizioni: viene esportato il file con i grafici.

### OUC2 - L'utente vuole eliminare i filtri applicati in precedenza

```{ .plantuml caption="OUC2"}
left to right direction
package "smartlogviewer/SmartLogStatistics"{
usecase OUC2 as "OUC2
Ripristino filtri"
}
:Tecnico:--OUC2
:Analista:--OUC2
```

* Scenari: l'utente elimina i filtri applicati precedentemente;
* Attore: {g:tecnico}, {g:analista};
* Precondizioni: vengono applicati i filtri o le selezioni; [VUC2] [VUC3] [SUC2] [SUC3]
* Postcondizioni: i filtri vengono ripristinati.

### OUC3 - Ricerca sequenze di eventi non ordinati o parziali

```{ .plantuml caption="OUC3"}
left to right direction
:Tecnico: as i
package "smartlogviewer"{
usecase OUC3 as "OUC3
Ricerca sequenza di eventi"
}
i--OUC3
```

* Scenari: l'utente vuole cercare una sequenza di eventi più o meno vicini nel tempo ma che non sono necessariamente in ordine;
* Attore: {g:tecnico};
* Precondizioni: viene visualizzata la tabella [VUC2];
* Postcondizioni: vengono evidenziate le tuple con gli eventi con codice corrispondente ai parametri di ricerca o una notifica per l'utente.

### OUC4 - Visualizzazione della matrice di correlazione

```{ .plantuml caption="OUC4"}
left to right direction
:Analista: as i
package "SmartLogStatistics"{
usecase OUC4 as "OUC4
Visualizza matrice"
}
i--OUC4
```

* Scenari: l'utente decide di visualizzare la {g:matrice_correlazione};
* Attore: {g:analista};
* Precondizioni: è stato caricato almeno un file di {g:log} nell'applicazione[SUC1];
* Postcondizioni: viene visualizzata la {g:matrice_correlazione}.

# Requisiti

## Funzionali (SmartLogViewer)

| **Requisito** | **Descrizione** | **Classificazione** | **Fonti** |
|---------------| ----------------| ------------------- | --------- |
| VRF1 | L'utente deve poter caricare nell'applicazione un singolo file di {g:log} presente localmente | Obbligatorio | Capitolato - VUC1 |
| VRF1.1 | Viene visualizzato un messaggio di errore se il file caricato non è compatibile | Obbligatorio | VUC1.1 |
| VRF2 | Deve essere presente una visualizzazione in forma tabellare | Obbligatorio | Capitolato - VUC2 |
| VRF2.1 | La tabella di VRF2 deve avere una colonna con intestazione "Data/ora" | Obbligatorio | VUC2.1.1 |
| VRF2.2 | La tabella di VRF2 deve avere una colonna con intestazione "Codice evento" | Obbligatorio | VUC2.1.2 |
| VRF2.3 | La tabella di VRF2 deve avere una colonna con intestazione "{g:unitsubunit}" | Obbligatorio | VUC2.1.3 |
| VRF2.4 | La tabella di VRF2 deve avere una colonna con intestazione "Versione {g:firmware}" | Obbligatorio | VUC2.1.4 |
| VRF2.5 | La tabella di VRF2 deve avere una colonna con intestazione "Descrizione" | Obbligatorio | VUC2.1.5 |
| VRF2.6 | La tabella di VRF2 deve avere una colonna con intestazione "Stato" (1 per ON, 0 per OFF) | Obbligatorio | VUC2.1.6 |
| VRF2.7 | L'applicazione colora ogni riga in base al {g:codice_evento} | Obbligatorio | Capitolato - VUC2.1.7 |
| VRF3 | Deve essere presente una funzione per ordinamento colonne della tabella simile a spreadsheet | Obbligatorio | Capitolato - VUC4 |
| VRF3.1 | Ordinamento per data/ora | Obbligatorio | Capitolato - VUC4.1 |
| VRF3.2 | Ordinamento per {g:codice_evento} | Obbligatorio | Capitolato - VUC4.2 |
| VRF3.3 | Ordinamento per {g:unitsubunit} | Obbligatorio | Capitolato - VUC4.3 |
| VRF3.4 | Ordinamento per {g:firmware} | Obbligatorio | Capitolato - VUC4.4 |
| VRF4 | Deve essere presente una funzione di ricerca di sequenze di eventi note all’interno di un {g:log}, con la relativa etichettatura (gli eventi devono essere ordinati ma non obbligatoriamente consecutivi l'uno all'altro) | Obbligatorio | Capitolato - VUC5 |
| VRF4.1 | Viene visualizzato un messaggio d'errore se non è presente almeno un  {g:evento} inserito dall'utente per la ricerca | Obbligatorio | VUC5.1 |
| VRF5 | Deve essere presente un {g:grafico_timeline} per mostrare le attivazioni degli eventi | Obbligatorio | Capitolato - VUC6 |
| VRF5.1 | L'asse x del grafico rappresenta il tempo | Obbligatorio | Capitolato - VUC6.1 |
| VRF5.2 | L'asse y del grafico contiene l'insieme degli eventi | Obbligatorio | Capitolato - VUC6.2 |
| VRF5.3 | Un rettangolo “pieno” che si sviluppa sull'asse x indica il periodo di tempo in cui l’evento (indicato sull'asse y) è ATTIVO | Obbligatorio | Capitolato - VUC6.3 |
| VRF6 | Si deve poter effettuare lo "zoom" in/out sul grafico| Obbligatorio | Capitolato - VUC7 |
| VRF7 | Si deve poter effettuare lo "span" (scroll orizzontale) sul grafico | Obbligatorio | Capitolato - VUC8 |
| VRF8 | Devono essere presenti funzioni di filtro per modificare la visualizzazione della tabella e del grafico | Obbligatorio | Capitolato - VUC3 - VUC7 |
| VRF8.1 | Filtro per intervallo temporale (select) | Obbligatorio | Capitolato - VUC3.1 - VUC9 |
| VRF8.1.1 | Viene visualizzato un messaggio d'errore se l'intervallo temporale selezionato non è valido | Obbligatorio | VUC3.1.1 - VUC9.1 |
| VRF8.2 | Filtro per {g:unitsubunit} | Obbligatorio | Capitolato - VUC3.2 - VUC10.1 |
| VRF8.3 | Filtro per versione {g:firmware} | Obbligatorio | Capitolato - VUC3.3 - VUC10.2 |
| VRF8.4 | Filtro per {g:codice_evento} | Obbligatorio | Capitolato - VUC3.4 - VUC10.3 |
| VRO1 | L'utente deve poter visualizzare altri tipi di grafici | Opzionale | Capitolato |
| VRO2 | L'utente deve poter ricercare sequenze più o meno note con relativa etichettatura dato un limite di tempo | Opzionale | Capitolato - OUC3 |
| VRO3 | Implementare la colorazione per livello di nidificazione (16 Unit/16 livelli per SubUnit) | Opzionale | Capitolato |
| VRO4 | L'utente deve poter esportare i file che visualizza i grafici | Opzionale | Discussione interna - OUC1 |
| VRO5 | L'utente deve poter eliminare tutti i filtri applicati | Opzionale | Discussione interna - OUC2 |

## Funzionali (SmartLogStatistics)

| **Requisito** | **Descrizione** | **Classificazione** | **Fonti** |
|---------------| ----------------| ------------------- | --------- |
| SRF1 | L'utente deve poter selezionare i {g:log} da analizzare per range di data/ora (min, max, all) | Obbligatorio | Capitolato - SUC1 |
| SRF1.1 | Viene visualizzato un messaggio d'errore se l'intervallo temporale selezionato non è valido | Obbligatorio | SUC1.1 |
| SRF2 | L'utente visualizza un prospetto con i dati da analizzare | Obbligatorio | Capitolato - SUC2 |
| SRF2.1 | Nel prospetto compare l'intervallo temporale | Obbligatorio | Capitolato - SUC2.1 |
| SRF2.2 | Nel prospetto compare il numero di {g:log} analizzati | Obbligatorio | Capitolato - SUC2.2 |
| SRF2.3 | Nel prospetto compare la media numero di eventi tra i {g:log} | Obbligatorio | Capitolato - SUC2.3 |
| SRF2.4 | Nel prospetto compare il massimo numero di eventi tra i {g:log} | Obbligatorio | Capitolato - SUC2.4 |
| SRF2.5 | Nel prospetto compare la deviazione standard numero di eventi fra i {g:log} | Obbligatorio | Capitolato - SUC2.5 |
| SRF2.6 | Nel prospetto compare la lista degli eventi raggruppati per frequenza di occorrenza (0-1) | Obbligatorio | Capitolato - SUC2.6 |
| SRF2.6.1 | Nella lista viene visualizzato il {g:codice_evento} | Obbligatorio | Capitolato - SUC2.6.1.1 |
| SRF2.6.2 | Nella lista viene visualizzato il numero di volte che l'evento è passato dallo stato 0 allo stato 1 | Obbligatorio | Capitolato - SUC2.6.1.2 |
| SRF2.6.3 | Nella lista viene visualizzata la versione {g:firmware} | Obbligatorio | Capitolato - SUC2.6.1.3 |
| SRF3 | Ci deve essere la possibilità di ordinare le righe della lista in base ai suoi campi | Obbligatorio | Capitolato - SUC4 |
| SRF3.1 | Ordinamento della lista per {g:codice_evento} | Obbligatorio | Capitolato - SUC4.1 |
| SRF3.2 | Ordinamento della lista per numero occorrenze | Obbligatorio | Capitolato - SUC4.2 |
| SRF3.3 | Ordinamento della lista per {g:firmware} | Obbligatorio | Capitolato - SUC4.3 |
| SRF4 | Ci devono essere delle funzioni di filtraggio | Obbligatorio | Capitolato - SUC3 |
| SRF4.1 | Filtro per {g:unitsubunit} | Obbligatorio | Capitolato - SUC3.1 |
| SRF4.2 | Filtro per intervallo temporale | Obbligatorio | Capitolato - SUC3.2 |
| SRF4.2.1 | Viene visualizzato un messaggio d'errore se l'intervallo temporale selezionato non è valido | Obbligatorio | SUC3.2.1 |
| SRF4.3 | Filtro per versione {g:firmware} | Obbligatorio | Capitolato - SUC3.3 |
| SRF5 | Visualizzazione grafico "tempo/occorrenze" | Obbligatorio | Capitolato - SUC5 |
| SRF5.1 | L'asse x del grafico rappresenta il tempo | Obbligatorio | Capitolato - SUC5.1 |
| SRF5.2 | L'asse y del grafico rappresenta le occorrenze | Obbligatorio | Capitolato - SUC5.2 |
| SRF5.3 | Viene visualizzata una linea per ogni  {g:evento} presente nel {g:log} | Obbligatorio | Capitolato - SUC5.3 |
| SRF6 | Visualizzazione del grafico "firmware/occorrenze" | Obbligatorio | Capitolato - SUC6 |
| SRF6.1 | L'asse x del grafico visualizza i {g:firmware} | Obbligatorio | Capitolato - SUC6.1 |
| SRF6.2 | L'asse y del grafico rappresenta le occorrenze | Obbligatorio | Capitolato - SUC6.2 |
| SRF6.3 | Viene visualizzata una barra per ogni {g:firmware} | Obbligatorio | Capitolato - SUC 5.3 |
| SRF7 | Funzionalità di filtro per il grafico "tempo/occorrenze" | Obbligatorio | Capitolato - SUC7 |
| SRF7.1 | Filtro per {g:codice_evento} | Obbligatorio | Capitolato - SUC7.1 |
| SRF7.2 | Filtro per {g:unitsubunit} | Obbligatorio | Capitolato - SUC7.2 |
| SRF8 | Funzionalità di filtro per il grafico "firmware/occorrenze" | Obbligatorio | Capitolato - SUC8 |
| SRF8.1 | Filtro per {g:codice_evento} | Obbligatorio | Capitolato - SUC8.1 |
| SRF8.2 | Filtro per {g:firmware} | Obbligatorio | Capitolato - SUC8.2 |
| SRO1 | L'utente deve poter visualizzare un grafico {g:matrice_correlazione} che mostri l'indice di correlazione tra coppie di eventi | Opzionale | Capitolato OUC4 |
| SRO2 | L'utente deve poter esportare i file che visualizza i grafici | Opzionale | Discussione interna - OUC1 |
| SRO3 | L'utente deve poter eliminare tutti i filtri applicati | Opzionale | Discussione interna - OUC2 |

## Qualità

| **Requisito** | **Descrizione** | **Classificazione** | **Fonti** |
|---------------| ----------------| ------------------- | --------- |
| VRQ1 | {g:smartlogviewer} deve essere sviluppato seguendo le regole descritte nel documento *Norme di progetto* | Obbligatorio | Capitolato |
| VRQ2 | Deve essere fornita una guida per sviluppatori di {g:smartlogviewer} | Obbligatorio | Capitolato |
| VRQ3 | Deve essere fornita un manuale d'uso di {g:smartlogviewer} | Obbligatorio | Capitolato |
| SRQ1 | {g:smartlogstatistics} deve essere sviluppato seguendo le regole descritte nel documento *Norme di progetto* | Obbligatorio | Capitolato |
| SRQ2 | Deve essere fornita una guida per sviluppatori di {g:smartlogstatistics} | Obbligatorio | Capitolato |
| SRQ3 | Deve essere fornita un manuale d'uso di {g:smartlogstatistics} | Obbligatorio | Capitolato |
| RQ1 | Deve essere fornita la documentazione minima richiesta anche dal corso di "Ingegneria del Software": Analisi dei requisiti, Norme di progetto, Piano di progetto, Piano di qualifica, Glossario | Obbligatorio | Capitolato |
| RQ2 | Viene richiesto l'utilizzo di un {g:repository} pubblico ({g:github}) | Obbligatorio | Capitolato |

## Vincolo

| **Requisito** | **Descrizione** | **Classificazione** | **Fonti** |
|---------------| ----------------| ------------------- | --------- |
| VRV1 | L'applicazione {g:smartlogviewer} deve essere di tipo web | Obbligatorio | Capitolato |
| VRV2 | Richiesto {g:python} per la parte di analisi dei dati | Obbligatorio | Capitolato |
| VRV3 | {g:smartlogviewer} deve esser compatibile con il browser Google Chrome versione 110 | Obbligatorio | Discussione con azienda |
| VRV4 | {g:smartlogviewer} deve esser compatibile con il browser Firefox versione 110 | Obbligatorio | Discussione con azienda |
| VRV5 | {g:smartlogviewer} deve esser compatibile con il browser Microsoft Edge versione 110 | Obbligatorio | Discussione con azienda |
| VRV6 | {g:smartlogviewer} deve esser compatibile con il browser Opera versione 95 | Obbligatorio | Discussione con azienda |
| SRV1 | L'applicazione {g:smartlogstatistics} deve essere di tipo web | Obbligatorio | Capitolato |
| SRV2 | Richiesto {g:python} per la parte di analisi dei dati | Obbligatorio | Capitolato |
| SRV3 | {g:smartlogstatistics} deve esser compatibile con il browser Google Chrome versione 110 | Obbligatorio | Discussione con azienda |
| SRV4 | {g:smartlogstatistics} deve esser compatibile con il browser Firefox versione 110 | Obbligatorio | Discussione con azienda |
| SRV5 | {g:smartlogstatistics} deve esser compatibile con il browser Microsoft Edge versione 110 | Obbligatorio | Discussione con azienda |
| SRV6 | {g:smartlogstatistics} deve esser compatibile con il browser Opera versione 95 | Obbligatorio | Discussione con azienda |

## Sistemi Operativi

Essendo applicativi browser, entrambe le applicazioni non hanno bisogno di essere eseguite su un sistema operativo specifico.

## Prestazionali

L'azienda non ha posto alcun vincolo prestazionale per le due applicazioni. Per questo motivo non è stato possibile definire requisiti di prestazione.

# Tracciamento

| Fonte | Requisito |
| ----- | --------- |
| VUC1 | VRF1 |
| VUC1.1 | VRF1.1 |
| VUC2 | VRF2 |
| VUC2.1.1 | VRF2.1 |
| VUC2.1.2 | VRF2.2 |
| VUC2.1.3 | VRF2.3 |
| VUC2.1.4 | VRF2.4 |
| VUC2.1.5 | VRF2.5 |
| VUC2.1.6 | VRF2.6 |
| VUC2.1.7 | VRF2.7 |
| VUC3 | VRF8 |
| VUC3.1 | VRF8.1 |
| VUC3.1.1 | VRF8.1.1 |
| VUC3.2 | VRF8.2 |
| VUC3.3 | VRF8.3 |
| VUC3.4 | VRF8.4 |
| VUC4 | VRF3 |
| VUC4.1 | VRF3.1 |
| VUC4.2 | VRF3.2 |
| VUC4.3 | VRF3.3 |
| VUC4.4 | VRF3.4 |
| VUC5 | VRF4 |
| VUC5.1 | VRF4.1 |
| VUC6 | VRF5 |
| VUC6.1 | VRF5.1 |
| VUC6.2 | VRF5.2 |
| VUC6.3 | VRF5.3 |
| VUC7 | VRF8 |
| VUC7 | VRF6 |
| VUC8 | VRF7 |
| VUC9 | VRF8.1 |
| VUC9.1 | VRF8.1.1 |
| VUC10.1 | VRF8.2 |
| VUC10.2 | VRF8.3 |
| VUC10.3 | VRF8.4 |
| SUC1 | SRF1 |
| SUC1.1 | SRF1.1 |
| SUC2 | SRF2 |
| SUC2.1 | SRF2.1 |
| SUC2.2 | SRF2.2 |
| SUC2.3 | SRF2.3 |
| SUC2.4 | SRF2.4 |
| SUC2.5 | SRF2.5 |
| SUC2.6 | SRF2.6 |
| SUC2.6.1.1 | SRF2.6.1 |
| SUC2.6.1.2 | SRF2.6.2 |
| SUC2.6.1.3 | SRF2.6.3 |
| SUC3 | SRF4 |
| SUC3.1 | SRF4.1 |
| SUC3.2 | SRF4.2 |
| SUC3.2.1 | SRF4.2.1 |
| SUC3.3 | SRF4.3 |
| SUC4 | SRF3 |
| SUC4.1 | SRF3.1 |
| SUC4.2 | SRF3.2 |
| SUC4.3 | SRF3.3 |
| SUC5 | SRF5 |
| SUC5.1 | SRF5.1 |
| SUC5.2 | SRF5.2 |
| SUC5.3 | SRF5.3 |
| SUC6 | SRF6 |
| SUC6.1 | SRF6.1 |
| SUC6.2 | SRF6.2 |
| SUC6.3 | SRF6.3 |
| SUC7 | SRF7 |
| SUC7.1 | SRF7.1 |
| SUC7.2 | SRF7.2 |
| SUC8 | SRF8 |
| SUC8.1 | SRF8.1 |
| SUC8.2 | SRF8.2 |
| OUC1 | VRO4, SRO2 |
| OUC2 | VRO5, SRO3 |
| OUC3 | VRO2 |
| OUC4 | SRO1 |
| Capitolato | VRF1, VRF2, VRF2.7, VRF3, VRF3.1, VRF3.2, VRF3.3, VRF3.4, VRF4, VRF5, VRF5.1, VRF5.2, VRF5.3, VRF6, VRF7, VRF8, VRF8.1, VRF8.2, VRF8.3, VRF8.4, SRF1, SRF2, SRF2.1, SRF2.2, SRF2.3, SRF2.4, SRF2.5, SRF2.6, SRF2.6.1, SRF2.6.2, SRF2.6.3, SRF3, SRF3.1, SRF3.2, SRF3.3, SRF4, SRF4.1, SRF4.2, SRF4.3, SRF5, SRF5.1, SRF5.2, SRF5.3, SRF6, SRF6.1, SRF6.2, SRF6.3, SRF7, SRF7.1, SRF7.2, SRF8, SRF8.1, SRF8.2, VRO1, VRO2, VRO3, SRO1, VRQ1, VRQ2, SRQ1, SRQ2, RQ1, RQ2, VRV1, VRV2, SRV1, SRV2 |
| Discussione interna | VRO4, VRO5, SRO2, SRO3 |
| Discussione con azienda | VRV3, VRV4, VRV5, VRV6, SRV3, SRV4, SRV5, SRV6 |
