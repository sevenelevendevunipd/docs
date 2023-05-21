---
title: "Allegato Tecnico"
date: "21/05/2023"
responsabile: "Augusto Zanellato"
redattori: ["Davide Vitagliano", "Nicola Cecchetto"]
verificatori: ["Enrik Rucaj"]
docusage: "Esterno"
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
  0.1.1:
    autore: Davide Vitagliano
    data: 24/4/2023
    cambiamenti: Diagramma delle Classi di Viewer
  0.2.0:
    autore: Enrik Rucaj
    data: 26/4/2023
    cambiamenti: Diagrammi delle classi, di attività e sequenza di Statistics. Verifica generale del documento
  0.2.1:
    autore: Davide Vitagliano
    data: 5/5/2023
    cambiamenti: Aggiunta tabella requisiti soddisfatti
  0.3.0:
    autore: Enrik Rucaj
    data: 6/5/2023
    cambiamenti: Verifica generale del documento
  1.0.0:
    autore: Augusto Zanellato
    data: 21/05/2023
    cambiamenti: Verifica finale e approvazione per il rilascio
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

Il pattern architetturale scelto dal gruppo per sviluppare il frontend delle due applicazioni è il Model-View-ViewModel.
MVVM è tra i più diffusi pattern nello sviluppo delle web application e permette di scrivere codice facilmente mantenibile e
riusabile; questo è possibile grazie al forte disaccoppiamento che sussiste tra logica di presentazione e di business.
Inoltre MVVM è risultato il pattern più adatto per essere utilizzato con React, libreria impiegata per lo sviluppo dell’UI e
che renderizza le componenti in base al loro stato interno.

* Model: questa porzione ricopre la logica di business dell’applicazione;
* ViewModel: qui viene effettuato il binding tra View e Model ed è contenuta la loro logica;
* View: questa porzione gestisce la presentazione tramite una specifica gerarchia di componenti; ciascun componente
  contiene la logica strettamente legata alla sua visualizzazione e necessaria al mantenimento del proprio stato
  interno.

Il passaggio dei dati dal Model alle varie componenti grafiche avviene attraverso l’utilizzo di un `Context` di React, al
quale viene passato un’istanza del Model. L’utilizzo di un `Context` ci permette di accedere al valore corrente
del Model in qualsiasi porzione dell'albero dei componenti, senza doverlo passare di componente in componente attraverso
le properties (ossia gli argomenti dei componenti che compongono la vista).
Nella radice dell’applicazione viene infatti creata un’istanza del Model, che viene passata a un `Context.Provider`, che
fa da contenitore per tutta l'applicazione. All’interno di tale contenitore ogni componente può utilizzare un hook per
accedere al `Context` e utilizzare il valore più recente del Model. È stato scelto di utilizzare un `Context`
per il passaggio dei dati in quanto la nostra applicazione è molto profonda e non risultava conveniente passare i dati
per molti componenti esplicitamente, rischiando, nel peggiore dei casi, di doverli utilizzare nell’ultimo della gerarchia.

Per poter fare in modo che una componente della View si renderizzi non solo al cambiamento del suo stato interno ma anche
al cambiamento dei dati nel Model, abbiamo utilizzato la libreria di _State Management_ [Mobx](https://mobx.js.org), la
quale ci permette d'implementare facilmente l’observer pattern al fine di ridurre la gestione manuale degli `useState`.
A tale scopo, Mobx permette di segnare delle classi (o attributi di esse) come _observable_ e di costruire dei componenti
della View come _observer_. Quest’ultimi vengono automaticamente ri-renderizzati al cambiamento di un qualsiasi attributo
observable. Permette inoltre di definire delle _reaction_, le quali permettono, ad esempio, di aggiornare dei dati dal
server ogni qual volta un campo di una classe venga modificato.

Per semplificare la comunicazione tra frontend e backend abbiamo scelto di usare la tecnologia [OpenAPI](https://www.openapis.org/)
sia per fornire una documentazione delle _API_ utile allo sviluppo che per autogenerare la libreria TypeScript usata dal
frontend per comunicare col backend.

Per la parte di analisi dei dati di {g:smartlogstatistics} è stato scelto dal gruppo l'uso di parte della piattaforma
[Elastic](https://elastic.co).
Nello specifico abbiamo scelto di usare solo ElasticSearch in quanto l'applicazione non richiede _ingest real-time_ dei log
(LogStash) e le visualizzazioni offerte da Kibana non sono sufficienti a soddisfare le necessità dell'applicazione.
È stato scelto l'uso di ElasticSearch come database in quanto è estremamente portato a lavorare con file di log ed effettuare
operazioni sugli stessi oltre ad essere molto scalabile orizzontalmente.

Nello sviluppo dei backend, data la loro semplicità, non sono stati scelti pattern architetturali di rilevo, ma sono comunque stati seguiti i principi _SOLID_.

## Diagrammi di SmartLogViewer

### Diagramma delle classi - SLViewer Frontend

```{ .plantuml caption="Class Diagram SLViewer frontend"}
@startuml
left to right direction
skinparam linetype ortho
class CodeFilteringStrategy {
  constructor(logFile: LogFile):
  filterableCodes: string[]
  selectedCodes: string[]
  filter(entries: LogEntry[]): LogEntry[]
  reset(): void
  selectAll(): void
  selectNone(): void
  setSelection(selection: string[]): void
  filterSet: Set<string>
}
class ConcreteLogFilteringService {
  constructor():
  registeredFilters: LogFilteringStrategy[]
  filterUIs: JSX.Element[]
  logFile: LogFile | null
  register(filter: LogFilteringStrategy, ui: JSX.Element): void
  setLogFile(logFile: LogFile): void
  removeFilters(): void
  resetAll(): void
  filteredEntries: LogEntry[]
  filtersUi: JSX.Element[]
}
class DateTimeFilteringStrategy {
  constructor(logFile: LogFile):
  minTimestamp: Date
  maxTimestamp: Date
  minSelectedTimestamp: Date
  maxSelectedTimestamp: Date
  filter(entries: LogEntry[]): LogEntry[]
  setSelected(min: Date, max: Date): void
  reset(): void
}
class EventSequenceFilteringStrategy {
  constructor(logFile: LogFile):
  minEvent, maxEvent: string[]
  filterableCodes: string[]
  insertingFirst, insertingLast: SearchEntry
  firstValues, lastValues, selectedFirst, selectedLast: SearchEntry[]
  time: number
  filterSubSequence(...): LogEntry[]
  filter(entries: LogEntry[]): LogEntry[]
  reset(): void
  setTime(t?: number | null): void
  getInserting(isFirst: boolean): SearchEntry
  addItem(isFirst: boolean): void
  editItem(e: DataTableRowEditCompleteEvent, isFirst: boolean): void
  reorderItems(e: Event<SearchEntry[]>, isFirst: boolean): void
  deleteItem(index: number, isFirst: boolean): void
}
class FirmwareFilteringStrategy {
  constructor(logFile: LogFile):
  filterableFirmwares: string[]
  selectedFirmwares: string[]
  filter(entries: LogEntry[]): LogEntry[]
  reset(): void
  selectAll(): void
  selectNone(): void
  setSelection(selection: string[]): void
  filterSet: Set<string>
}
Interface ILogFilteringService {
  register(filter: LogFilteringStrategy, ui: JSX.Element): void
  resetAll(): void
  setLogFile(logFile: LogFile): void
  removeFilters(): void
  filteredEntries: LogEntry[]
  filtersUi: JSX.Element[]
}
Interface LogFilteringStrategy {
  filter(entries: LogEntry[]): LogEntry[]
  reset(): void
}
class SubunitFilteringStrategy {
  constructor(logFile: LogFile):
  subunitTree: TreeNode[]
  selectedSubunits: TreeCheckboxSelectionKeys
  filter(entries: LogEntry[]): LogEntry[]
  reset(): void
  selectAll(): void
  selectNone(): void
  filterSet: Set<number>
}
CodeFilteringStrategy           -[#008200,dashed]-^  LogFilteringStrategy
ConcreteLogFilteringService     -[#008200,dashed]-^  ILogFilteringService
DateTimeFilteringStrategy       -[#008200,dashed]-^  LogFilteringStrategy
EventSequenceFilteringStrategy  -[#008200,dashed]-^  LogFilteringStrategy
FirmwareFilteringStrategy       -[#008200,dashed]-^  LogFilteringStrategy
SubunitFilteringStrategy        -[#008200,dashed]-^  LogFilteringStrategy
@enduml
```

### Diagramma delle classi - SLViewer Backend

```{ .plantuml caption="Class Diagram SLViewer backend"}
@startuml
set namespaceSeparator none
left to right direction
skinparam linetype ortho

class "pydantic.BaseModel" as BaseModel

class LogFile {
  filename: str
  pc_datetime: datetime
  ups_datetime: datetime
  units_subunits: dict[int, Unit]
  log_entries: list[LogEntry]
  {static} LogFile parse_log(filename: str, log_contents: str)
}

class LogParserError {
  errors : list[str]
}

class LogParserResponse {
  log: LogFile
}
class LogUpload {
  log: File
}


LogFile -u-|> BaseModel
LogUpload --|> BaseModel
LogParserError --|> BaseModel
LogParserResponse --|> BaseModel
LogParserResponse o-- LogFile
@enduml
```

### Diagrammi di sequenza - SLViewer

#### Caricamento file di log

```{ .plantuml caption="Diagramma V1"}
@startuml
actor Actor
box "FrontEnd"
participant App
participant LogUploader
participant LogParsingService
end box
box "BackEnd"
participant analyze_log
participant LogFile
end box

Actor -> App: Upload file
activate App

App -> LogUploader: dispatch event
activate LogUploader

LogUploader -> LogParsingService: async parse()
activate LogParsingService

LogParsingService -> analyze_log: api call
activate analyze_log

analyze_log -> LogFile: parse_log
activate LogFile

analyze_log <-- LogFile: return LogFile
deactivate  LogFile

LogParsingService <-- analyze_log: LogParserResponse
deactivate analyze_log

LogUploader <-- LogParsingService: return LogFile
deactivate LogParsingService

App <-- LogUploader: return LogFile
deactivate LogUploader

App -> App:Update UI
activate App

Actor <-- App:Done
deactivate App
deactivate App
@enduml
```

#### Applicazione filtro alla tabella

```{ .plantuml caption="Diagramma V2"}
@startuml
actor Actor
box "FrontEnd"
participant LogViewer
collections  FilterView
collections FilterViewModel
collections LogFilteringStrategy
participant LogFilteringService
end box
Actor -> LogViewer: Update Filter
activate LogViewer
LogViewer -> FilterView: Update Filter
activate FilterView
FilterView -> FilterViewModel: Dispatch Event
activate FilterViewModel
FilterViewModel -> LogFilteringStrategy: Update Filter Model
activate LogFilteringStrategy
LogFilteringStrategy --> LogFilteringService: Filter Model Update reaction
activate LogFilteringService
FilterViewModel <-- LogFilteringStrategy: Filter Model Update reaction
deactivate LogFilteringStrategy
FilterView <-- FilterViewModel: Filter View Model Update
deactivate FilterViewModel
LogViewer <-- FilterView: Filter UI Update
deactivate FilterView
Actor <- LogViewer: Filter Update Feedback
deactivate LogViewer
LogViewer <-- LogFilteringService: UI update
deactivate LogFilteringService
activate LogViewer
Actor <- LogViewer: Filtered data updated
deactivate LogViewer
@enduml
```

#### Visualizzazione del grafico

```{ .plantuml caption="Diagramma V3"}
@startuml
actor Actor
box "FrontEnd"
participant LogViewer
participant LogData
participant Timeline
end box
Actor -> LogViewer: ViewChart
activate LogViewer
LogViewer ->LogData: render component
activate LogData

LogData -> Timeline: render component
activate Timeline
LogData <-- Timeline: return
deactivate Timeline
LogViewer <-- LogData: return
deactivate LogData
Actor <-- LogViewer: Done
deactivate LogViewer
@enduml
```

#### Visualizzazione della tabella

```{ .plantuml caption="Diagramma V4"}
@startuml
actor Actor
Actor -> LogViewer: ViewTable
activate LogViewer
LogViewer ->LogData: render component
activate LogData
LogData -> LogTable: render component
activate LogTable
LogData <-- LogTable: return
deactivate LogTable
LogViewer <-- LogData: return
deactivate LogData
Actor <-LogViewer: done
deactivate LogViewer
@enduml
```

## Diagrammi di SmartLogStatistics

### Diagramma delle classi - SLStatistics Frontend

```{ .plantuml caption="Class Diagram SLStatistics frontend"}
@startuml
left to right direction
skinparam linetype ortho
class ChartFilterStore {
constructor():
state: ChartFilterStoreState
error: string | undefined
selectableCodes: string[]
selectableSubunits: number[]
selectableFirmwares: string[]
update(start: Date, end: Date): void
}
class FilterStateStore {
constructor():
selected_min_timestamp: Date
selected_max_timestamp: Date
setSelectedRange(min: Date, max: Date): void
setMinTimestamp(min: Date): void
setMaxTimestamp(max: Date): void
}
class FirmwareChartDataStore {
constructor():
state: FirmwareChartStoreState
error: string | undefined
selectedCodes: string[]
selectedFirmwares: string[]
data: Record<string, string>[]
update(start: Date, end: Date, allFirmwares: string[]): void
}
Interface IChartFilterStore {
update(start: Date, end: Date): void
state: ChartFilterStoreState
error: string | undefined
selectableCodes: string[]
selectableSubunits: number[]
selectableFirmwares: string[]
}
Interface IFilterStateStore {
setSelectedRange(min: Date, max: Date): void
setMinTimestamp(min: Date): void
setMaxTimestamp(min: Date): void
selected_min_timestamp: Date
selected_max_timestamp: Date
}
Interface IFirmwareChartDataStore {
update(start: Date, end: Date, allFirmwares: string[]): void
state: FirmwareChartStoreState
error: string | undefined
selectedCodes: string[]
selectedFirmwares: string[]
data: Record<string, string>[]
}
Interface ILogFrequencyStore {
setSelectedRange(min: Date, max: Date): void
setMinTimestamp(min: Date): void
setMaxTimestamp(min: Date): void
setSubunitSelection(selection: TreeCheckboxSelectionKeys): void
updateFrequencies(): void
state: LogFrequencyStoreState
error: string | undefined
entryFrequencies: LogFrequency_baae32a_LogFrequencyEntry[]
selectedMinTimestamp: Date
selectedMaxTimestamp: Date
selectedSubunits: TreeCheckboxSelectionKeys
hasError: boolean
firmwares: string[]
firmwareFilter: SelectItemOptionsType
selectedSubunitIds: number[]
}
Interface ILogListStore {
updateLogList(): void
uploadLogFile(log: File): void
deleteLogFile(name: string): void
state: LogListStoreState
logs: StoredLogFile[]
minTimestamp: Date
maxTimestamp: Date
error: string | undefined
hasLogs: boolean
hasError: boolean
errorCanRetry: boolean
}
Interface ISelectedLogsInfoStore {
updateOverview(start: Date, end: Date): void
state: State
error: string | undefined
info: LogOverview_91de17a | undefined
hasError: boolean
}
Interface ITimeChartDataStore {
update(start: Date, end: Date, allSubunits: number[]): void
state: TimeChartStoreState
error: string | undefined
selectedCodes: string[]
selectedSubUnits: TreeCheckboxSelectionKeys
data: Record<string, string>[]
selectedSubUnitsList: number[]
}
class LogFrequencyStore {
constructor():
state: LogFrequencyStoreState
error: string | undefined
entryFrequencies: LogFrequency_baae32a_LogFrequencyEntry[]
selectedMinTimestamp: Date
selectedMaxTimestamp: Date
selectedSubunits: TreeCheckboxSelectionKeys
setSelectedRange(min: Date, max: Date): void
setMinTimestamp(min: Date): void
setMaxTimestamp(max: Date): void
setSubunitSelection(selection: TreeCheckboxSelectionKeys): void
updateFrequencies(): void
hasError: boolean
firmwares: string[]
firmwareFilter: {code: string, name: string}[]
selectedSubunitIds: number[]
}
class LogListStore {
constructor():
state: LogListStoreState
logs: StoredLogFile[]
minTimestamp: Date
maxTimestamp: Date
error: string | undefined
throwError(err: string, retryable?: boolean): void
updateLogList(): void
uploadLogFile(log: File): void
deleteLogFile(name: string): void
hasLogs: boolean
hasError: boolean
errorCanRetry: boolean
}
class RootStore {
constructor(...stores):
logListStore: ILogListStore
filterStateStore: IFilterStateStore
selectedLogsInfoStore: ISelectedLogsInfoStore
logFrequencyStore: ILogFrequencyStore
chartFilterStore: IChartFilterStore
timeChartDataStore: ITimeChartDataStore
firmwareChartDataStore: IFirmwareChartDataStore
}
class SelectedLogsInfoStore {
constructor():
state: State
error: string | undefined
info: LogOverview_91de17a | undefined
updateOverview(start: Date, end: Date): void
hasError: boolean
}
class TimeChartDataStore {
constructor():
state: TimeChartStoreState
error: string | undefined
selectedCodes: string[]
selectedSubUnits: TreeCheckboxSelectionKeys
data: Record<string, string>[]
update(start: Date, end: Date, allSubunits: number[]): void
selectedSubUnitsList: number[]
}

ChartFilterStore         -[#008200,dashed]-^  IChartFilterStore
FilterStateStore         -[#008200,dashed]-^  IFilterStateStore
FirmwareChartDataStore   -[#008200,dashed]-^  IFirmwareChartDataStore
LogFrequencyStore        -[#008200,dashed]-^  ILogFrequencyStore
LogListStore             -[#008200,dashed]-^  ILogListStore
SelectedLogsInfoStore    -[#008200,dashed]-^  ISelectedLogsInfoStore
TimeChartDataStore       -[#008200,dashed]-^  ITimeChartDataStore
RootStore *-- IChartFilterStore
RootStore *-- IFilterStateStore
RootStore *-- IFirmwareChartDataStore
RootStore *-- ILogFrequencyStore
RootStore *-- ILogListStore
RootStore *-- ISelectedLogsInfoStore
RootStore *-- ITimeChartDataStore
@enduml
```

### Diagramma delle classi - SLStatistics Backend

```{ .plantuml caption="Class Diagram SLStatistics backend"}
@startuml
left to right direction
set namespaceSeparator none
hide <<type>> circle
hide <<type>> methods

class "pydantic.BaseModel" as BaseModel

class LogFile {
  filename: str
  pc_datetime: datetime
  ups_datetime: datetime
  units_subunits: dict[int, Unit]
  log_entries: list[LogEntry]
  {static} LogFile parse_log(filename: str, log_contents: str)
}
LogFile --|> BaseModel

class ChartFilterData {
  codes : list[str]
  firmwares : list[str]
  subunits : list[int]
}
ChartFilterData --|> BaseModel

class CountResponse {
  count : int
}
CountResponse --|> BaseModel

class ErrorResponse {
  errors : list[str]
}
ErrorResponse --|> BaseModel

class FirmwareChartParams {
  selected_codes : list[str]
  selected_firmwares : list[str]
}
FirmwareChartParams --|> LogOverviewParams


class HistogramEntry <<type>> {
  dict[str, str]
}

class Histogram {
  bars : list[HistogramEntry]
}
HistogramEntry --* Histogram
Histogram --|> BaseModel

class LogDatabase {
  elastic: elastic.AsyncElasticSearch
  index_name : str
  uploaded_file_list() -> list[str]
  chart_filters(start: datetime, end: datetime) -> ChartFilterData
  close() -> None
  delete_log(log: str) -> int
  ensure_index_exists() -> None
  firmware_chart_data(start: datetime, end: datetime, firmwares: list[str], codes: list[str]) -> list[HistogramEntry]
  log_entries_frequency(start: datetime, end: datetime, subunits: list[int]) -> list[LogFrequencyEntry]
  log_overview(start: datetime, end: datetime) -> LogOverview
  time_chart_data(start: datetime, end: datetime, subunits: list[int], codes: list[str]) -> list[HistogramEntry]
  upload(log_file: LogFile) -> int
}

class LogDelete {
  log : str
}
LogDelete --|> BaseModel

class LogFrequency {
  entries : list[LogFrequencyEntry]
}
LogFrequency --|> BaseModel

class LogFrequencyEntry {
  count : int
  event_code : str
  firmware : str
}
LogFrequencyEntry --* LogFrequency
LogFrequencyEntry --|> BaseModel

class LogFrequencyParams {
  selected_subunits : list[int]
}
LogFrequencyParams --|> LogOverviewParams

class MaxCountEntry {
  entry_count : int
  filename : str
}
MaxCountEntry --|> BaseModel

class LogOverview {
  avg_entries : int
  entries_std_dev : int
  max_count_entry: MaxCountEntry
  total_entries : int
  empty() -> LogOverview
}
MaxCountEntry --* LogOverview
LogOverview --|> BaseModel

class LogOverviewParams {
  end : datetime
  start : datetime
}
LogOverviewParams --|> BaseModel

class LogUpload {
  log: str
}
LogUpload --|> BaseModel

class StoredLogFile {
  entry_count : int
  file_name : str
  first_entry_timestamp : datetime
  last_entry_timestamp : datetime
}
StoredLogFile --|> BaseModel

class StoredLogList {
  log_files : list[StoredLogFile]
  max_timestamp : datetime
  min_timestamp : datetime
}
StoredLogFile --* StoredLogList
StoredLogList --|> BaseModel

class TimeChartParams {
  selected_codes : list[str]
}
TimeChartParams --|> LogFrequencyParams

@enduml
```

### Diagrammi di Sequenza - SLStatistics

#### Upload di un log

```{ .plantuml caption="Diagramma S1"}
@startuml
actor User

box Frontend
participant LogListView
participant LogListViewModel
participant LogListStore
end box

box Backend
participant upload_log
participant LogDatabase
end box

participant ElasticSearch

User -> LogListView: upload log
activate LogListView
LogListView -> LogListViewModel: logUploadHandler
activate LogListViewModel
LogListViewModel -> LogListStore: uploadLogFile
activate LogListStore
LogListStore -> upload_log: api call
activate upload_log
upload_log -> LogDatabase: upload
activate LogDatabase
LogDatabase -> ElasticSearch: check if already present

alt LogUploadedSuccessfully
  
  activate ElasticSearch
  LogDatabase <-- ElasticSearch: not present
  deactivate ElasticSearch
  upload_log <-- LogDatabase: return
  deactivate LogDatabase
  LogListStore <-- upload_log: 200 OK
  deactivate upload_log
  LogListViewModel <-- LogListStore: return
  deactivate LogListStore
  LogListView <-- LogListViewModel: return
  deactivate LogListViewModel
  User <-- LogListView: Done
else Log Already Uploaded
  activate ElasticSearch
  activate LogDatabase
  activate upload_log
  activate LogListStore
  activate LogListViewModel
  
  LogDatabase <-- ElasticSearch: already present
  deactivate ElasticSearch
  upload_log <-- LogDatabase: LogDatabaseError
  deactivate LogDatabase
  LogListStore <-- upload_log: 400 Bad Request
  deactivate upload_log
  LogListViewModel <-- LogListStore: return
  deactivate LogListStore
  LogListView <-- LogListViewModel: return
  deactivate LogListViewModel
  User <-- LogListView: Show error
  deactivate LogListView
end
@enduml
```

#### Visualizzazione Prospetto

```{ .plantuml caption="Diagramma S2"}
@startuml
actor User

box Frontend
participant LogListView
participant LogListViewModel
participant SelectedLogsInfoStore
end box

box Backend
participant selected_logs_overview
participant LogDatabase
end box

participant ElasticSearch

User -> LogListView: Show log overview
activate LogListView
LogListView -> LogListViewModel: updateOverview
deactivate LogListView
activate LogListViewModel
LogListViewModel -> SelectedLogsInfoStore: updateOverview
deactivate LogListViewModel
activate SelectedLogsInfoStore
SelectedLogsInfoStore -> selected_logs_overview: api call
activate selected_logs_overview
selected_logs_overview -> LogDatabase: log_overview
activate LogDatabase
LogDatabase -> ElasticSearch: Query data
activate ElasticSearch
LogDatabase <-- ElasticSearch: Return data
deactivate ElasticSearch
alt File di Log Caricati
selected_logs_overview <-- LogDatabase: entry count
selected_logs_overview <-- LogDatabase: average entry count
selected_logs_overview <-- LogDatabase: max entry count
selected_logs_overview <-- LogDatabase: entry count stdDev
else DB vuoto
selected_logs_overview <-- LogDatabase: Return EmptyData
end
deactivate LogDatabase
SelectedLogsInfoStore <-- selected_logs_overview: 200 OK
deactivate selected_logs_overview
LogListViewModel <-- SelectedLogsInfoStore: reaction
deactivate SelectedLogsInfoStore
activate LogListViewModel
LogListView <-- LogListViewModel: reaction
deactivate LogListViewModel
activate LogListView
User <-- LogListView: log overview updated
deactivate LogListView
@enduml
```

#### Filtri e Ordinamento Lista Occorrenza Eventi

```{ .plantuml caption="Diagramma S3"}
@startuml
actor User

box Frontend
participant LogFrequencyView
participant LogFrequencyViewModel
participant LogFrequencyStore
end box

box Backend
participant log_frequency
participant LogDatabase
end box

participant ElasticSearch

User -> LogFrequencyView:Filter
alt 3.1 Add Filter
  alt Needs DB query
    alt 3.1.1 Filtra per Unit/Subunit
      LogFrequencyView -> LogFrequencyViewModel: onSubunitSelectionChange
      LogFrequencyViewModel -> LogFrequencyStore: setSubunitSelection
    else 3.1.2 Filtra per Intervallo Temporale
      LogFrequencyView -> LogFrequencyViewModel: onMinSelectionChange\nonMaxSelectionChange
      LogFrequencyViewModel -> LogFrequencyStore: setMinTimestamp\nsetMinTimestamp
    end
    LogFrequencyStore <-- LogFrequencyStore: //reaction//\nupdateFrequencies 
    LogFrequencyStore -> log_frequency: api call
    activate log_frequency
    log_frequency -> LogDatabase: log_entries_frequency
    activate LogDatabase
    LogDatabase -> ElasticSearch: query
    activate ElasticSearch
    LogDatabase <-- ElasticSearch: query response
    deactivate ElasticSearch
    log_frequency <-- LogDatabase: return
    deactivate LogDatabase
    LogFrequencyStore <-- log_frequency: 200 OK
    deactivate log_frequency
    LogFrequencyViewModel <-- LogFrequencyStore: //reaction//
    LogFrequencyView <-- LogFrequencyViewModel: //reaction//
  else Can be performed locally
    group 3.1.3 Per versione Firmware
      LogFrequencyView-->LogFrequencyView:Done
      note left: handled by PrimeReact DataTable
    end
  end
else 3.2 Sort by Column
  LogFrequencyView-->LogFrequencyView:Done
  note left: handled by PrimeReact DataTable
end
User <-- LogFrequencyView: UI update
@enduml
```

#### Visualizzazione del grafico Firmware/Occorrenze

```{ .plantuml caption="Diagramma S5"}
@startuml
actor User
box "FrontEnd"
participant FirmwareChartView
participant FirmwareChartViewModel
participant FirmwareChartDataStore
end box
box "BackEnd"
participant firmware_chart
participant LogDatabase
end box
participant ElasticSearch

User --> FirmwareChartView: update filters

alt
else Update selected codes
FirmwareChartView -> FirmwareChartViewModel: onCodeSelectionChange
FirmwareChartViewModel --> FirmwareChartDataStore: setSelectedCodes
else Update selected firmwares
FirmwareChartView -> FirmwareChartViewModel: onFirmwareSelectionChange
FirmwareChartViewModel -> FirmwareChartDataStore: setSelectedFirmwares
end

FirmwareChartDataStore <-- FirmwareChartDataStore: //reaction//\nupdate
activate FirmwareChartDataStore
FirmwareChartDataStore -> firmware_chart: api call
activate firmware_chart
firmware_chart -> LogDatabase: firmware_chart_data
activate LogDatabase
LogDatabase -> ElasticSearch: query
activate ElasticSearch
LogDatabase <-- ElasticSearch: query response
deactivate ElasticSearch
firmware_chart <-- LogDatabase: return
deactivate LogDatabase
FirmwareChartDataStore <-- firmware_chart: 200 OK
deactivate firmware_chart
FirmwareChartViewModel <-- FirmwareChartDataStore: //reaction//
deactivate FirmwareChartDataStore
FirmwareChartView <-- FirmwareChartViewModel: //reaction//

User <-- FirmwareChartView: UI Update

@enduml
```

#### Visualizzazione del grafico Tempo/Occorrenze

```{ .plantuml caption="Diagramma S6"}
@startuml
actor User
box "FrontEnd"
participant TimeChartView
participant TimeChartViewModel
participant TimeChartDataStore
end box
box "BackEnd"
participant time_chart
participant LogDatabase
end box
participant ElasticSearch

User --> TimeChartView: update filters

alt
else Update selected codes
TimeChartView -> TimeChartViewModel: onCodeSelectionChange
TimeChartViewModel --> TimeChartDataStore: setSelectedCodes
else Update selected subunits
TimeChartView -> TimeChartViewModel: onSubunitSelectionChange
TimeChartViewModel -> TimeChartDataStore: setSelectedSubunits
end

TimeChartDataStore <-- TimeChartDataStore: //reaction//\nupdate
activate TimeChartDataStore
TimeChartDataStore -> time_chart: api call
activate time_chart
time_chart -> LogDatabase: time_chart_data
activate LogDatabase
LogDatabase -> ElasticSearch: query
activate ElasticSearch
LogDatabase <-- ElasticSearch: query response
deactivate ElasticSearch
time_chart <-- LogDatabase: return
deactivate LogDatabase
TimeChartDataStore <-- time_chart: 200 OK
deactivate time_chart
TimeChartViewModel <-- TimeChartDataStore: //reaction//
deactivate TimeChartDataStore
TimeChartView <-- TimeChartViewModel: //reaction//

User <-- TimeChartView: UI Update

@enduml
```

## Design pattern

Sono stati usati i seguenti design pattern:

* **Context/Provider pattern**: è un design pattern simile al singleton ma che a sua differenza è _scoped_ nell'albero dei componenti, quindi in caso di necessità è facile passare da 1 a n istanze dell'oggetto;
* **Observer pattern**: è un design pattern utile a semplificare l'osservazione dello stato da parte di un componente tipica delle interfacce grafiche;
* **Reactive Store Pattern**: usato per aggiornare automaticamente gli store che dipendono da altri store per i loro dati;
* **Service Layer pattern**: usato per separare logicamente i servizi che compongono l'applicazione;
* **Higher Order Functions (HOF)**: utilizzato per ridurre la duplicazione di codice usando funzioni che ritornano callback con comportamento diverso in base agli argomenti.

# Requisiti soddisfatti

## Tabella dei requisiti soddisfatti

## Funzionali (SmartLogViewer)

| **Requisito** | **Descrizione** | **Classificazione** | **Stato** |
|---------------| ----------------| ------------------- | --------- |
| VRF1 | L'utente deve poter caricare nell'applicazione un singolo file di {g:log} presente localmente | Obbligatorio | Soddisfatto |
| VRF1.1 | Viene visualizzato un messaggio di errore se il file caricato non è compatibile | Obbligatorio | Soddisfatto |
| VRF2 | Deve essere presente una visualizzazione in forma tabellare | Obbligatorio | Soddisfatto |
| VRF2.1 | La tabella di VRF2 deve avere una colonna con intestazione "Data/ora" | Obbligatorio | Soddisfatto |
| VRF2.2 | La tabella di VRF2 deve avere una colonna con intestazione "Codice evento" | Obbligatorio | Soddisfatto |
| VRF2.3 | La tabella di VRF2 deve avere una colonna con intestazione "{g:unitsubunit}" | Obbligatorio | Soddisfatto |
| VRF2.4 | La tabella di VRF2 deve avere una colonna con intestazione "Versione {g:firmware}" | Obbligatorio | Soddisfatto |
| VRF2.5 | La tabella di VRF2 deve avere una colonna con intestazione "Descrizione" | Obbligatorio | Soddisfatto |
| VRF2.6 | La tabella di VRF2 deve avere una colonna con intestazione "Stato" (1 per ON, 0 per OFF) | Obbligatorio | Soddisfatto |
| VRF2.7 | L'applicazione colora ogni riga in base al {g:codice_evento} | Obbligatorio | Soddisfatto |
| VRF3 | Deve essere presente una funzione per ordinamento colonne della tabella simile a spreadsheet | Obbligatorio | Soddisfatto |
| VRF3.1 | Ordinamento per data/ora | Obbligatorio | Soddisfatto |
| VRF3.2 | Ordinamento per {g:codice_evento} | Obbligatorio | Soddisfatto |
| VRF3.3 | Ordinamento per {g:unitsubunit} | Obbligatorio | Soddisfatto |
| VRF3.4 | Ordinamento per {g:firmware} | Obbligatorio | Soddisfatto |
| VRF4 | Deve essere presente una funzione di ricerca di sequenze di eventi note all’interno di un {g:log}, con la relativa etichettatura (gli eventi devono essere ordinati ma non obbligatoriamente consecutivi l'uno all'altro) | Obbligatorio | Soddisfatto |
| VRF5 | Deve essere presente un {g:grafico_timeline} per mostrare le attivazioni degli eventi | Obbligatorio | Soddisfatto |
| VRF5.1 | L'asse x del grafico rappresenta il tempo | Obbligatorio | Soddisfatto |
| VRF5.2 | L'asse y del grafico contiene l'insieme degli eventi | Obbligatorio | Soddisfatto |
| VRF5.3 | Un rettangolo “pieno” che si sviluppa sull'asse x indica il periodo di tempo in cui l’evento (indicato sull'asse y) è ATTIVO | Obbligatorio | Soddisfatto |
| VRF6 | Si deve poter effettuare lo "zoom" in/out sul grafico| Obbligatorio | Soddisfatto  |
| VRF7 | Si deve poter effettuare lo "span" (scroll orizzontale) sul grafico | Obbligatorio | Soddisfatto |
| VRF8 | Devono essere presenti funzioni di filtro per modificare la visualizzazione della tabella e del grafico | Obbligatorio | Soddisfatto |
| VRF8.1 | Filtro per intervallo temporale (select) | Obbligatorio |  Soddisfatto |
| VRF8.2 | Filtro per {g:unitsubunit} | Obbligatorio | Soddisfatto |
| VRF8.3 | Filtro per versione {g:firmware} | Obbligatorio | Soddisfatto |
| VRF8.4 | Filtro per {g:codice_evento} | Obbligatorio | Soddisfatto |
| VRO1 | L'utente deve poter visualizzare altri tipi di grafici | Opzionale | non soddisfatto |
| VRO2 | L'utente deve poter ricercare sequenze più o meno note con relativa etichettatura dato un limite di tempo | Opzionale | non soddisfatto |
| VRO3 | Implementare la colorazione per livello di nidificazione (16 Unit/16 livelli per SubUnit) | Opzionale | non soddisfatto |
| VRO4 | L'utente deve poter esportare i file che visualizza i grafici | Opzionale | non soddisfatto |
| VRO5 | L'utente deve poter eliminare tutti i filtri applicati | Opzionale | non soddisfatto |

## Funzionali (SmartLogStatistics)

| **Requisito** | **Descrizione** | **Classificazione** | **Stato** |
|---------------| ----------------| ------------------- | --------- |
| SRF1 | L'utente deve poter selezionare i {g:log} da analizzare per range di data/ora (min, max, all) | Obbligatorio | Soddisfatto |
| SRF2 | L'utente visualizza un prospetto con i dati da analizzare | Obbligatorio | Soddisfatto |
| SRF2.1 | Nel prospetto compare l'intervallo temporale | Obbligatorio | Soddisfatto |
| SRF2.2 | Nel prospetto compare il numero di {g:log} analizzati | Obbligatorio | Soddisfatto |
| SRF2.3 | Nel prospetto compare la media numero di eventi tra i {g:log} | Obbligatorio |  Soddisfatto |
| SRF2.4 | Nel prospetto compare il massimo numero di eventi tra i {g:log} | Obbligatorio |  Soddisfatto |
| SRF2.5 | Nel prospetto compare la deviazione standard numero di eventi fra i {g:log} | Obbligatorio | Soddisfatto |
| SRF2.6 | Nel prospetto compare la lista degli eventi raggruppati per frequenza di occorrenza (0-1) | Obbligatorio | Soddisfatto |
| SRF2.6.1 | Nella lista viene visualizzato il {g:codice_evento} | Obbligatorio | Soddisfatto |
| SRF2.6.2 | Nella lista viene visualizzato il numero di volte che l'evento è passato dallo stato 0 allo stato 1 | Obbligatorio | Soddisfatto |
| SRF2.6.3 | Nella lista viene visualizzata la versione {g:firmware} | Obbligatorio | Soddisfatto |
| SRF3 | Ci deve essere la possibilità di ordinare le righe della lista in base ai suoi campi | Obbligatorio | Soddisfatto |
| SRF3.1 | Ordinamento della lista per {g:codice_evento} | Obbligatorio | Soddisfatto |
| SRF3.2 | Ordinamento della lista per numero occorrenze | Obbligatorio | Soddisfatto |
| SRF3.3 | Ordinamento della lista per {g:firmware} | Obbligatorio | Soddisfatto |
| SRF4 | Ci devono essere delle funzioni di filtraggio | Obbligatorio | Soddisfatto |
| SRF4.1 | Filtro per {g:unitsubunit} | Obbligatorio | Soddisfatto |
| SRF4.2 | Filtro per intervallo temporale | Obbligatorio | Soddisfatto |
| SRF4.3 | Filtro per versione {g:firmware} | Obbligatorio | Soddisfatto |
| SRF5 | Visualizzazione grafico "tempo/occorrenze" | Obbligatorio | Soddisfatto |
| SRF5.1 | L'asse x del grafico rappresenta il tempo | Obbligatorio | Soddisfatto |
| SRF5.2 | L'asse y del grafico rappresenta le occorrenze | Obbligatorio |  Soddisfatto |
| SRF5.3 | Viene visualizzata la quantità degli eventi nel tempo tramite barre verticali | Obbligatorio | Soddisfatto |
| SRF6 | Visualizzazione del grafico "firmware/occorrenze" | Obbligatorio |  Soddisfatto  |
| SRF6.1 | L'asse x del grafico visualizza i {g:firmware} | Obbligatorio |  Soddisfatto  |
| SRF6.2 | L'asse y del grafico rappresenta le occorrenze | Obbligatorio |  Soddisfatto  |
| SRF6.3 | Viene visualizzata una barra per ogni {g:firmware} | Obbligatorio | Soddisfatto  |
| SRF7 | Funzionalità di filtro per il grafico "tempo/occorrenze" | Obbligatorio |  Soddisfatto  |
| SRF7.1 | Filtro per {g:codice_evento} | Obbligatorio |  Soddisfatto  |
| SRF7.2 | Filtro per {g:unitsubunit} | Obbligatorio |  Soddisfatto  |
| SRF8 | Funzionalità di filtro per il grafico "firmware/occorrenze" | Obbligatorio | Soddisfatto  |
| SRF8.1 | Filtro per {g:codice_evento} | Obbligatorio |  Soddisfatto  |
| SRF8.2 | Filtro per {g:firmware} | Obbligatorio |  Soddisfatto  |
| SRO1 | L'utente deve poter visualizzare un grafico {g:matrice_correlazione} che mostri l'indice di correlazione tra coppie di eventi | Opzionale | Non soddisfatto  |
| SRO2 | L'utente deve poter esportare i file che visualizza i grafici | Opzionale | non soddisfatto  |
| SRO3 | L'utente deve poter eliminare tutti i filtri applicati | Opzionale | non soddisfatto |

## Qualità

| **Requisito** | **Descrizione** | **Classificazione** | **Stato** |
|---------------| ----------------| ------------------- | --------- |
| VRQ1 | {g:smartlogviewer} deve essere sviluppato seguendo le regole descritte nel documento *Norme di progetto* | Obbligatorio |  Soddisfatto  |
| VRQ2 | Deve essere fornita una guida per sviluppatori di {g:smartlogviewer} | Obbligatorio |  Soddisfatto  |
| SRQ1 | {g:smartlogstatistics} deve essere sviluppato seguendo le regole descritte nel documento *Norme di progetto* | Obbligatorio |  Soddisfatto  |
| SRQ2 | Deve essere fornita una guida per sviluppatori di {g:smartlogstatistics} | Obbligatorio |  Soddisfatto  |
| RQ1 | Deve essere fornita la documentazione minima richiesta anche dal corso di "Ingegneria del Software" | Obbligatorio |  Soddisfatto  |
| RQ2 | Viene richiesto l'utilizzo di un {g:repository} pubblico ({g:github}) | Obbligatorio |  Soddisfatto  |

## Vincolo

| **Requisito** | **Descrizione** | **Classificazione** | **Stato** |
|---------------| ----------------| ------------------- | --------- |
| VRV1 | L'interfaccia di visualizzazione di {g:smartlogviewer} deve essere di tipo web | Obbligatorio |  Soddisfatto  |
| VRV2 | Richiesto {g:python} per la parte di analisi dei dati | Opzionale | Non soddisfatto |
| VRV3 | {g:smartlogviewer} deve esser compatibile con il browser Google Chrome versione 110 | Obbligatorio | Soddisfatto |
| VRV4 | {g:smartlogviewer} deve esser compatibile con il browser Firefox versione 110 | Obbligatorio | Soddisfatto |
| VRV5 | {g:smartlogviewer} deve esser compatibile con il browser Microsoft Edge versione 110 | Obbligatorio | Soddisfatto |
| VRV6 | {g:smartlogviewer} deve esser compatibile con il browser Opera versione 95 | Obbligatorio | Soddisfatto |
| SRV1 | L'interfaccia di visualizzazione di {g:smartlogstatistics} deve essere di tipo web | Obbligatorio | Soddisfatto |
| SRV2 | Richiesto {g:python} per la parte di analisi dei dati | Opzionale | Non soddisfatto |
| SRV3 | {g:smartlogstatistics} deve esser compatibile con il browser Google Chrome versione 110 | Obbligatorio | Soddisfatto|
| SRV4 | {g:smartlogstatistics} deve esser compatibile con il browser Firefox versione 110 | Obbligatorio |Soddisfatto |
| SRV5 | {g:smartlogstatistics} deve esser compatibile con il browser Microsoft Edge versione 110 | Obbligatorio | Soddisfatto |
| SRV6 | {g:smartlogstatistics} deve esser compatibile con il browser Opera versione 95 | Obbligatorio | Soddisfatto |
