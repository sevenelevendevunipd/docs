---
title: "Analisi dei requisiti"
date: "15/11/2022"
responsabile: "Antonio Stan"
redattori: ["Davide Vitagliano", "Augusto Zanellato"]
verificatori: ["Enrik Rucaj"]
toc: true
versioni:
  0.0.1:
    autore: Davide Vitagliano
    data: 20/3/2023
    cambiamenti: Prima stesura
...

# Introduzione

## Scopo del Documento

Lo scopo di questo documento è quello di descrivere e motivare le scelte architetturali che il gruppo ha preso in 
fase di progettazione e codifica del prodotto. Vengono quindi riportati i diagrammi delle classi e di sequenza per 
descrivere architettura e funzionalità principali del prodotto. Infine è presente una sezione dedicata ai requisiti 
che il gruppo è riuscito a soddisfare, così da avere un’ ampia visione sullo stato di avanzamento del lavoro.

## Scopo del Prodotto

Il progetto prevede di sviluppare due applicazioni:

* {g:smartlogviewer}: Permette la visualizzazione di un singolo file di {g:log} evidenziandone alcune 
  caratteristiche e fornendo dei grafici sull’andamento di alcuni valori;
* {g:smartlogstatistics}: Permette la visualizzazione aggregata di una serie di file di {g:log} mostrando oltre ai 
  dati visibili su {g:smartlogviewer} anche delle statistiche come ad esempio la correlazione di alcuni eventi 
  mediante l’uso di grafici.

## Riferimenti

### Riferimenti normativi

* [Regolamento del progetto didattico](https://www.math.unipd.it/~tullio/IS-1/2022/Dispense/PD02.pdf)

* [Capitolato d'appalto C5 - SmartLog](https://www.math.unipd.it/~tullio/IS-1/2022/Progetto/C5.pdf)

# Architettura del prodotto

## Descrizione generale

Il pattern architetturale scelto dal gruppo per sviluppare le due applicazioni è il Model-View-ViewModel. Il 
seguente pattern è tra i più diffusi nello sviluppo delle web application e permette di scrivere codice facilmente 
mantenibile e riusabile; questo è possibile grazie al forte disaccoppiamento che sussiste tra logica di
presentazione e di business. Inoltre l’MVVM è risultato il più adatto per essere utilizzato con React, libreria 
impiegata per lo sviluppo dell’UI e che renderizza le componenti in base al loro stato interno.

* Model: questa porzione ricopre la logica di business dell’applicazione;
* ViewModel: qui viene effettuato il binding tra View e Model ed è contenuta la loro logica;
*  View: questa porzione gestisce la presentazione tramite una specifica gerarchia di componenti; ciascun componente 
   contiene la logica strettamente legata alla sua visualizzazione e necessaria al mantenimento del proprio stato 
   interno.

Il passaggio dei dati dal Model alle varie componenti grafiche avviene attraverso l’utilizzo di un Context React, al 
quale viene passato un’istanza del ViewModel. L’utilizzo di un Context React ci permette di accedere al valore 
corrente del ViewModel in qualsiasi porzione della View, senza doverlo passare di componente in componente 
attraverso le props (ossia gli argomenti dei componenti che compongono la vista). Nella radice dell’applicazione 
viene infatti creata un’istanza del ViewModel, che viene passata a un Context.Provider, che fa da contenitore per 
tutta la View. All’interno di tale contenitore ogni componente può utilizzare un hook per accedere al Context React 
e utilizzare il valore più recente del ViewModel. È stato scelto di utilizzare un Context React per il passaggio 
dei dati in quanto la nostra applicazione è molto profonda e non risultava conveniente passare i dati per molti 
componenti rischiando, nel peggiore dei casi, di doverli utilizzare nell’ultimo della gerarchia. Per poter fare in 
modo che una componente della View si renderizzi non solo al cambiamento del suo stato interno ma anche al 
cambiamento dei dati nel Model, abbiamo utilizzato la libreria Mobx. Questa ci permette d'implementare l’observer 
pattern, non supportato di default da React. A tale scopo, Mobx permette di segnare delle classi (o attributi di 
esse) come ”observable” e di costruire dei componenti della View come ”observer”. Quest’ultimi vengono 
automaticamente ri-renderizzati al cambiamento di un qualsiasi attributo observable.


## Diagrammi delle classi

## Diagrammi di sequenza

## Diagrammi di attività

## Design pattern
