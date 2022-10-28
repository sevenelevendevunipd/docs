---
title: "Verbale Esterno del 27/10/2022"
author: [Seven Eleven Dev]
date: "27/10/2022"
hidedate: true
lang: "it"
titlepage: true
pdfa: true
responsabile: "Mattia Brunello"
redattori: ["Nicola Cecchetto", "Enrik Rucaj"]
verificatori: ["Antonio Stan", "Andrea Auletta", "Davide Vitagliano", "Augusto Zanellato"]
abstract: "Vengono riportati gli argomenti discussi con l'azienda Socomec durante l'incontro del 27/10/2022"
docusage: "Esterno"
toc: true
toc-own-page: true
...

# Informazioni sul Documento

* Data: 27/10/2022
* Ora: 14:30
* Durata: 30 minuti
* Luogo: Sede Universitaria per i partecipanti interni, Microsoft Teams per gli esterni
* Partecipanti interni:
  * Brunello Mattia
  * Cecchetto Nicola
  * Rucaj Enrik
  * Vitagliano Davide
  * Zanellato Augusto
* Partecipanti esterni:
  * Bezzon Carlo (Socomec)
  * Dalla Mariga Enrico (Socomec)
  * Girardin Lorenzo (Socomec)
  * Pavan Federico (Socomec)

# Ordine del Giorno

Sono stati definiti i seguenti argomenti da trattare con l'azienda proponente

* Necessità di memorizzare i log all'interno del progetto
* Applicazione SmartLogViewer: solo client?
* Consigli da parte dell'azienda

# Riassunto dei contenuti

## Necessità di memorizzare i log all'interno del progetto

A seconda dell'applicazione software:

* **SmartLogViewer**: Il log da visualizzare viene caricato _"sul momento"_, non c'è la necessità di salvarlo per archiviazione;
* **SmartLogStatistics**: I log da visualizzare in modo aggregato saranno già presenti in una cartella locale sul server, non è quindi necessario prevedere meccanisimi di upload e relativo salvataggio.

## Applicazione SmartLogViewer: solo client?

L'azienda non ha fatto preferenze circa l'architettura delle applicazioni. Ovviamente il team dovrà capire (in fase di analisi) il miglior modello per quest'applicazione.

## Consigli da parte dell'azienda

Oltre ad aver risposto alle domande del team, l'azienda ha dato altri consigli e idee per lo sviluppo del progetto.

### Volume dei dati da trattare

Un dettaglio molto importante da avere bene in mente durante la fase dell'analisi è che il volume dei dati da trattare è molto alto, sul milione di file all'anno. Per lo sviluppo delle applicazioni ne verranno forniti solo una cinquantina.

### Correlazione tra eventi e guasti

Un guasto potrebbe essere stato causato da un evento avvenuto molto prima, è bene tenerlo a mente quando si svilupperà la matrice di correlazione di eventi per l'applicazione SmartLogStatistics.

### Tipologia dei grafici

Per rappresentare i dati ottenuti dai log, serviranno dei grafici. I più utili sono sicuramente quelli a linea, ma ovviamente non è una scelta vincolante (trovare dei grafici utili sarà un obiettivo dell'analisi).

### Formattazione dei log

I log sono file csv, e in quanto tali la loro formattazione (escluse le prime righe di header) non cambia.
