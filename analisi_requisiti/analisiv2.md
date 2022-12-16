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
  0.6.0:
    autore: Nicola Cecchetto
    data: 08/12/2022
    cambiamenti: Revisione post-conferenza con azienda
  0.6.1:
    autore: Mattia Brunello
    data: 16/12/2022
    cambiamenti: Divisone UC3.4 in UC3.4.1, UC3.4.2 e UC3.4.3. Aggiunti OUC3 e OUC4
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
  * VRF3.4 - Deve essere possibile selezione con le seguenti funzioni:
    * VRF3.4.1 - Select: selezione di un intervallo di tempo;
    * VRF3.4.2 - Zoom: zoom in/out;
    * VRF3.4.3 - Span: scroll orizzontale;
  * VRF3.5 - Deve essere possibile filtrare gli eventi in base alle colonne ( Code, Unit/subUnit, etc);
* VRF4 - Deve essere presente una funzione di ricerca di sequenze di eventi note all’interno di un log, con la relativa etichettatura (gli eventi devono essere ordinati ma non obbligatoriamente consecutivi l'uno all'altro).

## Requisiti funzionali - SmartLogStatistics

* SRF1 - L'utente deve poter selezionare i log da analizzare per range di data/ora (min, max, all);
  * SRF1.1 - L'utente deve poter aggiungere/togliere altri file di log a quelli già selezionati precedentemente;
* SRF2 - L'utente deve potere visualizzare le seguenti statistiche in un prospetto:
  * SRF2.1 - Intervallo Temporale (data più vecchia - data più recente);
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
* VRO2 - L'utente deve poter ricercare sequenze più o meno note con relativa etichettatura dato un limite di tempo (gli eventi ricercati possono essere anche in ordine sparso ma devono avere una correlazione);
* SRO1 - L'utente deve poter visualizzare un grafico matrice di correlazione che mostri l'indice di correlazione tra coppie di eventi;
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

Sono entrambe applicazioni web basate su un modello client-server. <!-- trovare un modo sensato per dire sta roba-->

## Requisiti prestazionali

L'azienda non ha posto requisiti prestazionali per le applicazioni.

# Casi d'uso

## Attori

L'applicazione dovrà essere utilizzata dagli utenti interni all'azienda, senza distinzioni gerarchiche.
Viene identificato il seguente attore:

* L'utente;

## SmartLogViewer

### VUC1 - Caricamento file di log (VRF1)

```{ .plantuml caption="VUC1"}
left to right direction
:utente: as o
package "SmartLogViewer"{
usecase VUC1 as "VUC1
Selezione log"
}
o--VUC1
```

* Scenario: l'utente carica un file di log da visualizzare nell'applicazione SmartLogViewer;
* Attore: utente;
* Precondizioni: l'applicazione è operativa e funzionante;
* Postcondizioni: i dati del file di log vengono caricati correttamente nell'applicazione SmartLogViewer e vengono visualizzati tabella e grafico.

### VUC2 - Modifica visualizzazione della tabella (VRF2.2, VRF2.3, VRF2.4, VRF4)

```{ .plantuml caption="VUC2"}
left to right direction
:utente: as o
package "SmartLogViewer Tabella"{
usecase VUC2.1 as "VUC2.1
Filtro"
usecase VUC2.1.2 as "VUC2.1.2
Rimozione filtro"
usecase VUC2.1.1 as "VUC2.1.1
Aggiunta filtro"
usecase VUC2.2 as "VUC2.2
Ordinamento"
usecase VUC2.3 as "VUC2.3
Ricerca sequenza eventi"
usecase VUC2.4 as "VUC2.4
Raggruppamento per data/ora"

usecase VUC2.4.1 as "VUC2.4.1
Selezione intervallo temporale"
usecase VUC2.4.2 as "VUC2.4.2
Zoom intervallo temporale"
usecase VUC2.4.3 as "VUC2.4.3
Scroll orizzontale"

}
o--VUC2.1
o--VUC2.2
o--VUC2.3
o--VUC2.4
VUC2.1 ..> VUC2.1.1 : <<include>>
VUC2.1 ..> VUC2.1.2 : <<include>>
VUC2.4 ..> VUC2.4.1 : <<include>>
VUC2.4 ..> VUC2.4.2 : <<include>>
VUC2.4 ..> VUC2.4.3 : <<include>>

```

* Scenari:
  1. l'utente applica dei filtri in base al valore nelle celle della tabella [VUC2.1];
  2. l'utente applica un ordinamento in base a una colonna della tabella [VUC2.2];
  3. l'utente ricerca tuple tramite una sequenza di codici evento, con la possibilità di effettuare una ricerca
     semplice inserendo un solo codice [VUC2.3];
  4. l'utente ricerca tuple con data/ora contenuta in un lasso di tempo selezionato [VUC2.4];
* Attore: utente;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC1];
* Postcondizioni: viene aggiornata la tabella con i dati selezionati.

#### VUC2.1 - Filtri per valore

* Scenari:
  1. l'utente aggiunge dei filtri in base al valore nelle celle della tabella;
  2. l'utente rimuove dei filtri in base al valore nelle celle della tabella;
* Attore: utente;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC1];
* Postcondizioni: viene aggiornata la tabella con i dati filtrati.

#### VUC2.2 - Ordinamento per colonna

* Scenari: l'utente applica un ordinamento in base a una colonna della tabella;
* Attore: utente;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC1];
* Postcondizioni: viene aggiornata la tabella con i dati ordinati.

#### VUC2.3 - Ricerca tramite sequenza di codice evento

* Scenari: l'utente ricerca tuple tramite una sequenza di codici evento;
* Attore: utente;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC1];
* Postcondizioni: viene aggiornata la tabella con gli eventi con codice corrispondente ai parametri di ricerca.

#### VUC2.4 - Ricerca tramite data/ora

* Scenari: l'utente ricerca tuple con data/ora contenuta in un lasso di tempo selezionato;
* Attore: utente;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC1];
* Postcondizioni: viene visualizzata la tabella con gli eventi con data/ora corrispondente ai parametri di ricerca.

##### VUC2.4.1 - Selezione dell'intervallo temporale (VRF3.4.1)

```{ .plantuml caption="VUC2.4.1"}
left to right direction
:utente: as o
package "SmartLogViewer Grafico"{
usecase VUC2.4.1 as "VUC2.4.1
Selezione intervallo temporale"
}
o--VUC2.4.1
```

* Scenario: l'utente vuole visualizzare il grafico in un intervallo temporale;
* Attore: utente;
* Precondizioni: è stato visualizzato il grafico [VUC1];
* Postcondizioni: viene visualizzato il grafico con sull'asse x gli estremi temporali selezionati.

##### VUC2.4.2 - Zoom dell'intervallo temporale (VRF3.4.2)

```{ .plantuml caption="VUC2.4.2"}
left to right direction
:utente: as o
package "SmartLogViewer Grafico"{
usecase VUC2.4.2 as "VUC2.4.2
Zoom intervallo temporale"
}
o--VUC2.4.2
```

* Scenario: l'utente vuole visualizzare il grafico in un intervallo temporale più ristretto o più ampio;
* Attore: utente;
* Precondizioni: è stato visualizzato il grafico [VUC1];
* Postcondizioni: viene visualizzato il grafico con sull'asse x gli estremi temporali modificati.

##### VUC2.4.3 - Scroll orizzontale (VRF3.4.3)

```{ .plantuml caption="VUC2.4.3"}
left to right direction
:utente: as o
package "SmartLogViewer Grafico"{
usecase VUC2.4.3 as "VUC2.4.3
Scroll orizzontale"
}
o--VUC2.4.3
```

* Scenario: l'utente vuole visualizzare il grafico in un intervallo temporale successivo o precedente;
* Attore: utente;
* Precondizioni: è stato visualizzato il grafico [VUC1];
* Postcondizioni: viene visualizzato il grafico con sull'asse x gli estremi temporali modificati.

### VUC3 - Ricerca eventi ordinati (VRF4)

```{ .plantuml caption="VUC3"}
left to right direction
:utente: as o
package "SmartLogViewer Tabella"{
usecase VUC3 as "VUC3
Ricerca eventi ordinati"
}
o--VUC3
```

* Scenario: l'utente vuole cercare una sequenza di eventi ordinati ma non necessariamente consecutivi;
* Attore: utente;
* Precondizioni: è stata visualizzata la tabella con i dati [VUC1];
* Postcondizioni: vengono evidenziate le tuple con gli eventi con codice corrispondente ai parametri di ricerca.

## SmartLogStatistics

### SUC1 - Caricamento dei log per range di data/ora (SRF1, SRF1.1)

```{ .plantuml caption="SUC1"}
:utente: as o
package "SmartLogStatistics"{
usecase SUC1 as "SUC1
Caricamento log per range data/ora"
usecase SUC1.1 as"SUC1.1
Aggiunta log"
usecase SUC1.2 as"SUC1.2
Rimozione log"
}
o-right-SUC1
SUC1 <.. SUC1.1 : <<extends>>
SUC1 <.. SUC1.2 : <<extends>>
```

* Scenario:
  1. l'utente carica i file di log da visualizzare nell'applicazione SmartLogLogistics per range di data/ora;
  2. l'utente aggiunge o toglie log da visualizzare a quelli già presenti;
* Attore: utente;
* Precondizioni: l'applicazione è operativa e funzionante;
* Postcondizioni: i log vengono caricati correttamente nell'applicazione SmartLogStatistics e vengono visualizzati prospetto e grafici.

### SUC2 - Modifica visualizzazione del prospetto (SRF2.6, SRF3.1.1)

```{ .plantuml caption="SUC2"}
left to right direction
:utente: as o
package "SmartLogStatistics Prospetto"{
usecase SUC2.1 as "SUC2.1
Filtro"
usecase SUC2.1.3 as "SUC2.1.3
Filtro su versione firmware"
usecase SUC2.1.2 as "SUC2.1.2
Filtro su unit/subUnit"
usecase SUC2.1.1 as "SUC2.1.1
Filtro su data/ora"
usecase SUC2.2 as "SUC2.2
Ordinamento"
usecase SUC2.2.3 as "SUC2.2.3
Ordinamento per versione firmware"
usecase SUC2.2.2 as "SUC2.2.2
Ordinamento per unit/subUnit"
usecase SUC2.2.1 as "SUC2.2.1
Ordinamento per versione firmware"
}
o--SUC2.1
o--SUC2.2
SUC2.1<|--SUC2.1.1
SUC2.1<|--SUC2.1.2
SUC2.1<|--SUC2.1.3
SUC2.2<|--SUC2.2.1
SUC2.2<|--SUC2.2.2
SUC2.2<|--SUC2.2.3
```

* Scenari:
  1. l'utente applica dei filtri in base al valori presenti nella tabella del prospetto [SUC2.1];
  2. l'utente applica un ordinamento in base ai valori presenti nella tabella del prospetto [SUC2.2];
* Attore: utente;
* Precondizioni: è stata visualizzata la tabella con i dati [SUC1];
* Postcondizioni: viene aggiornata la tabella con i dati selezionati;

#### SUC2.1 - Visualizzazione tabella filtrata

* Scenario:
  1. l'utente filtra per unit/subUnit la tabella di eventi da visualizzare;
  2. l'utente filtra per data/ora la tabella di eventi da visualizzare;
  3. l'utente filtra per versione del firmware la tabella di eventi da visualizzare;
* Attori: utente;
* Precondizioni: è stata visualizzata la tabella con i dati [SUC1];
* Postcondizioni: viene aggiornata la tabella degli eventi filtrata.

#### SUC2.2 - Visualizzazione tabella ordinata

* Scenario:
  1. l'utente ordina per unit/subUnit la tabella di eventi da visualizzare;
  2. l'utente ordina per data/ora la tabella di eventi da visualizzare;
  3. l'utente ordina per versione del firmware la tabella di eventi da visualizzare;
* Attori: utente;
* Precondizioni: è stata visualizzata la tabella con i dati [SUC1];
* Postcondizioni: viene aggiornata la tabella degli eventi ordinati.

### SUC3 - Modifica visualizzazione grafica (SRF3.1.1, SRF3.2.1)

```{ .plantuml caption="SUC3"}
left to right direction
:utente: as o
package "SmartLogStatistics Grafico"{
usecase SUC3.1 as "SUC3.1
Filtro"
usecase SUC3.1.1 as "SUC3.1.1
Filtro unit/subUnit"
usecase SUC3.1.2 as "SUC3.1.2
Filtro code"
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

* Scenario:
  1. l'utente applica dei filtri in base al valore nelle celle della tabella [SUC3.1];
  2. l'utente seleziona gli eventi e la lista firmware da visualizzare [SUC3.2];
* Attore: utente;
* Precondizioni: è stato visualizzato il grafico con numero di occorrenze rispetto alla versione firmware [SUC1];
* Postcondizioni: viene aggiornato il grafico con i filtri applicati.

#### SUC3.1 - Visualizzazione grafico filtrato

* Scenario:
  1. l'utente filtra per code la tabella di eventi da visualizzare;
  2. l'utente filtra per unit/subUnit la tabella di eventi da visualizzare;
* Attori: utente;
* Precondizioni: è stato visualizzato il grafico con numero di occorrenze rispetto alla versione firmware [SUC1];
* Postcondizioni: viene aggiornato il grafico degli eventi filtrato.

#### SUC3.2 - Visualizzazione grafico filtrato

* Scenario:
  1. l'utente seleziona gli eventi da visualizzare;
  2. l'utente seleziona la lista di firmware da visualizzare;
* Attori: utente;
* Precondizioni: è stato visualizzato il grafico con numero di occorrenze rispetto alla versione firmware [SUC1];
* Postcondizioni: viene aggiornato il grafico con solo gli eventi e i firmware selezionati.

## Opzionali

### OUC1 - Esportazione file che visualizza tabelle e varianti grafiche (RO1)

```{ .plantuml caption="OUC1"}
left to right direction
:utente: as o
package "SmartLogViewer/SmartLogStatistics"{
usecase OUC1 as "OUC1
Esportazione file"
}
o--OUC1
```

* Scenario: l'utente esporta un file dove verranno visualizzate le tabelle e le sue varianti grafiche;
* Attore: utente;
* Precondizioni: è stato selezionato almeno un file di log nell'applicazione [VUC1] o [SUC1];
* Postcondizioni: viene esportato il file con la tabella e le forme grafiche.

### OUC2 - L'utente vuole eliminare i filtri applicati in precedenza (RO2)

```{ .plantuml caption="OUC2"}
left to right direction
:utente: as o
package "SmartLogViewer/SmartLogStatistics"{
usecase OUC2 as "OUC2
Ripristino filtri"
}
o--OUC2
```

* Scenario: l'utente elimina i filtri applicati precedentemente;
* Attore: utente;
* Precondizioni: vengono applicati i filtri o le selezioni; [VUC2] [VUC3] [SUC2] [SUC3]
* Postcondizioni: i filtri vengono ripristinati.

### OUC3 - Ricerca sequenze di eventi non ordinati (VR02)
  
  ```{ .plantuml caption="OUC3"}
  left to right direction
  :utente: as o
  package "SmartLogViewer"{
  usecase OUC3 as "OUC3
  Ricerca sequenze"
  }
  o--OUC3
  ```

* Scenario: l'utente ricerca una sequenza di eventi non ordinati;
* Attore: utente;
* Precondizioni: viene visualizzata la tabella [VUC1];
* Postcondizioni: vengono evidenziate le tuple con gli eventi con codice corrispondente ai parametri di ricerca.

### OUC4 - Selezione eventi per matrice di correlazione (SR01.1)
  
  ```{ .plantuml caption="OUC4"}
  left to right direction
  :utente: as o
  package "SmartLogStatistics"{
  usecase OUC4 as "OUC4
  Selezione eventi per code e unit/subUnit"
  }
  o--OUC4
  ```

* Scenario: l'utente seleziona gli eventi per la matrice di correlazione;
* Attore: utente;
* Precondizioni: è stata visualizzata la matrice di correlazione[SR01];
* Postcondizioni: viene aggiornata la matrice con gli eventi selezionati.
