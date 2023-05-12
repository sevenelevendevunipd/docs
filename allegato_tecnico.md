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

### Diagramma delle classi - SLViewer

```{ .plantuml caption="Class Diagram SLViewer"}
@startuml
skinparam linetype polyline
left to right direction
class node34 as "components/LogUploader.tsx" {
  Card:
  FileUpload:
  FileUploadHandlerEvent:
  LogParserResponse_4dfe1dd_LogFile:
  LogParsingError:
  ProgressSpinner:
  Toast:
  useLogParsingService:
  useRef:
  useState:
}
class node77 as "components/LogViewer.tsx" {
  CodeFilterUi:
  CodeFilteringStrategy:
  DateTimeFilterUi:
  DateTimeFilteringStrategy:
  EventSequenceFilterUi:
  EventSequenceFilteringStrategy:
  FilterUi:
  FirmwareFilterUi:
  FirmwareFilteringStrategy:
  LogData:
  LogInfo:
  LogParserResponse_4dfe1dd_LogFile:
  SubunitFilterUi:
  SubunitFilteringStrategy:
  useEffect:
  useLogFilteringService:
  useState:
}
class node28 as "components/ThemeSwitcher.tsx" {
  InputSwitch:
  PropsWithChildren:
  ThemeContext:
  ThemeProvider:
  ThemeSwitcher:
  createContext:
  echarts:
  echartsDarkTheme:
  echartsLightTheme:
  useContext:
  useEffect:
  useState:
}
class node12 as "filter/CodeFilterUi.tsx" {
  Button:
  Card:
  CodeFilterUi:
  CodeFilteringStrategy:
  ListBox:
  observer:
}
class node39 as "filter/DateTimeFilterUI.tsx" {
  Calendar:
  Card:
  DateTimeFilterUi:
  DateTimeFilteringStrategy:
  max:
  min:
  observer:
}
class node14 as "filter/EventSequenceFilterUi.tsx" {
  Button:
  Card:
  Column:
  ColumnEditorOptions:
  DataTable:
  EventSequenceFilterUi:
  EventSequenceFilteringStrategy:
  InputNumber:
  InputText:
  observer:
}
class node25 as "filter/FirmwareFilterUi.tsx" {
  Button:
  Card:
  FirmwareFilterUi:
  FirmwareFilteringStrategy:
  ListBox:
  observer:
}
class node1 as "filter/SubunitFilterUi.tsx" {
  Button:
  Card:
  SubunitFilterUi:
  SubunitFilteringStrategy:
  Tree:
  TreeCheckboxSelectionKeys:
  TreeExpandedKeysType:
  observer:
  useEffect:
  useState:
}
class node82 as "filters/CodeFilter.tsx" {
  CodeFilteringStrategy:
  LogFilteringStrategy:
  LogParserResponse_4dfe1dd_LogEntry:
  LogParserResponse_4dfe1dd_LogFile:
  action:
  computed:
  makeObservable:
  observable:
}
class node30 as "filters/DateTimeFilter.tsx" {
  DateTimeFilteringStrategy:
  LogFilteringStrategy:
  LogParserResponse_4dfe1dd_LogEntry:
  LogParserResponse_4dfe1dd_LogFile:
  action:
  makeObservable:
  observable:
}
class node72 as "filters/EventSequenceFilter.tsx" {
  DataTableRowEditCompleteEvent:
  DataTableRowReorderEvent:
  EventSequenceFilteringStrategy:
  LogFilteringStrategy:
  LogParserResponse_4dfe1dd_LogEntry:
  LogParserResponse_4dfe1dd_LogFile:
  action:
  makeObservable:
  observable:
}
class node31 as "filters/FirmwareFilter.tsx" {
  FirmwareFilteringStrategy:
  LogFilteringStrategy:
  LogParserResponse_4dfe1dd_LogEntry:
  LogParserResponse_4dfe1dd_LogFile:
  action:
  computed:
  makeObservable:
  observable:
}
class node76 as "filters/SubunitFilter.tsx" {
  LogFilteringStrategy:
  LogParserResponse_4dfe1dd_LogEntry:
  LogParserResponse_4dfe1dd_LogFile:
  SubunitFilteringStrategy:
  TreeCheckboxSelectionKeys:
  TreeNode:
  action:
  computed:
  makeObservable:
  observable:
}
Interface node21 as "services/LogFilteringService.tsx" {
  FilterUi:
  ILogFilteringService:
  LogFilteringStrategy:
  LogParserResponse_4dfe1dd_LogEntry:
  LogParserResponse_4dfe1dd_LogFile:
  PropsWithChildren:
  action:
  computed:
  createContext:
  makeObservable:
  observable:
  observer:
  useContext:
  useLogFilteringService:
}
class node4 as "services/LogParsingService.tsx" {
  ApiError:
  DefaultService:
  LogParserError_581e5e4:
  LogParserResponse_4dfe1dd:
  LogParsingError:
  PropsWithChildren:
  ValidationError_6a07bef:
  createContext:
  useContext:
  useLogParsingService:
}

class node80 as "src/App.tsx" {
  Button:
  LogFilteringService:
  LogParserResponse_4dfe1dd_LogFile:
  LogParsingService:
  LogUploader:
  LogViewer:
  Logo:
  ThemeProvider:
  ThemeSwitcher:
  primeflex.css:
  primeicons.css:
  primereact.css:
  theme.scss:
  useState:
}
class node73 as "src/index.tsx" {
  App:
  OpenAPI:
  React:
  ReactDOM:
  configure:
}
class node71 as "viewer/LogData.tsx" {
  Card:
  ILogFilteringService:
  LogData:
  LogTable:
  Timeline:
  observer:
  useLogFilteringService:
}
class node75 as "viewer/LogInfo.tsx" {
  Card:
  LogParserResponse_4dfe1dd_LogFile:
}
class node46 as "viewer/LogTable.tsx" {
  Column:
  DataTable:
  ILogFilteringService:
  LogTable:
  observer:
  useLogFilteringService:
}
class node64 as "viewer/Timeline.tsx" {
  CustomSeriesOption:
  CustomSeriesRenderItem:
  CustomSeriesRenderItemParams:
  LogParserResponse_4dfe1dd_LogEntry:
  ReactECharts:
  ThemeContext:
  Timeline:
  chunk:
  echarts:
  groupBy:
  useContext:
  useMemo:
}
node34  -[#595959,plain]->  node4
node77  *-[#595959,plain]-  node12
node77  *-[#595959,plain]-  node39
node77  *-[#595959,plain]-  node14
node77  *-[#595959,plain]-  node25
node77  *-[#595959,plain]-  node1
node77  *-[#595959,plain]-  node21
node77  *-[#595959,plain]-  node71
node77  *-[#595959,plain]-  node75
node12  -[#595959,plain]->  node82
node39  -[#595959,plain]->  node30
node14  -[#595959,plain]->  node72
node25  -[#595959,plain]->  node31
node1   -[#595959,plain]->  node76
node82  .[#595959,plain]-|>  node21
node30  .[#595959,plain]-|>  node21
node72  .[#595959,plain]-|>  node21
node31  .[#595959,plain]-|>  node21
node76  .[#595959,plain]-|>  node21
node80  *-[#595959,plain]-  node34
node80  *-[#595959,plain]-  node77
node80  *-[#595959,plain]-  node28
node73  *-[#595959,plain]-  node80
node71  *-[#595959,plain]-  node46
node71  *-[#595959,plain]-  node64
@enduml
```

### Diagrammi di sequenza - SLViewer

#### Caricamento file di log

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

#### Applicazione filtro alla tabella

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

#### Visualizzazione del grafico

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

### Diagramma di attività - SLViewer

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

## Diagrammi di SmartLogStatistics

### Diagramma delle classi - SLStatistics

```{ .plantuml caption="Class Diagram SLStatistics"}
@startuml
left to right direction
skinparam linetype polyline
class node16 as "components/BlockUIObserver.tsx" {
BlockUI:
BlockUIProps:
ProgressSpinner:
PropsWithChildren:
observer:
}
class node4 as "components/CalendarHOC.tsx" {
Calendar:
CalendarProps:
}
class node74 as "components/ErrorDialog.tsx" {
Button:
Dialog:
observer:
}
class node79 as "components/InfoRow.tsx" {
Skeleton:
observer:
}
class node57 as "components/RangePicker.tsx" {
CalendarHOC:
Card:
max:
min:
observer:
useId:
}
class node8 as "components/StackedBarChart.tsx" {
CSSProperties:
EChartsReact:
useThemeName:
}
class node58 as "components/ThemeSwitcher.tsx" {
InputSwitch:
ThemeProvider:
ThemeSwitcher:
createContext:
echarts:
echartsDarkTheme:
echartsLightTheme:
useContext:
useEffect:
useState:
useThemeName:
}
class node61 as "src/App.tsx" {
Logo:
MainView:
RootStoreProvider:
ThemeProvider:
ThemeSwitcher:
primeflex.css:
primeicons.css:
primereact.css:
theme.scss:
}
class node24 as "src/index.tsx" {
App:
OpenAPI:
React:
ReactDOM:
configure:
}
class node72 as "stores/ChartFilterStore.ts" {
ChartFilterStore:
ChartsService:
action:
makeObservable:
observable:
runInAction:
}
class node15 as "stores/FilterStateStore.ts" {
FilterStateStore:
MAX_DATE:
MIN_DATE:
action:
makeObservable:
observable:
}
class node70 as "stores/FirmwareChartDataStore.ts" {
ChartsService:
FirmwareChartDataStore:
action:
makeObservable:
observable:
runInAction:
}
class node65 as "stores/LogFrequencyStore.ts" {
LogAggregationAnalysisService:
LogFrequencyStore:
LogFrequency_baae32a_LogFrequencyEntry:
MAX_DATE:
MIN_DATE:
SelectItemOptionsType:
TreeCheckboxSelectionKeys:
TreeNode:
action:
allUnitSubunits:
computed:
hashUnitSubUnit:
makeObservable:
observable:
reaction:
runInAction:
}
class node78 as "stores/LogListStore.ts" {
ApiError:
LogFileManagementService:
LogListStore:
LogListStoreState:
MAX_DATE:
MIN_DATE:
StoredLogList_c682361_StoredLogFile:
action:
computed:
makeObservable:
observable:
runInAction:
}
interface node43 as "stores/RootStore.tsx" {
ChartFilterStore:
FilterStateStore:
FirmwareChartDataStore:
IChartFilterStore:
IFilterStateStore:
IFirmwareChartDataStore:
ILogFrequencyStore:
ILogListStore:
ISelectedLogsInfoStore:
ITimeChartDataStore:
LogFrequencyStore:
LogListStore:
PropsWithChildren:
SelectedLogsInfoStore:
TimeChartDataStore:
createContext:
reaction:
restrictRange:
useContext:
useRootStore:
}
class node60 as "stores/SelectedLogsInfoStore.ts" {
LogAggregationAnalysisService:
LogOverview_91de17a:
SelectedLogsInfoStore:
SelectedLogsInfoStoreState:
action:
computed:
makeObservable:
observable:
runInAction:
}
class node66 as "stores/TimeChartDataStore.ts" {
ChartsService:
TimeChartDataStore:
TreeCheckboxSelectionKeys:
action:
computed:
makeObservable:
observable:
runInAction:
}
class node76 as "tabs/FirmwareChartView.tsx" {
Card:
IChartFilterStore:
IFirmwareChartDataStore:
ListBox:
StackedBarChart:
observer:
runInAction:
useRootStore:
}
class node25 as "tabs/LogFrequencyView.tsx" {
Card:
Column:
ColumnFilterElementTemplateOptions:
DataTable:
ILogFrequencyStore:
MultiSelect:
RangePicker:
ScrollPanel:
Tree:
TreeCheckboxSelectionKeys:
allUnitSubunits:
observer:
useRootStore:
}
class node84 as "tabs/LogListView.tsx" {
BlockUIObserver:
Button:
Card:
Column:
ConfirmDialog:
DataTable:
ErrorDialog:
FileUpload:
IFilterStateStore:
ILogListStore:
ISelectedLogsInfoStore:
InfoRow:
LogListStoreState:
Message:
RangePicker:
SelectedLogsInfoStoreState:
Skeleton:
StoredLogList_c682361_StoredLogFile:
confirmDialog:
observer:
useRootStore:
}
class node28 as "tabs/TimeChartView.tsx" {
Card:
IChartFilterStore:
ITimeChartDataStore:
ListBox:
ScrollPanel:
StackedBarChart:
Tree:
TreeCheckboxSelectionKeys:
groupBy:
hashUnitSubUnit:
observer:
runInAction:
splitUnitSubUnitHash:
useRootStore:
}
class node36 as "views/MainView.tsx" {
FirmwareChartView:
ILogListStore:
ISelectedLogsInfoStore:
LogFrequencyView:
LogListView:
TabPanel:
TabView:
TimeChartView:
observer:
useEffect:
useRootStore:
}
node57  *-[#595959,plain]-  node4
node61  *-[#595959,plain]-  node58
node61  *-[#595959,plain]-  node36
node24  *-[#595959,plain]-  node61
node43  <|.[#595959,plain].  node72
node43  <|.[#595959,plain].  node15
node43  <|.[#595959,plain].  node70
node43  <|.[#595959,plain].  node65
node43  <|.[#595959,plain].  node78
node43  <|.[#595959,plain].  node60
node43  <|.[#595959,plain].  node66
node76  *-[#595959,plain]-  node8
node76  -[#595959,plain]->  node72
node76  -[#595959,plain]->  node70
node25  *-[#595959,plain]-  node57
node25  -[#595959,plain]->  node65
node84  *-[#595959,plain]-  node16
node84  *-[#595959,plain]-  node74
node84  *-[#595959,plain]-  node79
node84  *-[#595959,plain]-  node57
node84  -[#595959,plain]->  node15
node84  -[#595959,plain]->  node78
node28  *-[#595959,plain]-  node8
node28  -[#595959,plain]->  node72
node28  -[#595959,plain]->  node66
node36  *-[#595959,plain]-  node43
node36  *-[#595959,plain]-  node76
node36  *-[#595959,plain]-  node25
node36  *-[#595959,plain]-  node84
node36  *-[#595959,plain]-  node28
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

### Diagramma di attività - SLStatistics

```{ .plantuml caption="Diagramma S5"}
start
:Carica log;
repeat
split
:Schermata visualizzazione Log caricati;
split
:Carica un altro log;
split again
:Elimina un log caricato;
end split
split again
:Schermata tabella occurrences;
split
:Ordina per colonna;
split again
:Filtra;
end split
split again
:Schermata grafico Time/occurrences;
split again
:Schermata grafico Firmware/occurrences;
end split
repeat while(Altre operazioni?) is (Sì)
-> No;
stop
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
