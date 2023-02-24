---
title: "Piano di qualifica"
date: "06/12/2022"
responsabile: "Davide Vitagliano"
redattori: ["Enrik Rucaj", "Antonio Stan"]
verificatori: ["Andrea Auletta", "Nicola Cecchetto", "Mattia Brunello", "Augusto Zanellato"]
abstract: "Viene definito il piano di qualifica"
docusage: "Esterno"
toc: true
versioni:
  v0.0.1:
    autore: Mattia Brunello
    data: 06/12/2022
    cambiamenti: Creazione struttura del documento
  v0.0.2:
    autore: Andrea Auletta
    data: 24/12/2022
    cambiamenti: Inseriti gli obiettivi da raggiungere
  v0.0.3:
    autore: Enrik Rucaj
    data: 12/01/2022
    cambiamenti: Inserite le metriche per la qualità di processo
  v0.0.4:
    autore: Antonio Stan
    data: 16/01/2022
    cambiamenti: Inserite le metriche per la qualità di prodotto

...

# Introduzione

## Scopo del documento

Questo documento ha lo scopo di descrivere il piano di qualifica del progetto, ovvero le attività che verranno svolte per garantire la qualità del prodotto finale e del processo di sviluppo. Esso deve implementare degli standard che permettano di garantire la qualità del prodotto e del processo di sviluppo, tramite misurazioni e controlli periodici dei risultati ottenuti.
Vengono descritti i processi di qualifica, le metriche utilizzate e le procedure di verifica e validazione.

## Glossario

Alcuni termini utilizzati nel documento potrebbero generare incomprensione per il loro significato. Tali termini vengono segnalati con una G maiuscola finale a pedice della parola, e sono elencati nel glossario.

## Riferimenti

### Riferimenti normativi

* Norme di progetto
* [Regolamento didattico](https://www.math.unipd.it/~tullio/IS-1/2021/Dispense/PD2.pdf)
   <!-- [https://www.math.unipd.it/~tullio/IS-1/2021/Dispense/PD2.pdf](https://www.math.unipd.it/~tullio/IS-1/2021/Dispense/PD2.pdf) -->

### Riferimenti informativi

* Analisi dei requisiti
* [Capitolato C5 - SmartLog](https://www.math.unipd.it/~tullio/IS-1/2022/Progetto/C5.pdf)

# Qualità di processo

## Obiettivi

Le metriche presenti devono permettere un analisi automigliorativa alla fine di ogni periodo *(guardare il documento Piano di Progetto per la suddivisione dei periodi)*, per migliorare al massimo il flusso di sviluppo nel ciclo di vita del progetto.

## Metriche utilizzate

### QPS_1: Preventivo costo attuale (PCA)

Somma dei costi di ogni periodo calcolato nel preventivo iniziale a partire dall'inizio del progetto fino a un determinato periodo.

### QPS_2: Costo attuale (CA)

Il costo effettivo calcolato a partire dall'inizio del progetto fino a un determinato periodo.

### QPS_3: Stima costo a finire (SCF)

Il costo che servirà a portare a termine il progetto a partire da un determinato periodo.
$$SCF=Budget-PCA$$

### QPS_4: Stima costo totale (SCT)

Revisione del budget totale che servirà per portare a compimento il progetto.
$$SCT=SCF+CA$$

### QPS_5: Rapporto costo (RC)

Percentuale del rapporto tra il costo attuale (CA) e quello calcolato nel preventivo a partire dall'inizio del progetto fino a un determinato periodo. *In caso di risultato negativo si rischia di andare fuori budget*.
$$RC=(1-\frac{CA}{PCA})*100$$

### QPS_6: Preventivo periodo temporale attuale (PPTA)

Somma delle ore svolte in ogni periodo calcolate nel preventivo iniziale a partire dall'inizio del progetto fino a un determinato periodo.

### QPS_7: Periodo temporale attuale (PTA)

Le ore effettive svolte a partire dall'inizio del progetto fino a un determinato periodo.

### QPS_8: Stima lasso temporale a finire (SLTF)

Il lasso di tempo che servirà a portare a termine il progetto a partire da un determinato periodo.
$$SLTF=Tempo di sviluppo totale-PPTA$$

### QPS_9: Stima tempo di sviluppo totale (STST)

Revisione del lasso temporale totale che servirà per sviluppare interamente il progetto.
$$STST=SLTF+PTA$$

### QPS_10: Rapporto periodo temporale (RPT)

Percentuale del rapporto tra il periodo temporale attuale (PTA) e quello calcolato nel preventivo a partire dall'inizio del progetto fino a un determinato periodo. *In caso di risultato negativo si rischia di andare fuori budget*.
$$RPT=(1-\frac{PTA}{PPTA})*100$$

### QPS_11: Metriche soddisfate (MS)

Percentuale delle metriche di qualità (sia di processo che di prodotto) soddisfate in un determinato periodo.
$$Metriche soddisfate=\frac{Numero di metriche soddisfate}{Numero di metriche totali}*100$$

### Tabella metriche - Valori accettabili e ottimali

|    **Codice**     |                  **Nome**                   | **Valore accettabile**  | **Valore ottimale** |
| ----------------- | :-----------------------------------------: | :-------------------:  | :-----------------: |
| QPS_1             |        Preventivo costo attuale (PCA)       |        $>$ 0           |    $\leq$ Budget    |
| QPS_2             |              Costo attuale (CA)             |        $>$ 0           |     $\leq$ PCA      |
| QPS_3             |          Stima costo a finire (SCF)         |       $\geq$           |    $\leq$ Budget    |
| QPS_4             |           Stima costo totale (SCT)          |  $\leq$ Budget + 5%    |     $=$ Budget      |
| QPS_5             |              Rapporto costo (RC)            |     $\geq$ -20%        |     $\geq$ 0%       |
| QPS_6             | Preventivo periodo temporale attuale (PPTA) |         $>$ 0          |  $\leq$ Ore Totali  |
| QPS_7             |        Periodo temporale attuale (PTA)      |         $>$ 0          |     $\leq$ PPTA     |
| QPS_8             |     Stima lasso temporale a finire (SLTF)   |       $\geq$ 0         |  $\leq$ Ore Total   |
| QPS_9             |     Stima tempo di sviluppo totale (STST)   | $\leq$ Ore Totali + 5% |    $=$ Ore Totali   |
| QPS_10            |        Rapporto periodo temporale (RPT)     |     $\geq$ -20%        |     $\geq$ 0%       |
| QPS_11            |            Metriche soddisfate (MS)         |      $\geq$ 80%        |      $=$ 100%       |

# Qualità del prodotto

## Obiettivi

### Documentazione

* I documenti devono essere leggibili e quindi comprensibili agli utenti;
* I documenti non devono avere errori grammaticali;
* Nei documenti i paragrafi devono essere posizionati nei capitoli giusti.

### Software

* Il software deve risolvere tutte le casistiche presentate nell'*Analisi dei requisiti*;
* Le applicazioni dovranno essere intuitive nell'utilizzo in modo tale da rendere l'esperienza dell'utente più semplice;
* Il codice dovrà essere verificato per confermare la corretta implementazione di tutti i requisiti individuati.

## Metriche utilizzate

La presente sezione espone le metriche selezionate dal gruppo SevenEleven
per misurare il raggiungimento degli obiettivi di qualità del prodotto.

### QPD_1: Indice di Gulpease (IG)

 Indice che riporta il grado di leggibilità di un testo redatto in lingua italiana . La formula adottata è la seguente:

$$GULP= {89+}\frac{ 300  *(n_{frasi}) - 10*(n_{lettere}) }{n_{parole}}$$

L'indice così calcolato può assumere valori tra 0 e 100:

* GULP < 80: indica una leggibilità difficile per utente con licenza elementare;

* GULP < 60: indica una leggibilità difficile per un utente con licenza media;

* GULP < 40: indica una leggibilità difficile con licenza superiore;

| **Documentazione** |   **Valore accettabile**  | **Valore ottimale** |
| -----------------  | :-------------------:    | :-----------------: |
| Interna            |             $>$ 40       |    $>$ 60           |
| Esterna            |             $>$ 60       |    $>$ 80           |

### QPD_2: Errori ortografici (EO)

Indica l'insieme di errori grammaticali presenti nella documentazione interna ed esterna.

### QPD_3: Copertura requisiti obbligatori (CRO)

Indice che misura in ogni istante la percentuale di requisiti obbligatori soddisfatti. La formula adottata è la seguente:

$$CRO= \frac{ ROI }{RO}{*100}$$

dove:

* ROI: indica il numero di requisiti obbligatori coperti dall'implementazione;

* RO: indica il numero complessivo di requisiti obbligatori.

### QPD_4: Copertura requisiti opzionali (CROP)

Indice che misura in ogni istante la percentuale di requisiti opzionali soddisfatti. La formula adottata è la seguente:

$$CROP= \frac{ ROPC }{ROP}{*100}$$

dove:

* ROPC: indica il numero di requisiti opzionali accettati coperti dall'implementazione.;
* ROP: indica il numero complessivo di requisiti opzionali accettati.
  
### QPD_5: Versioni browser supportate (VBS)

Percentuale di versioni di browser supportate dal prodotto. Calcolabile con la seguente formula:

$$VBS= \frac{ Bsup }{Btot}{*100}$$

dove:

* Bsup indica il numero di browser in cui il prodotto può essere eseguito;
* Btot indica il numero complessivo di browser presi in considerazione.

I browser presi in considerazione sono:

* Chrome;
* Firefox;
* Microsoft Edge;
* Safari;
* Opera;
  
### QPD_6: Complessità ciclomatica (CC)

Misura la complessità strutturale del codice. Viene calcolato il numero di blocchi di codice annidati nel flusso del programma.

Complessità ciclomatica = E - N + 2P

* E => Il n. dei bordi del grafico
* N => Il numero di nodi del grafico
* P => Il no dei componenti collegati

### QPD_7: Profondità di ereditarietà (PE)

Indica il numero di classi diverse che ereditano tra loro, fino alla classe base.

### QPD_8: Righe di codice eseguibile (RCE)

Indica il numero approssimativo di righe di codice eseguibili.

### QPD_9 Branch Coverage (BC)

Indica che ciascun branch di codice sia stato eseguito almeno una volta. <!--Per branch si intende uno dei possibili path di codice che seguono una condizione decisionale* metterlo nel glossario(?) -->

|    **Prodotto**   | **Valore accettabile**   | **Valore ottimale** |
| ----------------- |  :-------------------:  | :-----------------: |
| Software          |        $>$ 80%          |    $>$    95%       |

Strumenti utilizzati:

* g:python}

### Tabella metriche - Valori accettabili e ottimali

|    **Codice**     |                  **Nome**                   | **Valore accettabile**  | **Valore ottimale** |
| ----------------- | :-----------------------------------------: | :-------------------:  | :-----------------: |
| QPD_2             |               Errori ortografici (EO)       |       $\leq$ 8%        |           0         |
| QPD_3             |     Copertura requisiti obbligatori (CRO)   |          100%          |         100%        |
| QPD_4             |      Copertura requisiti opzionali (CROP)   |       $\geq$ 20%       |         100%        |
| QPD_5             |        Versioni browser supportate (VBS)    |        $\geq$ 80%      |         100%        |
| QPD_6             |             Complessità ciclomatica (CC)    |        $\leq$ 2        |          1          |
| QPD_7             |           Profondità di ereditarietà (PE)   |        $\leq$ 3        |        $\leq$ 2     |
| QPD_8             |           Righe di codice eseguibile (RCE)  |    $\leq$ 1000 righe   | $\leq$ 500 righe    |
| QPD_9             |               Branch Coverage (BC)          |       $\geq$ 80%       |         95%         |

<!--# Specifica dei test

## Test di accettazione

## Test di sistema

## Test di integrazione

## Test di unit
-->

# Resoconto attività di verifica

## verifica dei processo

## verifica del prodotto

### Indice di Gulpease

```{.plotly_python}
import plotly.graph_objects as go

documenti = ['NDP', 'PDP', 'PDQ', 'ADR']
valori = ['62', '63', '62', '58']

fig = px.Figure(data=go.Bar(x=documenti, y=valori))
fig.show()
```
