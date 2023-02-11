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
    cambiamenti: Inserite le metriche per la qualita' di processo

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

## Metriche utilizzate

* **QPS_1: Preventivo costo attuale (PCA)** = Somma dei costi di ogni periodo calcolato nel preventivo iniziale a partire dall'inizio del progetto fino a un determinato periodo.
* **QPS_2: Costo attuale (CA)** = Il costo effettivo calcolato a partire dall'inizio del progetto fino a un determinato periodo.
* **QPS_3: Stima costo a finire (SCF)** = Il costo che servirà a portare a termine il progetto a partire da un determinato periodo.
                                           $SCF=Budget-PCA$
* **QPS_4: Stima costo totale (SCT)** = Revisione del budget totale che servirà per portare a compimento il progetto.
                                           $SCT=SCF+CA$
* **QPS_5: Rapporto costo (RC)** = Percentuale del rapporto tra il costo attuale (CA) e quello calcolato nel preventivo a partire dall'inizio del progetto fino a un determinato periodo. *In caso di risultato negativo si rischia di andare fuori budget*.
                                           $RC=(1-\frac{CA}{PCA})*100$
* **QPS_6: Preventivo periodo temporale attuale (PPTA)** = Somma delle ore svolte in ogni periodo calcolate nel preventivo iniziale a partire dall'inizio del progetto fino a un determinato periodo.
* **QPS_7: Periodo temporale attuale (PTA)** = Le ore effettive svolte a partire dall'inizio del progetto fino a un determinato periodo.
* **QPS_8: Stima lasso temporale a finire (SLTF)** = Il lasso di tempo che servirà a portare a termine il progetto a partire da un determinato periodo.
                                  $SLTF=Tempo di sviluppo totale-PPTA$
* **QPS_9: Stima tempo di sviluppo totale (STST)** = Revisione del lasso temporale totale che servirà per sviluppare interamente il progetto.
                                           $STST=SLTF+PTA$
* **QPS_10: Rapporto periodo temporale (RPT)** = Percentuale del rapporto tra il periodo temporale attuale (PTA) e quello calcolato nel preventivo a partire dall'inizio del progetto fino a un determinato periodo. *In caso di risultato negativo si rischia di andare fuori budget*.
                                           $RPT=(1-\frac{PTA}{PPTA})*100$
* **QPS_11: Metriche soddisfate (MS)** = Percentuale delle metriche di qualità (sia di processo che di prodotto) soddisfate in un determinato periodo.
                       $Metriche soddisfate=\frac{Numero di metriche soddisfate}{Numero di metriche totali}*100$

### Tabella metriche - Valori accetabili e ottimali

|    **Codice**     |                  **Nome**                   | **Valore accetabile** | **Valore ottimale** |
| ----------------- | :-----------------------------------------: | :-------------------: | :-----------------: |
| QPS_1             |        Preventivo costo attuale (PCA)       |         > 0           |      ≤ Budget       |
| QPS_2             |              Costo attuale (CA)             |         > 0           |       ≤ PCA         |
| QPS_3             |          Stima costo a finire (SCF)         |         ≥ 0           |      ≤ Budget       |
| QPS_4             |           Stima costo totale (SCT)          |    ≤ Budget + 5%      |      = Budget       |
| QPS_5             |              Rapporto costo (RC)            |       ≥ -20%          |        ≥ 0%         |
| QPS_6             | Preventivo periodo temporale attuale (PPTA) |         > 0           |    ≤ Ore Totali     |
| QPS_7             |        Periodo temporale attuale (PTA)      |         > 0           |       ≤ PPTA        |
| QPS_8             |     Stima lasso temporale a finire (SLTF)   |         ≥ 0           |    ≤ Ore Totali     |
| QPS_9             |     Stima tempo di sviluppo totale (STST)   |   ≤ Ore Totali + 5%   |    = Ore Totali     |
| QPS_10            |        Rapporto periodo temporale (RPT)     |       ≥ -20%          |        ≥ 0%         |
| QPS_11            |            Metriche soddisfate (MS)         |        ≥ 80%          |       = 100%        |

# Qualità del prodotto

## Obiettivi

### Documentazione

* I documenti devono essere leggibili e quindi comprensibili agli utenti;
* I documenti non devono avere errori grammaticali;
* Nei documenti i paragrafi devono essere posizionati nei capitoli giusti.

### Indice di Gulpease

## ${89+}\frac{ 300  *(numerodellefrasi) - 10*(numero delle lettere) }{numero delle parole}$

Prodotti coinvolti:

| **Prodotto**      | **Valore Ottimale** | **Valore Accettabile**   |
| ----------------- |:-------------------:|:------------------------:|
| Documenti interni | >40                 |  >60                     |
| Documenti esterni | >40                 |  >60                     |

### Note

Si tiene conto che un indice di 40 `e leggibile a una persona in possesso di
un diploma superiore (come tutti i nostri stakeholders).
Il valore ottimale risulta più alto nei documenti esterni data la neccesità di mantenere un linguaggio formale e consono rispetto alle circostanze lavorative.

### Software

* Il software deve risolvere tutte le casistiche presentate nell'*Analisi dei requisiti*;
* Le applicazioni dovranno essere intuitive nell'utilizzo in modo tale da rendere l'esperienza dell'utente più semplice;
* Il codice dovrà essere verificato per confermare la corretta implementazione di tutti i requisiti individuati.

## Metriche utilizzate

<!--# Specifica dei test

## Test di accettazione

## Test di sistema

## Test di integrazione

## Test di unità
-->