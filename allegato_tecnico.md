---
title: "Allegato Tecnico"
date: "15/11/2022"
responsabile: "Nicola Cecchetto"
redattori: ["Davide Vitagliano", "Augusto Zanellato"]
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
    cambiamenti: Diagarmma delle Classi di Viewer
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
minEvent: string[]
maxEvent: string[]
filterableCodes: string[]
insertingFirst: SearchEntry
insertingLast: SearchEntry
firstValues: SearchEntry[]
lastValues: SearchEntry[]
selectedFirst: SearchEntry[]
selectedLast: SearchEntry[]
time: number
filterSubSequence(entries: LogEntry[], first: SearchEntry[], last: SearchEntry[], range: number): LogEntry[]
filter(entries: LogEntry[]): LogEntry[]
reset(): void
setTime(t?: number | null): void
getInserting(isFirst: boolean): SearchEntry
addItem(isFirst: boolean): void
editItem(e: DataTableRowEditCompleteEvent, isFirst: boolean): void
reorderItems(e: DataTableRowReorderEvent<SearchEntry[]>, isFirst: boolean): void
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
@startuml classes
set namespaceSeparator none
class "LogParserError" as sl_viewer_backend.schemas.logparsererror.LogParserError {
errors : list[str]
}
class "LogParserResponse" as sl_viewer_backend.schemas.logparseresponse.LogParserResponse {
log
}
class "LogUpload" as sl_viewer_backend.schemas.logupload.LogUpload {
log
}
@enduml
```

### Diagrammi di sequenza - SLViewer

#### Caricamento file di log

```{ .plantuml caption="Diagramma V1"}
@startuml
actor Actor
box "FrontEnd"
participant View
participant LogUploader
end box
box "BackEnd"
participant LogParser
participant LogUpload
end box
Actor -> View: RequestUpload
activate View
View -> LogUploader:RequestUpload
activate LogUploader
LogUploader->LogParser :ParseUpload
activate LogParser

LogParser->LogUpload : RequestUpload
LogParser<--LogUpload: getResponse
LogUploader<--LogParser:return ParsedFile
deactivate LogParser
View <--LogUploader: return LogData
deactivate LogUploader
View->View:Update
activate View
Actor<--View:Done
deactivate View
deactivate View
@enduml
```

#### Applicazione filtro alla tabella

```{ .plantuml caption="Diagramma V2"}
@startuml
actor Actor
box "FrontEnd"
participant LogViewer
participant LogFilteringService
collections  FilterView
collections FilterViewModel
collections LogFilteringStrategy
end box
Actor -> LogViewer: Set Filter
activate LogViewer
LogViewer ->LogFilteringService: FilterType
activate LogFilteringService
LogFilteringService -> FilterView: Message
activate FilterView
FilterView -> FilterViewModel: Message
activate FilterViewModel
FilterViewModel -> LogFilteringStrategy: Filter
deactivate FilterViewModel
activate LogFilteringStrategy
FilterView <--LogFilteringStrategy:return selectedFilter
deactivate LogFilteringStrategy
LogViewer <-- LogFilteringService: return
LogFilteringService <-- FilterView: aply filter
deactivate LogFilteringService
deactivate FilterView
LogViewer -> LogViewer: Update
activate LogViewer
Actor <-- LogViewer: Done
deactivate LogViewer
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
LogViewer ->LogData: ViewChart
activate LogData

LogData -> Timeline: ViewChart
deactivate LogData
activate Timeline
LogViewer <-- Timeline: return 
deactivate Timeline
Actor <-- LogViewer: Done
deactivate LogViewer
@enduml
```

#### Visualizzazione della tabella

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
constructor(logListStore?: ILogListStore | null, filterStateStore?: IFilterStateStore | null, selectedLogsInfoStore?: ISelectedLogsInfoStore | null, logFrequencyStore?: ILogFrequencyStore | null, chartFilterStore?: IChartFilterStore | null, timeChartStore?: ITimeChartDataStore | null, firmwareChartDataStore?: IFirmwareChartDataStore | null):
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
@startuml classes
left to right direction
set namespaceSeparator none
class "ChartFilterData" as sl_statistics_backend.models.chartfilterdata.ChartFilterData {
codes : list[str]
firmwares : list[str]
subunits : list[int]
}
class "Config" as sl_statistics_backend.models.logoverview.LogOverview.Config {
json_encoders : dict
}
class "Config" as sl_statistics_backend.models.storedlogfile.StoredLogFile.Config {
json_encoders : dict
}
class "CountResponse" as sl_statistics_backend.schemas.countresponse.CountResponse {
count : int
}
class "ErrorResponse" as sl_statistics_backend.schemas.errorresponse.ErrorResponse {
errors : list[str]
}
class "FirmwareChartParams" as sl_statistics_backend.schemas.firmwarechartparams.FirmwareChartParams {
selected_codes : list[str]
selected_firmwares : list[str]
}
class "Histogram" as sl_statistics_backend.schemas.histogram.Histogram {
bars : list[HistogramEntry]
}
class "LogDatabase" as sl_statistics_backend.log_database.LogDatabase {
elastic
elastic
index_name : str
index_name : str
uploaded_file_list
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
class "<color:red>LogDatabaseError</color>" as sl_statistics_backend.log_database.LogDatabaseError {
message : str
message : str
}
class "LogDelete" as sl_statistics_backend.schemas.logdelete.LogDelete {
log : str
}
class "LogFrequency" as sl_statistics_backend.schemas.logfrequency.LogFrequency {
entries : list[LogFrequencyEntry]
}
class "LogFrequencyEntry" as sl_statistics_backend.models.logfrequencyentry.LogFrequencyEntry {
count : int
event_code : str
firmware : str
}
class "LogFrequencyParams" as sl_statistics_backend.schemas.logfrequencyparams.LogFrequencyParams {
selected_subunits : list[int]
}
class "LogOverview" as sl_statistics_backend.models.logoverview.LogOverview {
avg_entries : int
entries_std_dev : int
max_count_entry
total_entries : int
empty() -> 'LogOverview'
}
class "LogOverviewParams" as sl_statistics_backend.schemas.logoverviewparams.LogOverviewParams {
end : datetime
start : datetime
}
class "LogUpload" as sl_statistics_backend.schemas.logupload.LogUpload {
log
}
class "MaxCountEntry" as sl_statistics_backend.models.logoverview.MaxCountEntry {
entry_count : int
filename : str
}
class "StoredLogFile" as sl_statistics_backend.models.storedlogfile.StoredLogFile {
entry_count : int
file_name : str
first_entry_timestamp : datetime
last_entry_timestamp : datetime
}
class "StoredLogList" as sl_statistics_backend.models.storedloglist.StoredLogList {
log_files : list[StoredLogFile]
max_timestamp : datetime
min_timestamp : datetime
}
class "TimeChartParams" as sl_statistics_backend.schemas.timechartparams.TimeChartParams {
selected_codes : list[str]
}
sl_statistics_backend.schemas.firmwarechartparams.FirmwareChartParams --|> sl_statistics_backend.schemas.logoverviewparams.LogOverviewParams
sl_statistics_backend.schemas.logfrequencyparams.LogFrequencyParams --|> sl_statistics_backend.schemas.logoverviewparams.LogOverviewParams
sl_statistics_backend.schemas.timechartparams.TimeChartParams --|> sl_statistics_backend.schemas.logfrequencyparams.LogFrequencyParams
sl_statistics_backend.models.logoverview.MaxCountEntry --* sl_statistics_backend.models.logoverview.LogOverview : max_count_entry
@enduml
```

### Diagrammi di Sequenza - SLStatistics

#### Upload di un log

```{ .plantuml caption="Diagramma S1"}
@startuml
actor User
User -> LogUpload: LogUpload
activate LogUpload
LogUpload -> LogFileManagementSystem: LogUploadFile
alt LogNotUploaded
activate LogFileManagementSystem
LogFileManagementSystem -> SLBackend: ApiCall
activate SLBackend
LogFileManagementSystem <-- SLBackend: Return LogList
deactivate SLBackend
LogUpload <-- LogFileManagementSystem: Return LogList
deactivate LogFileManagementSystem
User <-- LogUpload: Done
else Log Already Uploaded
LogUpload <-- LogFileManagementSystem: Return Error
User <-- LogUpload: Return Error
deactivate LogUpload
end
@enduml
```

#### Visualizzazione Prospetto

```{ .plantuml caption="Diagramma S2"}
@startuml
actor User
box "FrontEnd"
participant LogListView
participant LogFileManagementSystem
end box
box "BackEnd"
participant LogDatabase
participant ElasticDB
end box
User -> LogListView: Visualizza Prospetto
activate LogListView
LogListView -> LogFileManagementSystem :LogOverviewData
activate LogFileManagementSystem
LogFileManagementSystem -> LogDatabase: LogListStore
activate LogDatabase
LogDatabase -> ElasticDB: ApiCall
activate ElasticDB
alt File di Log Caricati
LogDatabase <-- ElasticDB: Return Data
LogFileManagementSystem <-- LogDatabase: Intervallo Temporale
LogFileManagementSystem <-- LogDatabase: Numero di Log
LogFileManagementSystem <-- LogDatabase: Media Numero Eventi
LogFileManagementSystem <-- LogDatabase: Massimo Numero Eventi
LogFileManagementSystem <-- LogDatabase: Deviazione Standard Numero Eventi
LogFileManagementSystem <-- LogDatabase: Lista Occorrenze Eventi
else DB vuoto
LogDatabase <-- ElasticDB: Return EmptyData
deactivate ElasticDB
LogFileManagementSystem<-- LogDatabase:return
deactivate LogDatabase
end
LogListView <-- LogFileManagementSystem: return
deactivate LogFileManagementSystem
User <-- LogListView:Done
deactivate LogListView
@enduml
```

#### Filtri e Ordinamento Lista Occorrenza Eventi

```{ .plantuml caption="Diagramma S3"}
@startuml
actor User
User-->View:Filtro
alt 3.1 AggiuntaFiltro
alt 3.1.1 Filtra per Unit/Subunit
else 3.1.2 Filtra per Intervallo Temporale
View-->LogListView:Filter
LogListView-->FilterStateStore:Filter
alt 3.1.2.1 Intervallo GIusto
LogListView<--FilterStateStore:Done
View<--LogListView:Done
else 3.1.2.2 Intervallo Sbagliato
LogListView<--FilterStateStore !! : error
View<--LogListView !! : Intervalli sbagliati
end
else 3.1.3 Per versione Firmware
LogListView-->FilterStateStore:Filter
LogListView<--FilterStateStore:Done
View<--LogListView:Done
end
else 3.2 Ordinamento per Colonna
alt 3.2.1 Ordinamento per CodiceEvento
View-->LogListView:Filter
else 3.2.2 Ordinamento per Numero Occorrenze
LogListView-->FilterStateStore:Filter
LogListView<--FilterStateStore:Done
View<--LogListView:Done
else 3.2.3 Ordinamento per Firmware
LogListView-->FilterStateStore:Filter
LogListView<--FilterStateStore:Done
View<--LogListView:Done
end
end
@enduml
```

#### Retrieve dei dati dal backend per il grafico Firmware/Occorrenze

```{ .plantuml caption="Diagramma S5"}
@startuml
actor User
box "FrontEnd"
participant FirmwareChartView
participant FirmwareChartDataStore
end box
box "BackEnd"
participant FirmwareChartParams
end box
User-->FirmwareChartView:Request
alt 4.1 File di Log caricati
FirmwareChartView-->FirmwareChartDataStore:Request
activate FirmwareChartDataStore
FirmwareChartDataStore-->FirmwareChartParams:Request
activate FirmwareChartParams
FirmwareChartDataStore<--FirmwareChartParams:return params
deactivate FirmwareChartParams
FirmwareChartView<--FirmwareChartDataStore  :return data
deactivate FirmwareChartDataStore
User<--FirmwareChartView:done
else 4.2 File non caricati
FirmwareChartView-->FirmwareChartDataStore:Request
activate FirmwareChartDataStore
FirmwareChartDataStore-->FirmwareChartParams:Request
activate FirmwareChartParams
FirmwareChartDataStore<--FirmwareChartParams !! :return emptyparams
deactivate FirmwareChartParams
FirmwareChartView<--FirmwareChartDataStore  !!:return emptydata
deactivate FirmwareChartDataStore
User<--FirmwareChartView:done
end
@enduml
```

#### Retrieve dei dati dal backend per il grafico Tempo/Occorrenze

```{ .plantuml caption="Diagramma S6"}
@startuml
actor User
box "FrontEnd"
participant TimeChartView
participant TimeChartDataStore
end box
box "BackEnd"
participant TimeChartParams
end box
User-->TimeChartView:Request
alt 4.1 File di Log caricati
TimeChartView-->TimeChartDataStore:Request
activate TimeChartDataStore
TimeChartDataStore-->TimeChartParams:Request
activate TimeChartParams
TimeChartDataStore<--TimeChartParams:return params
deactivate TimeChartParams
TimeChartView<--TimeChartDataStore  :return data
deactivate TimeChartDataStore
User<--TimeChartView:done
else 4.2 File non caricati
TimeChartView-->TimeChartDataStore:Request
activate TimeChartDataStore
TimeChartDataStore-->TimeChartParams:Request
activate TimeChartParams
TimeChartDataStore<--TimeChartParams !! :return emptyparams
deactivate TimeChartParams
TimeChartView<--TimeChartDataStore  !!:return emptydata
deactivate TimeChartDataStore
User<--TimeChartView:done
end
@enduml
```

#### Filtri Grafico Firmware/Occorrenze

```{ .plantuml caption="Diagramma S4"}
@startuml
actor User
box "FrontEnd"
participant FirmwareChartView
participant FilterStateStore
participant ChartFilterStore
participant FirmwareChartDataStore
end box
User-->FirmwareChartView:Filter
activate FirmwareChartView
FirmwareChartView-->FilterStateStore:filter
activate FilterStateStore
FirmwareChartView-->ChartFilterStore:filter
activate ChartFilterStore
FilterStateStore-->FirmwareChartDataStore:filter
activate FirmwareChartDataStore
deactivate FilterStateStore
ChartFilterStore-->FirmwareChartDataStore:filter
deactivate ChartFilterStore
FirmwareChartDataStore-> FirmwareChartDataStore:Update
FirmwareChartView<--FirmwareChartDataStore:data
deactivate FirmwareChartDataStore
User<--FirmwareChartView:Done
deactivate FirmwareChartView
@enduml
```

#### Filtri Grafico Tempo/Occorrenze

```{ .plantuml caption="Diagramma S5"}
@startuml
actor User
box "FrontEnd"
participant TimeChartView
participant FilterStateStore
participant ChartFilterStore
participant TimeChartDataStore
end box
User-->TimeChartView:Filter
activate TimeChartView
TimeChartView-->FilterStateStore:filter
activate FilterStateStore
TimeChartView-->ChartFilterStore:filter
activate ChartFilterStore
FilterStateStore-->TimeChartDataStore:filter
activate TimeChartDataStore
deactivate FilterStateStore
ChartFilterStore-->TimeChartDataStore:filter
deactivate ChartFilterStore
TimeChartDataStore-> TimeChartDataStore:Update
TimeChartView<--TimeChartDataStore:data
deactivate TimeChartDataStore
User<--TimeChartView:Done
deactivate TimeChartView
@enduml
```

## Design pattern

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
