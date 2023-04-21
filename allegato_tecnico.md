---
title: "Allegato Tecnico"
date: "15/11/2022"
responsabile: "Nicola Checchetto"
redattori: ["Davide Vitagliano", "Augusto Zanellato"]
verificatori: ["Enrik Rucaj"]
toc: true
versioni:
  0.0.1:
    autore: Davide Vitagliano
    data: 20/3/2023
    cambiamenti: Prima stesura
  0.0.2:
    autore: Augusto Zanellato
    data: 2/4/2023
    cambiamenti: Diagramma di attività Viewer
  0.0.3:
    autore: Davide Vitagliano
    data: 13/4/2023
    cambiamenti: Diagrammi di sequenza Viewer
  0.1.0:
    autore: Enrik Rucaj
    data: 20/4/2023
    cambiamenti: Verifica generale del documento, correzione errori
...

# Introduzione

## Scopo del Documento

Lo scopo di questo documento è quello di descrivere e motivare le scelte architetturali che il gruppo ha preso in fase
di progettazione e codifica del prodotto. Vengono quindi riportati i diagrammi delle classi e di sequenza per descrivere
architettura e funzionalità principali del prodotto. Infine è presente una sezione dedicata ai requisiti che il gruppo è
riuscito a soddisfare, così da avere un’ ampia visione sullo stato di avanzamento del lavoro.

## Scopo del Prodotto

Il progetto prevede di sviluppare due applicazioni:

* {g:smartlogviewer}: Permette la visualizzazione di un singolo file di {g:log} evidenziandone alcune caratteristiche e
  fornendo dei grafici sull’andamento di alcuni valori;
* {g:smartlogstatistics}: Permette la visualizzazione aggregata di una serie di file di {g:log} mostrando oltre ai dati
  visibili su {g:smartlogviewer} anche delle statistiche come ad esempio la correlazione di alcuni eventi mediante l’uso
  di grafici.

## Riferimenti

### Riferimenti normativi

* [Regolamento del progetto didattico](https://www.math.unipd.it/~tullio/IS-1/2022/Dispense/PD02.pdf)
* [Capitolato d'appalto C5 - SmartLog](https://www.math.unipd.it/~tullio/IS-1/2022/Progetto/C5.pdf)

# Architettura del prodotto

## Descrizione generale

Il pattern architetturale scelto dal gruppo per sviluppare le due applicazioni è il Model-View-ViewModel. Il seguente
pattern è tra i più diffusi nello sviluppo delle web application e permette di scrivere codice facilmente mantenibile e
riusabile; questo è possibile grazie al forte disaccoppiamento che sussiste tra logica di presentazione e di business.
Inoltre l’MVVM è risultato il più adatto per essere utilizzato con React, libreria impiegata per lo sviluppo dell’UI e
che renderizza le componenti in base al loro stato interno.

* Model: questa porzione ricopre la logica di business dell’applicazione;
* ViewModel: qui viene effettuato il binding tra View e Model ed è contenuta la loro logica;
* View: questa porzione gestisce la presentazione tramite una specifica gerarchia di componenti; ciascun componente
  contiene la logica strettamente legata alla sua visualizzazione e necessaria al mantenimento del proprio stato
  interno.

Il passaggio dei dati dal Model alle varie componenti grafiche avviene attraverso l’utilizzo di un Context React, al
quale viene passato un’istanza del ViewModel. L’utilizzo di un Context React ci permette di accedere al valore corrente
del ViewModel in qualsiasi porzione della View, senza doverlo passare di componente in componente attraverso le props (
ossia gli argomenti dei componenti che compongono la vista). Nella radice dell’applicazione viene infatti creata
un’istanza del ViewModel, che viene passata a un Context.Provider, che fa da contenitore per tutta la View. All’interno
di tale contenitore ogni componente può utilizzare un hook per accedere al Context React e utilizzare il valore più
recente del ViewModel. È stato scelto di utilizzare un Context React per il passaggio dei dati in quanto la nostra
applicazione è molto profonda e non risultava conveniente passare i dati per molti componenti rischiando, nel peggiore
dei casi, di doverli utilizzare nell’ultimo della gerarchia. Per poter fare in modo che una componente della View si
renderizzi non solo al cambiamento del suo stato interno ma anche al cambiamento dei dati nel Model, abbiamo utilizzato
la libreria Mobx. Questa ci permette d'implementare l’observer pattern, non supportato di default da React. A tale
scopo, Mobx permette di segnare delle classi (o attributi di esse) come ”observable” e di costruire dei componenti della
View come ”observer”. Quest’ultimi vengono automaticamente ri-renderizzati al cambiamento di un qualsiasi attributo
observable.

## Diagrammi delle classi

## Diagrammi di sequenza - SmartLogViewer

### Caricamento file di log

```{ .plantuml caption="Diagramma V1"}
@startuml
actor Actor
Actor -> ViewerFrontend: RequestUpload
activate ViewerFrontend
ViewerFrontend ->ViewerBackend: UploadFile
activate ViewerBackend
ViewerBackend -> LogParser: ParseFile
activate LogParser
ViewerBackend <-- LogParser: return ParsedFile
deactivate LogParser
ViewerFrontend <-- ViewerBackend: return LogResponse
deactivate ViewerBackend
Actor <- ViewerFrontend:done
deactivate ViewerFrontend
@enduml
```

### Applicazione filtro alla tabella

```{ .plantuml caption="Diagramma V2"}
@startuml
actor Actor
Actor -> LogViewer: Set Filter
activate LogViewer
LogViewer ->FilterUI: Message
activate FilterUI
FilterUI -> LogFilteringService: Message
activate LogFilteringService
LogViewer <-- LogFilteringService: return
deactivate LogFilteringService
deactivate FilterUI
LogViewer -> LogViewer: Update
activate LogViewer
Actor <- LogViewer: Done
deactivate LogViewer
deactivate LogViewer
@enduml
```

### Visualizzazione del grafico

```{ .plantuml caption="Diagramma V3"}
@startuml
actor Actor
Actor -> LogViewer: ViewChart
activate LogViewer
LogViewer ->LogData: ViewChart
activate LogData

LogData -> Timeline: ViewChart
deactivate LogData
activate Timeline
LogViewer <-- Timeline: return 
deactivate Timeline
Actor <- LogViewer: Done
deactivate LogViewer
@enduml
```

### Visualizzazione della tabella

```{ .plantuml caption="Diagramma V4"}
actor Actor
Actor -> LogViewer: ViewTable
activate LogViewer
LogViewer ->LogData: ViewTable
activate LogData
LogData -> LogTable: ViewTable
deactivate LogData
activate LogTable
LogViewer <-- LogTable: return
deactivate LogTable
Actor <-LogViewer: done
deactivate LogViewer
```

## Diagrammi di attività

### SmartLogViewer

```{ .plantuml caption="Diagramma V5"}
title SmartLogViewer
start
repeat
repeat
while (Scelto un log?)  is (No)
note right
  "Scegliere" un log significa scegliere un file di log da esplora risorse
end note
  :Scegli Log;
endwhile (Sì)
repeat while(Elimina log?) is (Sì)
-> No;
:Carica log;
note right
  "Caricare" un log significa aprirlo nell`applicazione
end note
repeat
  split
    split
      :Filtro per Codice Evento;
    split again
      :Filtro per Firmware;
    split again
      :Filtro per Unit/Subunit;
    end split
  split again
    split
      :Ordina per Timestamp;
    split again
      :Ordina per Unit;
    split again
      :Ordina per Subunit;
    split again
      :Ordina per Firmware;
    split again
      :Ordina per Codice;
    split again
      :Ordina per Descrizione;
    split again
      :Ordina per Value;
    end split
  split again
    split
      :Scroll del grafico;
    split again
      :Zoom in del grafico;
    split again
      :Zoom out del grafico;
    split again
      :Span del grafico;
    end split
  split again
  :Ricerca sequenza eventi;
  end split
repeat while(Altre operazioni sul log?) is (Sì)
-> No;
repeat while(Seleziona nuovo log?) is (Sì)
-> No;
stop
```

## Design pattern
