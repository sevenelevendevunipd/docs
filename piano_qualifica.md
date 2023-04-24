---
title: "Piano di qualifica"
date: "06/12/2022"
responsabile: "Andrea Auletta"
redattori: ["Enrik Rucaj", "Davide Vitagliano"]
verificatori: ["Nicola Cecchetto", "Antonio Stan", "Mattia Brunello", "Augusto Zanellato"]
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
    data: 12/01/2023
    cambiamenti: Inserite le metriche per la qualità di processo
  v0.0.4:
    autore: Antonio Stan
    data: 16/01/2023
    cambiamenti: Inserite le metriche per la qualità di prodotto
  v0.0.5:
    autore: Antonio Stan
    data: 20/01/2023
    cambiamenti: Inseriti i test di sistema  
  v0.1.0:
    autore: Andrea Auletta
    data: 25/01/2023
    cambiamenti: Verifica generale del documento
  v0.1.1:
    autore: Enrik Rucaj
    data: 07/02/2023
    cambiamenti: Inseriti i grafici inerenti all'attività di verifica dei processi
  v0.1.2:
    autore: Antonio Stan
    data: 07/02/2023
    cambiamenti: Inseriti i grafici inerenti all' attività di verifica del prodotto
  v0.2.0:
    autore: Davide Vitagliano
    data: 09/02/2023
    cambiamenti: Verifica generale del documento
  v1.0.0:
    autore: Nicola Cecchetto
    data: 12/02/2023
    cambiamenti: Approvazione per il rilascio
  v1.0.1:
    autore: Davide Vitagliano
    data: 17/03/2023
    cambiamenti: Aggiunti indicatori quantitativi sui test e sul progresso
  v1.1.0:
    autore: Davide Vitagliano
    data: 20/03/2023
    cambiamenti: Inseriti i test di integrazione
  v1.1.1:
    autore: Enrik Rucaj
    data: 13/04/2023
    cambiamenti: Inseriti i test di unità per il frontend di SmartLogViewer
  v1.1.2:
    autore: Davide Vitagliano
    data: 16/04/2023
    cambiamenti: Inseriti i test di unità per il parser ed il backend di SmartLogViewer
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

### QPS_12: Variazioni di programma (VP)

Percentuale che indica il livello di progresso di un progetto. Esso indica se l'avanzamento è regolare rispetto ai limiti temporali imposti. *In caso di risultato negativo si rischia di allontanarsi dal periodo temporale preventivato*.

$$VP=(1-\frac{Periodo temporale impiegato}{Periodo temporale preventivato})*100$$

### QPS_13: Test soddisfati (TS)

Percentuale dei test soddisfati in un determinato periodo.
$$Test soddisfati=\frac{Numero di test soddisfati}{Numero di test totali}*100$$

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
| QPS_12            |          Variazioni di programma (VP)       |     $\geq -15\%$       |     $\geq 0\%$      |
| QPS_13            |              Test soddisfati (TS)           |      $\geq 80\%$       |      $= 100\%$      |

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

### QPD_6: Profondità di ereditarietà (PE)

Indica il numero di classi diverse che ereditano tra loro, fino alla classe base.

### QPD_7 Branch Coverage (BC)

Indica che ciascun branch di codice sia stato eseguito almeno una volta.

|    **Prodotto**   | **Valore accettabile**   | **Valore ottimale**|
| ----------------- |  :-------------------:  | :-----------------: |
| Software          |        $>$ 80%          |    $>$    95%       |

Strumenti utilizzati:

* {g:python}

### Tabella metriche - Valori accettabili e ottimali

|    **Codice**     |                  **Nome**                   | **Valore accettabile** | **Valore ottimale** |
| ----------------- | :-----------------------------------------: | :-------------------:  | :-----------------: |
| QPD_2             |               Errori ortografici (EO)       |       $\leq 8\%$       |           0         |
| QPD_3             |     Copertura requisiti obbligatori (CRO)   |          $100\%$       |         $100\%$     |
| QPD_4             |      Copertura requisiti opzionali (CROP)   |       $\geq 20\%$      |         $100\%$     |
| QPD_5             |        Versioni browser supportate (VBS)    |        $\geq 80\%$     |         $100\%$     |
| QPD_6             |           Profondità di ereditarietà (PE)   |        $\leq 2$        |          0          |
| QPD_7             |               Branch Coverage (BC)          |       $\geq 80\%$      |      $\geq 95\%$    |

# Specifica dei test

## Test di accettazione

I test di accettazione sono necessari per la verifica dei requisiti richiesti dai fornitori. Essi sono essenziali per la validazione del prodotto.
<!-- TODO: aggiungere qualcosa in più -->

## Test di sistema Smart Log Viewer

|    **Codice**       |                  **Descrizione**                   |  **Stato** |
| -----------------   | :-----------------------------------------: | :-----------------: |
| TS_VRF1     | Verificare che l'utente possa caricare nell'applicazione un singolo file di {g:log} presente localmente|      NI        |
| TS_VRF1.1   | Verificare che venga visualizzato un messaggio di errore se il file caricato non è compatibile   |          NI     |
| TS_VRF2     | Verificare che sia presente una visualizzazione in forma tabellare   |         NI     |
| TS_VRF2.1   | Verificare che la tabella di VRF2 abbia una colonna con intestazione "Data/ora"    |            NI     |
| TS_VRF2.2   | Verificare che la tabella di VRF2 abbia una colonna con intestazione "Codice evento"   |             NI          |
| TS_VRF2.3   | Verificare che la tabella di VRF2 abbia una colonna con intestazione "{g:unitsubunit}"           |         NI    |
| TS_VRF2.4   | Verificare che la tabella di VRF2 abbia una colonna con intestazione "Versione {g:firmware}   |           NI     |
| TS_VRF2.5   | Verificare che la tabella di VRF2 abbia una colonna con intestazione "Descrizione"  |     NI     |
| TS_VRF2.6   | Verificare che la tabella di VRF2 abbia una colonna con intestazione "Stato" (1 per ON, 0 per OFF)   |      NI          |
| TS_VRF2.7   | Verificare che l'applicazione colori correttamente ogni riga in base al {g:codice_evento}           |       NI    |
| TS_VRF3     | Verificare che sia presente una funzione per ordinamento colonne della tabella simile a spreadsheet           |       NI    |
| TS_VRF3.1   | Verificare che sia presente una funzionalità di ordinamento per data/ora|       NI    |
| TS_VRF3.2   | Verificare che sia presente una funzionalità di ordinamento per {g:codice_evento}           |    NI    |
| TS_VRF3.3   | Verificare che sia presente una funzionalità di ordinamento per {g:unitsubunit}           |        NI    |
| TS_VRF3.4   | Verificare che sia presente una funzionalità di ordinamento per {g:firmware}           |     NI    |
| TS_VRF4     | Verificare che la funzione di ricerca di sequenze di eventi funzioni correttamente            |       NI    |
| TS_VRF4.1   | Verificare che alla mancanza di un evento inserito dall'utente per la funzionalità di ricerca di sequenze di eventi, venga visualizzato un messaggio d'errore|    NI    |
| TS_VRF5     | Verificare che sia presente un {g:grafico_timeline} per mostrare le attivazioni degli eventi           |    NI    |
| TS_VRF5.1   | Verificare che l'asse x del grafico rappresenti il tempo           |       NI    |
| TS_VRF5.2   | Verificare che l'asse y del grafico contenga l'insieme degli eventi           |     NI    |
| TS_VRF5.3   | Verificare che i rettangoli “pieni” nel grafico indichino correttamente il periodo di tempo in cui l’evento (indicato sull'asse y) è ATTIVO           |      NI    |
| TS_VRF6     | Verificare che si possa effettuare lo "zoom" in/out sul grafico           |      NI    |
| TS_VRF7     | Verificare che si possa effettuare lo "span" (scroll orizzontale) sul grafico           |       NI    |
| TS_VRF8     | Verificare che siano presenti le funzioni di filtro per modificare la visualizzazione della tabella e del grafico           |     NI    |
| TS_VRF8.1   | Verificare che sia implementato il filtro per intervallo temporale (select)           |       NI    |
| TS_VRF8.1.1 | Verificare che venga visualizzato un messaggio d'errore se l'intervallo temporale selezionato non è valido           |      NI    |
| TS_VRF8.2   | Verificare che sia implementato il filtro per {g:unitsubunit}           |          NI    |
| TS_VRF8.3   | Verificare che sia implementato il filtro per versione {g:firmware} |     NI    |
| TS_VRF8.4   | Verificare che sia implementato il filtro per {g:codice_evento}          |       NI    |
| TS_VRO1     | Verificare che l'utente possa visualizzare altri tipi di grafici           |       NI    |
| TS_VRO2     | Verificare che L'utente possa ricercare sequenze più o meno note con relativa etichettatura dato un limite di tempo |     NI    |
| TS_VRO3     | Verificare che  la colorazione per livello di nidificazione (16 Unit/16 livelli per SubUnit) funzioni correttamente          |       NI    |
| TS_VRO4     | Verificare che l'utente possa esportare i file che visualizza i grafici           |    NI    |
| TS_VRO5     | Verificare che l'utente possa eliminare tutti i filtri applicati           |         NI    |

## Test di integrazione Smart Log Viewer

<!-- inserire qualcosa quando hai capito cosa sono i moduli -->

## Test di unità Smart Log Viewer
<!-- nomenclatura: 
          - TU_VF = test unità viewer per il frontend 
          - TU_VB = test unità viewer per il backend
          - TU_P = test unità del parser
          - NI = non implementato
          - I = implementato -->

|    **Codice**       |                  **Descrizione**            |       **Stato**     |
| -----------------   | :-----------------------------------------: | :-----------------: |
| TU_VF1  | Si verifica che filterableCodes venga inizializzata correttamente con eventi del log unici | I |
| TU_VF2  | Si verifica che selectedCodes venga inizializzata con tutti i filterableCodes selezionati correttamente | I |
| TU_VF3  | Si verifica che tutti i filterableCodes vengano reimpostati correttamente | I |
| TU_VF4  | Si verifica che tutti i filterableCodes vengano selezionati correttamente nel caso nessuno lo fosse | I |
| TU_VF5  | Si verifica che tutti i filterableCodes vengano deselezionati correttamente nel caso tutti fossero selezionati | I |
| TU_VF6  | Si verifica che tutti i filterableCodes vengano deselezionati correttamente nel caso qualcuno fosse selezionato e gli altri deselezionati | I |
| TU_VF7  | Si verifica che selectedCodes funzioni correttamente nel caso degli eventi vengano selezionati manualmente | I |
| TU_VF8  | Si verifica che setSelection filtri correttamente (aggiorna la tabella e i grafici) | I |
| TU_VF9  | Si verifica che la UI per il CodeFilter venga creata e che selezioni tutti i codici presenti correttamente | I |
| TU_VF10 | Si verifica che la UI per il CodeFilter venga creata e che deselezioni tutti i codici presenti correttamente | I |
| TU_VF11 | Si verifica che la UI per il CodeFilter venga creata e che visualizzi tutti i codici presenti correttamente | I |
| TU_VF12 | Si verifica che la UI per il FirmwareFilter venga creata e che selezioni tutti i firmware presenti correttamente | I |
| TU_VF13 | Si verifica che la UI per il FirmwareFilter venga creata e che deselezioni tutti i firmware presenti correttamente | I |
| TU_VF14 | Si verifica che la UI per il SubunitFilter venga creata e che selezioni tutti i subunit presenti correttamente | I |
| TU_VF15 | Si verifica che la UI per il SubunitFilter venga creata e che deselezioni tutti i subunit presenti correttamente | I |
| TU_VF16 | Si verifica che la UI per il DateTimeFilter venga creata e che visualizzi l'estremo temporale inferiore correttamente | I |
| TU_VF17 | Si verifica che la UI per il DateTimeFilter venga creata e che visualizzi l'estremo temporale superiore correttamente | I |
| TU_VF18 | Si verifica che le logEntries da filtrare vengano registrate in lista correttamente | I |
| TU_VF19 | Si verifica che filteredEntries del LogFilteringService restituisca correttamente le logEntries filtrate | I |
| TU_VF20 | Si verifica che setLogFile impostati correttamente il file di log selezionato | I |
| TU_VF21 | Si verifica che removeFilters rimuovi correttamente i filtri precedentemente selezionati | I |
| TU_VF22 | Si verifica che resetAll resetti correttamente tutti i filtri | I |
| TU_VF23 | Si verifica che filtersUi permetta di visualizzare correttamente la UI della tipologia di filtro usata | I |
| TU_VB1  | Si verifica che il file venga caricato correttamente | I |
| TU_VB2  | Si verifica che il file vuoto caricato restituisca correttamente un errore | I |
| TU_VB3  | Si verifica che il file non valido caricato restituisca correttamente un errore | I |

## Test di sistema Smart Log Statistics

|    **Codice**       |                  **Descrizione**                   |  **Stato** |
| -----------------   | :-----------------------------------------: | :-----------------: |
| TS_SRF1     |  Verifica che l'utente possa selezionare i {g:log} da analizzare per range di data/ora (min, max, all)|       NI        |
| TS_SRF1.1   | Verificare che venga visualizzato un messaggio di errore se l'intervallo temporale selezionato non è valido   |        NI     |
| TS_SRF2     |   Verificare che l'utente visualizzi un prospetto con i dati analizzare   |         NI     |
| TS_SRF2.1   |  Verificare che nel prospetto compaia l'intervallo temporale |       NI     |
| TS_SRF2.2   |    Verificare che nel prospetto compaia il numero di {g:log} analizzati |        NI          |
| TS_SRF2.3   |  Verificare che nel prospetto compaia la media numero di eventi tra i {g:log}          |      NI    |
| TS_SRF2.4   |  Verificare che nel prospetto compaia il massimo numero di eventi tra i {g:log}   |          NI     |
| TS_SRF2.5   |   Verificare che nel prospetto compaia la deviazione standard numero di eventi fra i {g:log}  |      NI     |
| TS_SRF2.6   |   Verificare che nel prospetto compaia la lista degli eventi raggruppati per frequenza di occorrenza (0-1)   |    NI          |
| TS_SRF2.6.1 |  Verificare che nella lista venga visualizzato il {g:codice_evento}          |      NI    |
| TS_SRF2.6.2 |   Verificare che nella lista venga visualizzato il numero di volte che l'evento è passato dallo stato 0 allo stato 1           |       NI    |
| TS_SRF2.6.3 |  Verificare che nella lista venga visualizzata la versione {g:firmware} |       NI    |
| TS_SRF3     |   Verificare che sia presente la funzionalità di ordinare le righe della lista in base ai suoi campi           |          NI    |
| TS_SRF3.1   |   Verificare che sia implementato l'ordinamento della lista per {g:codice_evento} |     NI    |
| TS_SRF3.2   |   Verificare che sia presente una funzionalità di ordinamento della lista per numero occorrenze |    NI    |
| TS_SRF3.3   |    Verificare che sia presente una funzionalità di ordinamento della lista per {g:firmware}|   NI    |
| TS_SRF4     |   Verificare che siano presenti delle funzioni di filtraggio|     NI    |
| TS_SRF4.1   |   Verificare che sia presente un filtro per {g:unitsubunit}          |    NI    |
| TS_SRF4.2   |  Verificare che sia presente un filtro per intervallo temporale           |    NI    |
| TS_SRF4.2.1 |  Verificare che venga visualizzato un messaggio d'errore se l'intervallo temporale selezionato non è valido          |       NI    |
| TS_SRF4.3   |   Verificare che sia presente un filtro per versione {g:firmware}          |    NI    |
| TS_SRF5     |   Verificare che venga visualizzato il grafico "tempo/occorrenze"           |         NI    |
| TS_SRF5.1   |   Verificare che l'asse x del grafico rappresenti il tempo|     NI    |
| TS_SRF5.2   |  Verificare che l'asse y del grafico rappresenti le occorrenze|        NI    |
| TS_SRF5.3   |   Verificare che venga visualizzata una linea per ogni {g:evento} presente nel {g:log}    |       NI    |
| TS_SRF6     | Verificare che venga visualizzato correttamente il grafico "firmware/occorrenze"          |       NI    |
| TS_SRF6.1   |   Verificare che l'asse x del grafico visualizzi i {g:firmware}           |         NI    |
| TS_SRF6.2   |  Verificare che l'asse y del grafico rappresenti le occorrenze|        NI    |
| TS_SRF6.3   |   Verificare che venga visualizzata una barra per ogni {g:firmware}          |     NI    |
| TS_SRF7     |  Verificare che la funzionalità di filtro per il grafico "tempo/occorrenze" funzioni correttamente |     NI    |
| TS_SRF7.1   |   Verificare che sia presente un filtro per {g:codice_evento} |     NI    |
| TS_SRF7.2   |   Verificare che sia presente un filtro per {g:unitsubunit}         |       NI    |
| TS_SRF8     |  Verifica che la funzionalità di filtro per il grafico "firmware/occorrenze" funzioni correttamente          |        NI    |
| TS_SRF8.1   |   Verificare che sia presente un filtro per {g:codice_evento}           |       NI    |
| TS_SRF8.2   |  Verificare che sia presente un filtro per {g:firmware}           |        NI    |
| TS_SRO1     | Verificare che  l'utente possa visualizzare un grafico {g:matrice_correlazione} che mostri l'indice di correlazione tra coppie di eventi           |     NI    |
| TS_SRO2     |   Verificare che l'utente possa esportare i file che visualizza i grafici         |     NI    |
| TS_SRO3     |   Verificare che l'utente possa eliminare tutti i filtri applicati           |       NI    |
<!--
## Test di integrazione

## Test di unit
To do entro PB 
-->

## Test di unità Smart Log Parser

|    **Codice**       |                  **Descrizione**            |       **Stato**     |
| -----------------   | :-----------------------------------------: | :-----------------: |
| TU_P1  | Si verifica che parse_log di LogFile analizzi correttamente i dati presenti nel file di log | I |
| TU_P2  | Si verifica che parse_from_scv_row di LogEntry interpreti correttamente le entry (righe) del file di log | I |

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

### Variazioni di programma

```{.plotly_python}
import plotly.graph_objects as go

x = ['AP', 'PTB', 'POC']
y1 = [2.43, 4.87, -11.11]

fig = go.Figure(data=go.Scatter(x=x, y=y1, name='percentuale di variazioni di programma'))
fig.add_scatter(x=[x[0], x[-1]], y=[0, 0], line=dict(dash='dash'), name='valore ottimale')
fig.add_scatter(x=[x[0], x[-1]], y=[-15, -15], line=dict(dash='dash'), name='valore accettabile')
fig.update_layout(yaxis_range=[-20, 102])
fig.update_layout(title='Percentuale di variazioni di programma', xaxis_title='Periodo temporale', yaxis_title='Percentuale di variazioni di programma')
fig.update_layout(legend=dict(x=0.01, y=0.99, traceorder="normal", font=dict(size=12, color="black"), bgcolor="LightSteelBlue", bordercolor="Black", borderwidth=2))

fig.show()
```

### Test soddisfati

```{.plotly_python}
import plotly.graph_objects as go

x = ['AP', 'PTB', 'POC']
y1 = [0, 0, 0]

fig = go.Figure(data=go.Scatter(x=x, y=y1, name='percentuale di test soddisfati'))
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
