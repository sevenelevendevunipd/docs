---
title: "Norme di progetto"
date: "03/11/2022"
responsabile: "Davide Vitagliano"
redattori: ["Andrea Auletta", "Enrik Rucaj", "Mattia Brunello"]
verificatori: ["Nicola Cecchetto", "Antonio Stan", "Augusto Zanellato"]
abstract: "Vengono definite le prime norme di progetto."
docusage: "Interno"
toc: true
versioni:
  v0.0.1:
    autore: Andrea Auletta
    data: 10/11/2022
    cambiamenti: Prima stesura
  v0.0.2:
    autore: Andrea Auletta
    data: 18/11/2022
    cambiamenti: Aggiunto paragrafo riguardante il repository
  v0.0.3:
    autore: Davide Vitagliano
    data: 20/11/2022
    cambiamenti: Aggiunta sezione analisi dei requisiti
  v0.0.4:
    autore: Augusto Zanellato
    data: 24/11/2022
    cambiamenti: Aggiunta sezione riguardante workflow documenti
  v0.0.5:
    autore: Andrea Auletta
    data: 25/11/2022
    cambiamenti: Modificati paragrafi registro delle modifiche repository, Requisiti
  v0.0.6:
    autore: Davide Vitagliano
    data: 25/11/2022
    cambiamenti: Aggiunta sezione YouTrack, Casi d'uso (per analisi dei requisiti) e modificata sezione Repository
  v0.0.7:
    autore: Augusto Zanellato
    data: 25/11/2022
    cambiamenti: Aggiunto Piano di Progetto, Piano di Qualifica e Strumenti (in Fornitura)
  v0.0.8:
    autore: Andrea Auletta
    data: 23/12/2022
    cambiamenti: Aggiornati vari paragrafi e aggiunto il capitolo "Processi organizzativi"
  v0.0.9:
    autore: Andrea Auletta
    data: 14/02/2023
    cambiamenti: Aggiunte le norme per il tracciamento dei requisiti
  v0.1.0:
    autore: Antonio Stan
    data: 19/02/2023
    cambiamenti: Verifica generale del documento
  v0.1.1:
    autore: Davide Vitagliano
    data: 21/02/2023
    cambiamenti: Aggiunta sezione riguardante gli strumenti e il PoC
  v1.0.0:
    autore: Enrik Rucaj
    data: 22/02/2023
    cambiamenti: Approvato per il rilascio
  v1.0.1:
    autore: Mattia Brunello
    data: 20/04/2023
    cambiamenti: Aggiunti standard
  v1.1.0:
    autore: Antonio Stan
    data: 27/04/2023
    cambiamenti: Verifica standard
  v2.0.0:
    autore: Davide Vitagliano
    data: 2/05/2023
    cambiamenti: Approvato per il rilascio
...

# Introduzione

## Scopo del documento

L'obiettivo di questo documento è quello di dare delle norme per poter lavorare in maniera uniforme.
Il documento verrà aggiornato con costanza durante tutte le fasi del progetto.

## Scopo del capitolato

### C5 - SmartLog

Al giorno d'oggi vista l'espansione e l'aumento del numero delle apparecchiature per il supporto all'energia elettrica
nelle infrastrutture critiche, la gestione di esse sta diventando sempre più complessa e richiede una continua analisi
per l'ottimizzazione dei consumi e rivelazione degli errori. Per questo motivo i dispositivi Socomec riescono a
registrare e salvare su un file di {g:log} tutti gli eventi che accadono, in modo da:

* poter analizzare, trovare e risolvere eventuali problemi.
* poter estrarre informazioni statistiche da un insieme di file di {g:log}.

## Riferimenti

### Riferimenti normativi

* [Regolamento del progetto didattico](https://www.math.unipd.it/~tullio/IS-1/2022/Dispense/PD02.pdf)

* [Capitolato d'appalto C5 - SmartLog](https://www.math.unipd.it/~tullio/IS-1/2022/Progetto/C5.pdf)

# Processi primari

## Fornitura

### Scopo

Per il processo di fornitura verranno elencati tutti gli strumenti e i documenti necessari per lo svolgimento del
progetto.

### Aspettative

Le aspettative del processo di fornitura sono:

* Definire una struttura dei documenti chiara;
* Definire le tempistiche del lavoro;
* Chiarire dubbi con il proponente.

### Strumenti

Lo strumento utilizzato (per la fornitura) dal team è {g:youtrack}. Utilizzato sia per creare grafici di {G:Gantt}
che per gestire le {g:issue} (*Vedasi la parte di Project Management in Processi di Supporto*).

### Documenti

I documenti redatti in questa fase sono due: *Piano di Qualifica* e *Piano di Progetto*

#### Piano di Qualifica

Il piano di qualifica viene redatto dal verificatore, in quanto dovrà accertarsi del funzionamento del prodotto e quindi
dei vari test da effettuare.
Il documento sarà composto dalle seguenti parti:

* *Qualità di processi*: vengono identificate le metriche da utilizzare per le attività di verifica riguardanti il
  processo di sviluppo.
* *Qualità del prodotto*: vengono identificate le metriche da utilizzare per le attività di verifica riguardanti la
  qualità del prodotto.
* *Resoconto delle attività di verifica*: visualizzazione di grafici che permettono di fare un analisi sullo
  svolgimento del progetto (in modo da permettere in un secondo momento, un miglioramento sulle metodologie di
  sviluppo).

#### Piano di Progetto

Il piano di progetto viene redatto dal responsabile e dagli amministratori del progetto, in quanto sono gli unici che
abbiano il compito di stabilire delle tempistiche e accertare il corretto avanzamento del progetto nell'intero periodo
di sviluppo.
Il documento sarà composto dalle seguenti parti:

* *Analisi dei Rischi*: suddivisa da una parte in cui i rischi vengono identificati e dall'altra in cui vengono
  mitigati. I rischi da identificare vengono suddivisi in:
  * Rischi tecnologici
  * Rischi organizzativi
  * Rischi dei requisiti
* *Modello di Sviluppo*: riguarda il metodo di lavoro da seguire per tutta la durata del progetto
* *Pianificazione*: raggruppata per vari periodi in cui vi è indicato:
  * Il periodo in cui viene svolto
  * I ruoli coinvolti
  * Le attività da svolgere
  * Il preventivo calcolato
* *Consuntivo di periodo*: raggruppato per vari periodi in cui vi è indicato:
  * Il consuntivo
  * Le motivazioni delle variazioni (se ci sono)
  * Considerazioni

## Sviluppo

### Scopo

Per il processo di sviluppo verranno descritti i compiti e le attività da svolgere nella fase di sviluppo del prodotto.

### Aspettative

Le aspettative del processo di sviluppo sono:

* Definire gli obiettivi dello sviluppo;
* Definire i vincoli tecnologici e di design;
* Realizzare un prodotto che superi i test soddisfacendo i requisiti concordati con il proponente.

### Analisi dei requisiti

#### Scopo

Questa sezione contiene le norme usate per la stesura del documento *Analisi dei requisiti*. Nello specifico, contiene
la spiegazione dei codici usati per identificare i requisiti.

#### Aspettative

L'*analisi dei requisiti* ha l'obiettivo d'individuare i requisiti espliciti e impliciti, estrapolandoli dal capitolato,
e di definire i casi d'uso richiesti per la realizzazione del prodotto.

#### Casi d'uso

I casi d'uso descrivono l'interazione del sistema con le entità esterne (al sistema) che la usano (ad esempio
l'utente/operatore). Sono utili a esprimere varie sequenze di azioni che hanno in comune uno scopo finale.

Per i casi d'uso vengono specificati:

* Attori
* Use Case:
  * {g:smartlogviewer}, identificati con **VUC**;
  * {g:smartlogstatistics}, identificati con **SUC**;
  * Opzionali, identificati con **OUC**;
  * Gli identificatori vengono poi seguiti dal numero del caso d'uso.
* Ogni Use Case prevede i seguenti punti:
  * Scenario;
  * Attore;
  * Precondizioni;
  * Postcondizioni.

Nella specifica degli scenari è possibile averne più di uno e vengono rappresentati tramite un elenco puntato.
Ogni caso d'uso è provvisto del proprio grafico del caso d'uso.

#### Tracciamento dei requisiti

I requisiti vengono tracciati mediante una tabella di quattro colonne:

* **Requisito**: Ogni requisito è identificato da un codice alfanumerico. Esistono:
  * Requisiti funzionali, identificati con **RF**;
  * Requisiti di qualità, identificati con **RQ**;
  * Requisiti di vincoli, identificati con **RV**;
  * Requisiti opzionali, identificati con **RO**.

Visto che il progetto si occupa di due applicazioni distinte, ai codici dei requisiti funzionali si aggiunge
all'inizio **V** se è un requisito per {g:smartlogviewer}, oppure **S** se è un requisito per {g:smartlogstatistics}.

Ogni requisito ha alla fine del codice un numero puntato.

* **Descrizione**: breve descrizione del requisito;
* **Classificazione**: importanza attribuita al requisito(obbligatorio, opzionale, desiderabile);
* **Fonte**: da dove viene tratto il requisito.

#### UML

I diagrammi {a:UML} verranno realizzati usando la versione 2 del linguaggio.

### Progettazione

#### Scopo

L'attività di progettazione incorporerà le parti ottenute dall'*analisi dei requisiti*, specificando le funzionalità dei
sottoinsiemi e riconducendo a una soluzione unica.

#### Aspettative

La progettazione ha l'obiettivo di realizzare l'architettura del prodotto software, inizialmente realizzata da un
{a:PoC} sviluppato come una demo tecnica delle funzionalità richieste dall'*analisi dei requisiti*. In seguito
all'{a:RTB}, verrà approfondita e descritta nella *Specifica tecnica* per la {a:PB}.

#### Requirements & Technology Baseline

Questa fase fissa i requisiti, concordati con il proponente, che il fornitore si impegna a soddisfare. Inoltre vengono
motivate le tecnologie, i {g:framework} e le librerie selezionate per realizzare il prodotto.
I documenti utili a verificare affidabilità e adeguatezza degli obiettivi sono:

* *Piano di Progetto*;
* *Piano di Qualifica*;
* *Norme di Progetto*;
* *Verbali* interni ed esterni.

Esclusi i *verbali*, i documenti sopracitati vanno aggiornati anche nelle fasi successive.

#### Product Baseline

Questa fase illustra le linee guida architetturali del prodotto. Oltre all’evoluzione dei documenti stesi durante l'
{a:RTB}, in questa fase risulteranno necessari:

* *Specifica tecnica*;
* *Manuale utente*;
* *Verbali* interni ed esterni di periodo.
<!--TODO forse non serve il manuale sviluppatore nella PB?-->
I documenti anche in questa fase verranno mantenuti fino alla consegna del progetto.

### Codifica

#### Scopo

Questa sezione contiene le norme atte alla concretizzazione della progettazione del software in un prodotto vero e
proprio.

#### Aspettative

La codifica ha l'obiettivo di realizzare un prodotto software avente le caratteristiche concordate con il proponente.
Il codice realizzato dovrà rispettare uno stile preciso, in modo che risulti facilmente leggibile e mantenibile.

#### Stile della codifica

* **Indentazione:**
  * **2 spazi** per TypeScript;
  * **4 spazi** per Python;
* **Parentesi:** le parentesi graffe che delimitano i metodi in TypeScript devono essere poste nel seguente modo:
  * Apertura: in linea con la firma;
  * Chiusura: a capo rispetto l'ultima riga del corpo del metodo.
* **Metodi:**
  * TypeScript: `lowerCamelCase`
  * Python: `snake_case`
* **Classi:** `UpperCamelCase`
* **Variabili:**
  * TypeScript: `lowerCamelCase`
  * Python: `snake_case`
* **Costanti:** `UPPERCASE_WITH_UNDERSCORES`
* **Univocità dei nomi:** lo stesso nome (di classe, metodo, variabile o costante) non deve essere utilizzato con significati diversi in posti diversi;

### Strumenti

Di seguito vengono illustrati gli strumenti e le tecnologie utilizzate durante la fase di codifica:

* [Docker](https://www.docker.com/): crea contenitori per la compilazione ed esecuzione di applicazioni;
* [Python](https://www.python.org/): linguaggio di programmazione;
* [React](https://it.reactjs.org/): {g:framework} reattivo per lo sviluppo {g:frontend};
* [Starlette](https://www.starlette.io/): {g:framework} web leggero ed asincrono basato su ASGI;
* [SpecTree](https://github.com/0b01001001/spectree): validatore per le richieste e proposte, genera inoltre la
  specifica OpenAPI;
* [Pydantic](https://docs.pydantic.dev/): validatore dei tipi a run-time per Python (usato assieme a SpecTree);
* [Gunicorn](https://gunicorn.org/): server HTTP per WSGI;
* [Uvicorn](https://www.uvicorn.org/): server HTTP per ASGI;
* [TypeScript](https://www.typescriptlang.org/): type checker forte e statico per JavaScript;
* [Apache ECharts](https://echarts.apache.org/en/index.html): libreria per la creazione di grafici integrabile con
  React;
* [OpenAPI-TypeScript](https://www.npmjs.com/package/openapi-typescript): generazione di codice TypeScript a partire da
  un file OpenAPI;
* [PrimeReact](https://primereact.org/): libreria per la creazione di componenti React;
* [PrimeFlex](https://www.primefaces.org/primeflex/): libreria per la creazione di layout CSS;

# Processi di supporto

## Documentazione

### Scopo

Questa sezione contiene le norme per la scrittura dei documenti (e la loro struttura) che riguardano le varie fasi del
progetto.

### Aspettative

Le aspettative del processo di documentazione sono:

* Definire la struttura dei documenti;
* Definire una convenzione comune a tutti i documenti.

### Sviluppo e design

La documentazione è scritta usando il *linguaggio di markup* {g:markdown} nella versione supportata
da [Pandoc](https://pandoc.org/).
Per facilitare la stesura dei documenti sono stati sviluppati dei filtri per {g:pandoc} che permettono l'*embedding* nei
documenti di diagrammi [PlantUML](https://plantuml.com/) e che si occupano della generazione automatica del glossario in
appendice ai documenti.

Il processo di build dei documenti è controllato da una {g:pipeline} di {a:cicd} che controlla che i sorgenti {g:
markdown}
seguendo delle linee guida di stile e formattazione usando [MarkdownLint](https://github.com/DavidAnson/markdownlint),
li compila in {g:pdfa} usando {g:pandoc} e pdfLaTeX e carica i pdf risultanti sia
sul [sito del gruppo](https://sevenelevendevunipd.github.com/docs/) che come artefatto della {a:cicd}.

#### Template

Il template usato per i documenti è una versione modificata
di [eisvogel](https://github.com/Wandmalfarbe/pandoc-latex-template), le modifiche apportate riguardano principalmente
lo stile della prima pagina e il supporto alla generazione semi-automatica del registro delle versioni e del glossario.

#### Nome dei file

La struttura del nome dei file che non sono verbali è la seguente:

* Tutti i nomi dei file iniziano con la lettera minuscola;
* Se il nome comprende più parole, esse vengono separate da un '_'.

#### Prima pagina

La struttura della prima pagina di ogni documento è la seguente (dall'alto verso il basso):

* Titolo;
* Logo: centrato;
* Informazioni sul documento:
  * **Responsabile**: indica il nome del responsabile;
  * **Redattori**: indica chi si è occupato della scrittura del documento;
  * **Verificatori**: indica chi si è occupato della validità del documento;
  * **Uso**: indica se il documento è destinato a uso interno o esterno;
  * **Destinatari**: indica a chi è destinato il documento.
* Sommario.

#### Struttura delle pagine

Ogni pagina è composta da tre parti:

* **Intestazione**:
  * In alto a sinistra è presente il logo;
  * In alto a destra c'è il titolo del documento.
* **Corpo**: a seconda del contenuto della pagina essa viene strutturate tramite **titoli**, **sottotitoli** e
  **contenuti**.
* **Piè di pagina**:
  * In basso a destra è presente il numero della pagina.

#### Glossario

Il documento [Glossario](https://sevenelevendevunipd.github.io/docs/glossario.pdf) contiene tutte le terminologie e
definizioni specifiche del dominio di progetto.
È generato automaticamente da un [filtro Pandoc](https://github.com/sevenelevendevunipd/pandoc_glossary_filter) che usa
le definizioni presenti in un file {g:yaml}. È inoltre presente un glossario separato per gli acronimi generato allo
stesso modo.
Ogni documento ha inoltre, per facilitarne la lettura, in appendice un estratto del glossario contenente solo i termini
usati all'interno del documento stesso.
Ogni occorrenza in un documento di un termine nel glossario è indicata con una *G* al pedice (ad esempio così$_G$). Le
occorrenze di acronimi sono invece indicate con una *A* al pedice (così$_A$).

#### Verbali

I verbali possono essere interni o esterni:

* Interni: riguardano gli incontri tra i componenti del gruppo;
* Esterni: riguardano gli incontri tra i componenti del gruppo insieme a proponenti e/o committenti.

Vengono rinominati con la data del giorno in cui è stato effettuata la riunione (AAAAMMGG.pdf).

#### Registro delle versioni

Il registro delle versioni viene inserito nei documenti che non sono verbali per tenere conto delle modifiche e delle
revisioni effettuate sul documento.

Il registro viene visualizzato sotto forma di tabella avente quattro colonne:

* Versione: a versione del documento è definita da tre numeri "x.y.z" dove:
  * **x** (major): viene incrementato a seconda della rifinitura del documento (es: dopo aver steso una prima intera
    versione grezza);
  * **y** (minor): viene incrementato quando avviene una modifica che non comporta un cambiamento eccessivo. (es:
    aggiunta di paragrafi);
  * **z** (patch): viene incrementato ogni qual volta ci sia stata una modifica poco consistente.
* Data: data di modifica o revisione;
* Autore: chi ha effettuato le modifica o la revisione;
* Cambiamenti: descrizione della modifica effettuata.

#### Indice

In ogni documento al di fuori dei verbali interni è provvisto di un indice:

* In grassetto vengono visualizzati i titoli dei capitoli;
* Indentati sotto i titoli dei capitoli ci sono i titoli dei vari paragrafi che lo compongono.

## Repository

Per organizzare al meglio il lavoro, all'interno dell'organizzazione {g:github}, abbiamo creato
4<!-- sistemare quando avremo un numero di repo finito --> {g:repository}:

* SevenElevenUnipd/**docs** per i documenti; quelli indispensabili saranno:
  * **verbali**: documenti d'incontri interni svolti dal gruppo ed esterni svolti con i proponenti e committenti del
    progetto.
  * **norme_progetto**: in cui viene aggiornato questo file, aggiungendo di volta in volta norme più adatte per il
    workflow del gruppo.
  * **piano_progetto**: documento di analisi sui rischi attesi e della suddivisione del lavoro totale in molteplici
    periodi successivi.
  * **piano_qualifica**: documento inerente alla misurazione del raggiungimento degli obiettivi predisposti e delle
    iniziative di auto-miglioramento.
  * **analisi_requisiti**: documento che fissa i requisiti (espliciti e impliciti) concordati con il proponente, che
    il gruppo si impegna a soddisfare.
  * **glossario**: documento che specifica ogni termine specializzato nel dominio di progetto.
  * **manuale utente**: documento che descrive le modalità di utilizzo del prodotto.
  * **Specifica tecnica**: documento che descrive le tecnologie utilizzate per lo sviluppo del prodotto.
* SevenElevenUnipd/**sl-parser**: componente che interpreta i {g:log}. È comune tra {g:smartlogviewer} e {g:smartlogstatistics}
* SevenElevenUnipd/**sl-viewer-frontend**: componente di {g:frontend} per {g:smartlogviewer}.
* SevenElevenUnipd/**sl-viewer-backend**: componente di {g:backend} per {g:smartlogviewer}.

### Nomenclatura dei commit e dei branch

I branch vengono nominati in questo modo:  **SL-n-nome_branch** <!-- accentrato sotto?-->

* SL: SmartLog;
* n: numero auto incrementale;
* Tutte le lettere di nome_branch devono essere minuscole e se si necessita di separare delle parole deve essere
  utilizzato '_'.

## Project Management

### Scopo

La gestione del progetto avviene tramite {g:youtrack}.
Questo permette di:

* suddividere il lavoro totale in unità da assegnare al singolo individuo.
* impostare delle milestone e baseline da poterle confrontare in futuro.
* avere una visione più semplice dello stato di avanzamento delle attività.
* impostare le ore di lavoro di ogni persona del gruppo per poter analizzare il passo di avanzamento rispetto alle
  tempistiche prestabilite.

### Aspettative

Il project management ha l'obiettivo di mantenere organizzate e tracciabili le attività intraprese dai membri del
gruppo.

### Guidelines

Ogni componente del gruppo una volta finito un'attività, prima d'iniziarne una nuova deve:

* diventare assegnatario della nuova attività che ha intenzione di svolgere.
* spostare lo stato di avanzamento dell'attività che sta svolgendo.
* specificare le ore di lavoro ogni volta che si occupa di quella attività.

## Verifica

### Scopo

La verifica ha come obiettivo la realizzazione di prodotti corretti.
Questo processo prende ciò che è già stato prodotto e lo rielabora in uno stato conforme alle aspettative.
Quindi si applicano processi di analisi e test in modo tale da rilevare la presenza di eventuali errori e correggerli.
Di seguito definiamo come abbiamo deciso di attuare il processo di verifica.

### Aspettative

Le aspettative nel processo di verifica sono:

* Verifica di ciascuna fase;
* Svolgimento di una verifica attenta in modo tale da ottenere un successo in fase di validazione;
* Cercare di automatizzare il èiù possibile le attività svolte durante il processo di verifica;
* Rispetto degli obiettivi di copertura nel piano d i qualifica.

### Descrizione

* **Analisi statica:** processo di valutazione di un sistema o di una sua parte basato sul suo contenuto e
  documentazione. Nell'analisi statica vengono effettuate ispezioni e revisioni e possono essere svolte sia su documenti
  che sul codice
* **Analisi dinamica:** processo di valutazione di un sistema software o di una sua parte basato sul suo comportamento
  in esecuzione. Questo tipo di analisi viene chiamata Testing (viene svolta solamente sul codice).

### Verifica della documentazione

Il processo di verifica della documentazione può essere svolta tramite l'uso di strumenti automatici oppure può essere
eseguita manualmente.
Ci sono due diverse tecniche:

* **Walkthrough:** Il verificatore fa un controllo su tutto il documento alla ricerca di eventuali errori;
* **Inspection:** Il verificatore esegue un controllo mirato nei punti del documento dove c'è più ampia possibilità di
  errore.

### Verifica del codice

* **Analisi statica:** durante la stesura e la verifica del codice si accertano che siano stati rispettati le norme di
  programmazione scelte;
* **Analisi dinamica:** ricerca di errori tramite l'esecuzione del software.

#### Test

I test hanno lo scopo di far emergere eventuali errori o comportamenti inaspettati con l'esecuzione del programma.

##### Classificazione Test di Unità

I test di unità vanno a testare parti del software e vanno descritti durante la progettazione di dettaglio.

I test di unità presenti nel documento *Piano di Qualifica* sono identificati da dei codici, descritti qui:

* TU_VF = test unità viewer per il frontend
* TU_VB = test unità viewer per il backend
* TU_SF = test unità statistics per il frontend
* TU_SB = test unità statistics per il backend
* TU_P = test unità del parser
* NI = non implementato
* I = implementato

##### Classificazione Test di Sistema

I test di sistema sono test che vengono eseguiti su il sistema completamente integrato di tutte le sue parti, e servono per verificare che i requisiti vengano rispettati.

Questi test sono descritti nel documento *Piano di Qualifica* tramite una tabella con tre colonne:

* **Codice**: identifica il test di sistema. Ogni codice ha la forma "TS_(codice del requisito)";
* **Descrizione**: descrizione del test di sistema;
* **Stato**: descrive lo stato del test.

## Validazione

In questa sezione vengono descritte le attività che il gruppo ha deciso di svolgere per la validazione, ovvero il
processo di verifica che viene effettuato per verificare che il prodotto sviluppato soddisfi le aspettative del
committente.

### Scopo

La validazione ha come obiettivo la realizzazione di prodotti che soddisfino le aspettative del cliente.
Questo processo prende ciò che è già stato prodotto e lo rielabora in uno stato conforme alle aspettative.
Quindi si applicano processi di analisi e test in modo tale da rilevare la presenza di eventuali errori e correggerli.
Di seguito definiamo come abbiamo deciso di attuare il processo di validazione.

### Aspettative

Le aspettative nel processo di validazione sono:

* Verificare che il prodotto soddisfi i requisiti riportare nel documento di analisi dei requisiti;
* Dimostrare la correttezza della fase di verifica;
* Dimostrare che il prodotto soddisfa le aspettative del committente.

### Descrizione

Il processo di validazione consiste nell'esaminare il prodotto sviluppato per verificare che rispetti i requisiti e le
aspettative del committente. È poi il responsabile di progetto che ha la responsabilità di controllare i risultati
decidendo se:

* Accettazione del prodotto;
* Rifiuto del prodotto con richiesta di nuova verifica.

# Processi organizzativi

## Scopo

Lo scopo di questa sezione è quello di creare delle regole per il coordinamento tra i membri del gruppo.

## Aspettative

Le aspettative di questa sezione sono:

* Ottenere un'organizzazione efficace;
* Way of working efficace;
* Controllo delle spese;
* Equa distribuzione dei ruoli.

## Comunicazione

* Per le comunicazioni interne sono stati creati:
  * Un gruppo {g:telegram} per scambio d'informazioni veloci;
  * Un server {g:discord} per riunioni interne nel caso in cui non fosse possibile trovarsi di persona.
* Per le comunicazioni esterne con l'azienda:
  * Gli incontri vengono fissati tramite mail (anche lo scambio asincrono d'informazioni avviene tramite mail);
  * Le video conferenze vengono effettuate tramite {g:teams}.

## Rotazione dei ruoli

I ruoli verranno cambiati con una cadenza periodica in modo tale che ogni membro del gruppo possa ricoprire ogni tipo di
ruolo in maniera equa e cercando di rispettare le tempistiche previste.

# Standard ISO/IEC 12207

ISO/IEC 12207 è uno standard internazionale che definisce un modello per il ciclo di vita del software, ovvero il percorso che un prodotto software segue dal suo concepimento all'eliminazione. Questo standard è stato sviluppato con l'obiettivo di aiutare le organizzazioni a gestire in modo efficace i progetti software, fornendo una struttura per la pianificazione, il monitoraggio e il controllo delle attività di sviluppo software.
I processi sono divisi in tre categorie:

* Processi primari: attività direttamente legate allo sviluppo del software;
* Processi di supporto: attività riguardanti la gestione dei documenti e il controllo qualità;
* Processi organizzativi: attività che supportano l'organizzazione del progetto come la gestione delle risorse e gli aspetti manageriali.

## Processi primari

### Acquisizione

Questo processo riguarda l'acquisizione di software o servizi correlati. Nelle fasi iniziali del progetto, il team di progetto deve definire i requisiti di acquisizione, valutare le opzioni disponibili e scegliere il fornitore più adatto per soddisfare le esigenze del progetto.

### Fornitura

Questo processo riguarda la fornitura di software o servizi correlati. Il team di progetto deve definire i requisiti di fornitura, identificare i fornitori potenziali e valutare le loro offerte per scegliere il fornitore più adatto per soddisfare le esigenze del progetto.

### Sviluppo

Questo processo riguarda la creazione di nuovi prodotti software o la modifica di quelli esistenti. Il team di sviluppo deve definire i requisiti del software, progettare l'architettura del sistema, sviluppare il codice, testare il software e documentare il processo di sviluppo.

### Esercizio

Questo processo riguarda l'utilizzo del software in un ambiente operativo. Il team di progetto deve installare e configurare il software nell'ambiente operativo, fornire supporto agli utenti finali e monitorare le prestazioni del software per garantire che soddisfi le aspettative degli utenti finali.

### Manutenzione

Questo processo riguarda la modifica del software esistente per correggere eventuali errori o migliorare le sue prestazioni. Il team di progetto deve valutare i problemi segnalati dagli utenti finali, sviluppare una soluzione per correggere il problema, testare la soluzione e implementarla nel software esistente.

## Processi di supporto

### Gestione della documentazione

Questo processo riguarda la produzione e la gestione della documentazione del software. Il team di progetto deve definire quali documenti sono necessari per il progetto e il loro formato. La documentazione deve essere prodotta in modo coerente e gestita in modo da garantire che sia sempre aggiornata e facilmente accessibile a tutti i membri del team di progetto.

### Gestione della configurazione

Questo processo riguarda la gestione delle modifiche al software e la gestione delle versioni del software. Il team di progetto deve definire una procedura per la gestione delle modifiche al software, che includa l'identificazione, la valutazione, l'approvazione e l'implementazione delle modifiche. Inoltre, il team deve definire una procedura per la gestione delle versioni del software, che includa la registrazione di tutte le versioni del software prodotte durante il ciclo di vita del progetto.

### Garanzia della qualità

Questo processo riguarda la definizione e l'implementazione di attività per garantire la qualità del software. Il team di progetto deve definire una procedura per la garanzia della qualità, che includa attività di verifica e validazione per garantire che il software sia conforme ai requisiti specificati e che rispetti gli standard di qualità richiesti dal progetto.

### Verifica

Questo processo riguarda la verifica del software durante il ciclo di vita del progetto. Il team di progetto deve definire attività di verifica per garantire che il software sia conforme ai requisiti specificati, che sia coerente con l'architettura definita e che sia corretto e affidabile.

### Validazione

Questo processo riguarda la validazione del software rispetto alle esigenze degli utenti finali. Il team di progetto deve definire attività di validazione per garantire che il software soddisfi le esigenze degli utenti finali e che sia facile da utilizzare.

### Revisione congiunta

Questo processo riguarda la validazione del software rispetto alle esigenze degli utenti finali. Il team di progetto deve definire attività di validazione per garantire che il software soddisfi le esigenze degli utenti finali e che sia facile da utilizzare.

### Audit

Questo processo riguarda l'analisi critica del software da parte di un auditor esterno. Il team di progetto deve definire una procedura per l'audit del software, che includa l'identificazione degli obiettivi dell'audit, la definizione delle attività di audit, l'identificazione dei criteri di valutazione e la presentazione dei risultati dell'audit.

### Risoluzione dei problemi

Questo processo riguarda la gestione dei problemi relativi al software. Il team di progetto deve definire una procedura per la risoluzione dei problemi, che includa la registrazione dei problemi, l'analisi delle cause e l'implementazione di azioni correttive per risolvere i problemi.

### Usabilità

Questo processo riguarda l'usabilità del prodotto software e consiste nella definizione dei requisiti di usabilità, la progettazione e valutazione dell'interfaccia utente, la conduzione di test di usabilità e la valutazione dei risultati dei test. Il team di progetto deve definire una procedura per l'usabilità del prodotto, che includa l'identificazione dei requisiti di usabilità, la definizione del design dell'interfaccia utente, la conduzione dei test di usabilità e la definizione delle modalità di valutazione dei risultati.

### Valutazione del prodotto

Questo processo riguarda la valutazione del prodotto software e consiste nella definizione dei criteri di valutazione, l'identificazione delle modalità di valutazione e la valutazione dei risultati della valutazione. Il team di progetto deve definire una procedura per la valutazione del prodotto, che includa l'identificazione dei criteri di valutazione, la definizione delle modalità di valutazione e la definizione delle responsabilità dei membri del team in relazione alla valutazione del prodotto.

## Processi organizzativi

### Gestione dell'organizzazione

Questo processo riguarda la gestione dell'organizzazione del progetto. Il team di progetto deve definire una procedura per la gestione dell'organizzazione, che includa l'identificazione delle responsabilità dei membri del team, la definizione delle comunicazioni interne ed esterne, l'organizzazione degli incontri del team e la definizione delle modalità di gestione del rischio.

### Gestione delle infrastrutture

Questo processo riguarda la gestione delle infrastrutture necessarie per lo sviluppo del software. Il team di progetto deve definire una procedura per la gestione delle infrastrutture, che includa l'identificazione delle infrastrutture necessarie, la definizione delle modalità di gestione e manutenzione delle infrastrutture e la definizione delle responsabilità dei membri del team in relazione alle infrastrutture.

### Miglioramento del processo organizzativo

Questo processo riguarda l'identificazione di opportunità di miglioramento del processo organizzativo del progetto. Il team di progetto deve definire una procedura per il miglioramento del processo organizzativo, che includa l'identificazione delle opportunità di miglioramento, la definizione delle attività necessarie per il miglioramento e la definizione delle responsabilità dei membri del team in relazione al miglioramento del processo organizzativo.

### Formazione del personale

Questo processo riguarda la formazione del personale del progetto. Il team di progetto deve definire una procedura per la formazione del personale, che includa l'identificazione delle competenze necessarie per il progetto, la definizione del piano di formazione, la definizione delle modalità di formazione e la valutazione dell'efficacia del programma di formazione.

# Standard ISO/IEC 9126

## Modello della qualità del software

Il modello della qualità del software è un framework per la valutazione della qualità del software che consiste in quattro caratteristiche principali: funzionalità, affidabilità, usabilità ed efficienza. Ogni caratteristica è divisa in sotto-caratteristiche che a loro volta sono supportate da una serie di attributi di qualità. Questo modello fornisce un approccio strutturato alla valutazione della qualità del software, che può essere utilizzato come base per la definizione di requisiti di qualità del software e per la valutazione della qualità del software prodotto.

## Qualità interna

La qualità interna si riferisce alla qualità del software durante lo sviluppo, prima che il prodotto finale sia rilasciato. La qualità interna è influenzata dalla struttura interna del software, dalla sua leggibilità e dalla facilità di manutenzione. La qualità interna può essere valutata attraverso la revisione del codice sorgente, la valutazione della documentazione e la misurazione di metriche specifiche.

### Metriche per la qualità interna

Le metriche interne sono applicabili al prodotto durante le fasi di progettazione e codifica. Sono anche chiamate "misure statiche". Esse consentono di prevedere il livello di qualità esterna ed in uso del prodotto finale, in quanto gli attributi interni influenzano quelli esterni e quelli in uso. Utilizzando le metriche interne, è possibile individuare eventuali problemi che potrebbero compromettere la qualità finale del prodotto prima che questo sia realizzato e diventi eseguibile.

## Qualità esterna

La qualità esterna si riferisce alla qualità del software dopo che il prodotto finale è stato rilasciato. La qualità esterna è influenzata dalla capacità del software di soddisfare i requisiti funzionali e dalle prestazioni del software in un ambiente operativo reale. La qualità esterna può essere valutata attraverso l'analisi delle prestazioni, la valutazione degli errori e dei problemi segnalati dagli utenti e l'utilizzo di metriche specifiche.

### Metriche per la qualità esterna

Le metriche esterne sono utilizzate per valutare il comportamento del prodotto durante la sua esecuzione, attraverso l'osservazione e l'operatività in base agli obiettivi stabiliti. Queste metriche sono scelte sulla base delle caratteristiche che il prodotto dovrà dimostrare durante il suo utilizzo e sono fondamentali per valutare la qualità del prodotto finale.

## Qualità in uso

La qualità in uso si riferisce alla qualità del software in un ambiente operativo reale, in base all'esperienza degli utenti che utilizzano il software. La qualità in uso può essere valutata attraverso l'analisi dell'usabilità del software, la soddisfazione degli utenti e l'utilizzo di metriche specifiche.

### Metriche per la qualità in uso

Le metriche per la qualità in uso sono una serie di metriche che vengono utilizzate per valutare la qualità del software in base all'esperienza degli utenti. Le metriche possono essere utilizzate per misurare l'usabilità del software, la soddisfazione degli utenti, l'efficienza e l'efficacia del software e altri fattori relativi all'esperienza dell'utente. Le metriche per la qualità in uso possono essere utilizzate per migliorare la qualità del software e per identificare le aree in cui il software deve essere migliorato.

# Metriche della qualità

## Metriche per la qualità del processo

Queste metriche sono state scelte dal gruppo per misurare il livello di qualità del processo, in modo da valutare l'efficacia del lavoro svolto e di conseguenza migliorare il prodotto finale.

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

## Metriche per la qualità do prodotto

La presente sezione espone le metriche selezionate dal gruppo SevenEleven
per misurare il raggiungimento degli obiettivi di qualità del prodotto.

### QPD_1: Indice di Gulpease (IG)

 Indice che riporta il grado di leggibilità di un testo redatto in lingua italiana . La formula adottata è la seguente:

$$GULP= {89+}\frac{ 300  *(n_{frasi}) - 10*(n_{lettere}) }{n_{parole}}$$

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

### QPD_7 Statement Coverage (SC)

Indica che ciascun istruzione del codice sia stata eseguita almeno una volta.

Strumenti utilizzati:

* {g:python}
