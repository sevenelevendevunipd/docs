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
  v0.1.0:
    autore: Andrea Auletta
    data: 25/01/2022
    cambiamenti: Verifica generale del documento
  v0.1.1:
    autore: Enrik Rucaj
    data: 07/02/2022
    cambiamenti: Inseriti i grafici inerenti all'attività di verifica dei processi
  v0.1.2:
    autore: Antonio Stan
    data: 07/02/2022
    cambiamenti: Inseriti i grafici inerenti all' attività di verifica del prodotto
  v0.2.0:
    autore: Nicola Cecchetto
    data: 09/02/2022
    cambiamenti: Verifica generale del documento
  v1.0.0:
    autore: Davide Vitagliano
    data: 12/02/2022
    cambiamenti: Approvazione per il rilascio
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

Le metriche presenti devono permettere un analisi auto migliorativa alla fine di ogni periodo *(guardare il documento Piano di Progetto per la suddivisione dei periodi)*, per migliorare al massimo il flusso di sviluppo nel ciclo di vita del progetto.

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

|    **Codice**     |                  **Nome**                   | **Valore accettabile** | **Valore ottimale** |
| ----------------- | :-----------------------------------------: | :-------------------:  | :-----------------: |
| QPS_1             |        Preventivo costo attuale (PCA)       |        $> 0$           |    $\leq Budget$    |
| QPS_2             |              Costo attuale (CA)             |        $> 0$           |     $\leq PCA$      |
| QPS_3             |          Stima costo a finire (SCF)         |       $\geq 0$         |    $\leq Budget$    |
| QPS_4             |           Stima costo totale (SCT)          |  $\leq Budget + 5\%$   |     $= Budget$      |
| QPS_5             |              Rapporto costo (RC)            |     $\geq -20\%$       |     $\geq 0\%$      |
| QPS_6             | Preventivo periodo temporale attuale (PPTA) |         $> 0$          |  $\leq Ore Totali$  |
| QPS_7             |        Periodo temporale attuale (PTA)      |         $> 0$          |     $\leq PPTA$     |
| QPS_8             |     Stima lasso temporale a finire (SLTF)   |       $\geq 0$         |  $\leq Ore Total$   |
| QPS_9             |     Stima tempo di sviluppo totale (STST)   | $\leq Ore Totali + 5\%$|    $= Ore Totali$   |
| QPS_10            |        Rapporto periodo temporale (RPT)     |     $\geq -20\%$       |     $\geq 0\%$      |
| QPS_11            |            Metriche soddisfate (MS)         |      $\geq 80\%$       |      $= 100\%$      |

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

### QPD_8 Branch Coverage (BC)

Indica che ciascun branch di codice sia stato eseguito almeno una volta.

|    **Prodotto**   | **Valore accettabile**   | **Valore ottimale**|
| ----------------- |  :-------------------:  | :-----------------: |
| Software          |        $>$ 80%          |    $>$    95%       |

Strumenti utilizzati:

* g:python}

### Tabella metriche - Valori accettabili e ottimali

|    **Codice**     |                  **Nome**                   | **Valore accettabile** | **Valore ottimale** |
| ----------------- | :-----------------------------------------: | :-------------------:  | :-----------------: |
| QPD_2             |               Errori ortografici (EO)       |       $\leq 8\%$       |           0         |
| QPD_3             |     Copertura requisiti obbligatori (CRO)   |          $100\%$       |         $100\%$     |
| QPD_4             |      Copertura requisiti opzionali (CROP)   |       $\geq 20\%$      |         $100\%$     |
| QPD_5             |        Versioni browser supportate (VBS)    |        $\geq 80\%$     |         $100\%$     |
| QPD_6             |             Complessità ciclomatica (CC)    |        $\leq 2$        |          1          |
| QPD_7             |           Profondità di ereditarietà (PE)   |        $\leq 2$        |          0          |
| QPD_8             |               Branch Coverage (BC)          |       $\geq 80\%$      |      $\geq 95\%$    |

<!--# Specifica dei test

## Test di accettazione

## Test di sistema

## Test di integrazione

## Test di unit
-->

# Resoconto attività di verifica

## verifica dei processo

### Preventivo costo attuale & Costo attuale

```{.plotly_python}
import plotly.graph_objects as go

x = ['AP', 'PTB', 'POC']
y1 = [3245, 4965, 7315]
y2 = [3215, 4830, 7290]

fig = go.Figure(data=go.Scatter(x=x, y=y1, name='preventivo del costo attuale'))
fig.add_scatter(x=x, y=y2, name='costo attuale')
fig.add_scatter(x=[x[0], x[-1]], y=[13505, 13505], line=dict(dash='dash'), name='valore ottimale')
fig.update_layout(yaxis_range=[-2, 14000])
fig.show()
```

### Costo totale & Stima costo totale

```{.plotly_python}
import plotly.graph_objects as go

x = ['AP', 'PTB', 'POC']
y1 = [13505, 13505, 13505]
y2 = [13475, 13370, 13480]

fig = go.Figure(data=go.Scatter(x=x, y=y1, name='costo totale'))
fig.add_scatter(x=x, y=y2, name='stima del costo totale')
fig.add_scatter(x=[x[0], x[-1]], y=[14180, 14180], line=dict(dash='dash'), name='valore accettabile superiore')
fig.add_scatter(x=[x[0], x[-1]], y=[12829, 12829], line=dict(dash='dash'), name='valore accettabile inferiore')
fig.update_layout(yaxis_range=[12500, 14500])
fig.show()
```

### Preventivo del periodo temporale attuale & Periodo temporale attuale

```{.plotly_python}
import plotly.graph_objects as go

x = ['AP', 'PTB', 'POC']
y1 = [151, 231, 356]
y2 = [148, 223, 350]

fig = go.Figure(data=go.Scatter(x=x, y=y1, name='preventivo del periodo temporale attuale'))
fig.add_scatter(x=x, y=y2, name='periodo temporale attuale')
fig.add_scatter(x=[x[0], x[-1]], y=[665, 665], line=dict(dash='dash'), name='valore ottimale')
fig.update_layout(yaxis_range=[0, 700])
fig.show()
```

### Tempo di sviluppo totale & Stima tempo di sviluppo totale

```{.plotly_python}
import plotly.graph_objects as go

x = ['AP', 'PTB', 'POC']
y1 = [665, 665, 665]
y2 = [662, 657, 659]

fig = go.Figure(data=go.Scatter(x=x, y=y1, name='tempo di sviluppo totale'))
fig.add_scatter(x=x, y=y2, name='stima del tempo di sviluppo totale')
fig.add_scatter(x=[x[0], x[-1]], y=[698, 698], line=dict(dash='dash'), name='valore accettabile superiore')
fig.add_scatter(x=[x[0], x[-1]], y=[632, 632], line=dict(dash='dash'), name='valore accettabile inferiore')
fig.update_layout(yaxis_range=[600, 700])
fig.show()
```

### Rapporto del costo & Rapporto del periodo temporale

```{.plotly_python}
import plotly.graph_objects as go

x = ['AP', 'PTB', 'POC']
y1 = [0.9, 2.7, 0.3]
y2 = [1.9, 3.4, 1.6]

fig = go.Figure(data=go.Scatter(x=x, y=y1, name='rapporto del costo'))
fig.add_scatter(x=x, y=y2, name='rapporto del periodo temporale')
fig.add_scatter(x=[x[0], x[-1]], y=[0, 0], line=dict(dash='dash'), name='valore ottimale')
fig.add_scatter(x=[x[0], x[-1]], y=[-20, -20], line=dict(dash='dash'), name='valore accettabile')
fig.update_layout(yaxis_range=[-22, 22])
fig.show()
```

### Metriche soddisfate

```{.plotly_python}
import plotly.graph_objects as go

x = ['AP', 'PTB', 'POC']
y1 = [52.6, 52.6, 68.4]

fig = go.Figure(data=go.Scatter(x=x, y=y1, name='percentuale di branch coverage'))
fig.add_scatter(x=[x[0], x[-1]], y=[100, 100], line=dict(dash='dash'), name='valore ottimale')
fig.add_scatter(x=[x[0], x[-1]], y=[80, 80], line=dict(dash='dash'), name='valore accettabile')
fig.update_layout(yaxis_range=[-2, 102])
fig.show()
```

## verifica del prodotto

### Indice di Gulpease

```{.plotly_python}
import plotly.graph_objects as go

documenti = ['NDP', 'PDP', 'PDQ', 'ADR']
valori = [62, 63, 62, 58]

fig = go.Figure(data=go.Bar(x=documenti, y=valori))
fig.update_layout(yaxis_range=[0, 100])
fig.show()
```

### Copertura Requisiti Obbligatori

```{.plotly_python}
import plotly.graph_objects as go

x = ['AP', 'PTB', 'POC']
y = [0, 0, 37.1]

fig = go.Figure(data=go.Scatter(x=x, y=y, name='copertura requisiti obbligatori'))
fig.add_scatter(x=[x[0], x[-1]], y=[100, 100], line=dict(dash='dash'), name='valore accettabile')
fig.update_layout(yaxis_range=[-2, 102])
fig.show()
```

### Copertura Requisiti Opzionali

```{.plotly_python}
import plotly.graph_objects as go

x = ['AP', 'PTB', 'POC']
y = [0, 0, 0]

fig = go.Figure(data=go.Scatter(x=x, y=y, name='copertura requisiti opzionali'))
fig.add_scatter(x=[x[0], x[-1]], y=[100, 100], line=dict(dash='dash'), name='valore ottimo')
fig.add_scatter(x=[x[0], x[-1]], y=[20, 20], line=dict(dash='dash'), name='valore accettabile')
fig.update_layout(yaxis_range=[-2, 102])
fig.show()
```

### Versioni Browser Supportati

```{.plotly_python}
import plotly.graph_objects as go

x = ['AP', 'PTB', 'POC']
y = [0, 0, 100]

fig = go.Figure(data=go.Scatter(x=x, y=y, name='versioni browser supportati'))
fig.add_scatter(x=[x[0], x[-1]], y=[100, 100], line=dict(dash='dash'), name='valore ottimale')
fig.add_scatter(x=[x[0], x[-1]], y=[80, 80], line=dict(dash='dash'), name='valore accettabile')
fig.update_layout(yaxis_range=[-2, 102])
fig.show()
```

### Complessità ciclomatica

<!--Inserire valore-->

### Profondità di ereditarietà

```{.plotly_python}
import plotly.graph_objects as go

x = ['AP', 'PTB', 'POC']
y1 = [0, 0, 0]

fig = go.Figure(data=go.Scatter(x=x, y=y1, name='livello di profondità di ereditarietà'))
fig.add_scatter(x=[x[0], x[-1]], y=[0, 0], line=dict(dash='dash'), name='valore ottimale')
fig.add_scatter(x=[x[0], x[-1]], y=[2, 2], line=dict(dash='dash'), name='valore accettabile')
fig.update_layout(yaxis_range=[-2, 4])
fig.show()
```

### Branch coverage

```{.plotly_python}
import plotly.graph_objects as go

x = ['AP', 'PTB', 'POC']
y1 = [0, 0, 0]

fig = go.Figure(data=go.Scatter(x=x, y=y1, name='percentuale di branch coverage'))
fig.add_scatter(x=[x[0], x[-1]], y=[95, 95], line=dict(dash='dash'), name='valore ottimale')
fig.add_scatter(x=[x[0], x[-1]], y=[80, 80], line=dict(dash='dash'), name='valore accettabile')
fig.update_layout(yaxis_range=[-2, 102])
fig.show()
```
