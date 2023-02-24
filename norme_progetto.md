---
title: "Norme di progetto"
date: "03/11/2022"
responsabile: "Enrik Rucaj"
redattori: ["Andrea Auletta, Davide Vitagliano, Augusto Zanellato"]
verificatori: ["Mattia Brunello", "Antonio Stan", "Nicola Cecchetto"]
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
    cambiamenti: Aggiunto Piano di Progetto e Strumenti (in Fornitura)
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
  v1.0.0:
    autore: Enrik Rucaj
    data: 20/02/2023
    cambiamenti: Approvato per il rilascio
...

# Introduzione

## Scopo del documento

L'obiettivo di questo documento è quello di dare delle norme per poter lavorare in maniera uniforme.
Il documento verrà aggiornato con costanza durante tutte le fasi del progetto.

## Scopo del capitolato

### C5 - SmartLog

Al giorno d'oggi vista l'espansione e l'aumento del numero delle apparecchiature per il supporto all'energia elettrica nelle infrastrutture critiche, la gestione di esse sta diventando sempre più complessa e richiede una continua analisi per l'ottimizzazione dei consumi e rivelazione degli errori. Per questo motivo i dispositivi Socomec riescono a registrare e salvare su un file di {g:log} tutti gli eventi che accadono, in modo da:

* poter analizzare, trovare e risolvere eventuali problemi.
* poter estrarre informazioni statistiche da un insieme di file di {g:log}.

## Riferimenti

### Riferimenti normativi

* [Regolamento del progetto didattico](https://www.math.unipd.it/~tullio/IS-1/2022/Dispense/PD02.pdf)

* [Capitolato d'appalto C5 - SmartLog](https://www.math.unipd.it/~tullio/IS-1/2022/Progetto/C5.pdf)

# Processi primari

## Fornitura

### Scopo

Per il processo di fornitura verranno elencati tutti gli strumenti e i documenti necessari per lo svolgimento del progetto.

### Strumenti

L'unico strumento utilizzato (per la fornitura) dal team è {g:youtrack}. Utilizzato sia per creare grafici di {g:gantt} che per gestire le {g:issue} (*Vedasi la parte di Project Management in Processi di Supporto*).

### Documenti

I documenti redatti in questa fase sono due: *Piano di Qualifica* e *Piano di Progetto*

#### Piano di Qualifica

Il piano di qualifica viene redatto dal verificatore, in quanto dovrà accertarsi del funzionamento del prodotto e quindi dei vari test da effettuare.
Il documento sarà composto dalle seguenti parti:
<!-- portare avanti quando facciamo il piano di qualifica-->

#### Piano di Progetto

Il piano di progetto viene redatto unicamente dal responsabile del progetto, in quanto è l'unico che abbia il compito di stabilire delle tempistiche e accertare il corretto avanzamento del progetto nell'intero periodo di sviluppo.
Il documento sarà composto dalle seguenti parti:

* *Analisi dei Rischi* = suddivisa da una parte in cui i rischi vengono identificati e dall'altra in cui vengono mitigati. I rischi da identificare vengono suddivisi in:
  * Rischi tecnologici
  * Rischi organizzativi
  * Rischi dei requisiti
* *Modello di Sviluppo*
* *Pianificazione* = raggruppata per varie fasi in cui vi è indicato:
  * Il periodo in cui viene svolto
  * I ruoli coinvolti
  * Le attività da svolgere
  * Il preventivo fatto
* *Consuntivo di periodo* = raggruppata per varie fasi in cui vi è indicato:
  * Il consuntivo
  * Le motivazioni delle variazioni (se ci sono)
  * Considerazioni

## Sviluppo

### Analisi dei requisiti

#### Scopo

Questa sezione contiene le norme usate per la stesura del documento *Analisi dei requisiti*. Nello specifico, contiene la spiegazione dei codici usati per identificare i requisiti.

#### Casi d'uso

I casi d'uso descrivono l'interazione del sistema con le entità esterne (al sistema) che la usano (ad esempio l'utente/operatore). Sono utili ad esprimere varie sequenze di azioni che hanno in comune uno scopo finale.

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

  Visto che il progetto si occupa di due applicazioni distinte, ai codici dei requisiti funzionali si aggiunge all'inizio **V** se è un requisito per {g:smartlogviewer}, oppure **S** se è un requisito per {g:smartlogstatistics}.

  Ogni requisito ha alla fine del codice un numero puntato.

* **Descrizione**: breve descrizione del requisito;
* **Classificazione**: importanza attribuita al requisito(obbligatorio, opzionale, desiderabile);
* **Fonte**: da dove viene tratto il requisito.

# Processi di supporto

## Documentazione

### Scopo

Questa sezione contiene le norme per la scrittura dei documenti (e la loro struttura) che riguardano le varie fasi del progetto.

### Sviluppo e design

La documentazione è scritta usando il *linguaggio di markup* {g:markdown} nella versione supportata da [Pandoc](https://pandoc.org/). Per facilitare la stesura dei documenti sono stati sviluppati dei filtri per {g:pandoc} che permettono l'*embedding* nei documenti di diagrammi [PlantUML](https://plantuml.com/) e che si occupano della generazione automatica del glossario in appendice ai documenti.

Il processo di build dei documenti è controllato da una pipeline di {a:cicd} che controlla che i sorgenti {g:markdown} seguendo delle linee guida di stile e formattazione usando [MarkdownLint](https://github.com/DavidAnson/markdownlint), li compila in {g:pdfa} usando {g:pandoc} e pdfLaTeX e carica i pdf risultanti sia sul [sito del gruppo](https://sevenelevendevunipd.github.com/docs/) che come artefatto della {a:cicd}.

<!-- TO DO: Definire nomenclatura documenti -->

#### Template

Il template usato per i documenti è una versione modificata di [eisvogel](https://github.com/Wandmalfarbe/pandoc-latex-template), le modifiche apportate riguardano principalmente lo stile della prima pagina e il supporto alla generazione semi-automatica del registro delle versioni e del glossario.

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

* **Corpo**: a seconda del contenuto della pagina essa viene strutturate tramite **titoli**, **sottotitoli** e **contenuti**.

* **Piè di pagina**:
  * In basso a destra è presente il numero della pagina.

#### Glossario

Il documento [Glossario](https://sevenelevendevunipd.github.io/docs/glossario.pdf) contiene tutte le terminologie e definizioni specifiche del dominio di progetto.
È generato automaticamente da un [filtro Pandoc](https://github.com/sevenelevendevunipd/pandoc_glossary_filter) che usa le definizioni presenti in un file {g:yaml}. È inoltre presente un glossario separato per gli acronimi generato allo stesso modo.
Ogni documento ha inoltre, per facilitarne la lettura, in appendice un estratto del glossario contenente solo i termini usati all'interno del documento stesso.
Ogni occorrenza in un documento di un termine nel glossario è indicata con una *G* al pedice (ad esempio così$_G$). Le occorrenze di acronimi sono invece indicate con una *A* al pedice (così$_A$).

### Verbali

I verbali possono essere interni o esterni:

* Interni: riguardano gli incontri tra i componenti del gruppo;
* Esterni: riguardano gli incontri tra i componenti del gruppo insieme a proponenti e/o committenti.

Vengono rinominati con la data del giorno in cui è stato effettuata la riunione (AAAAMMGG.pdf).

### Altri documenti

#### Registro delle versioni

Il registro delle versioni viene inserito nei documenti che non sono verbali per tenere conto delle modifiche e delle revisioni effettuate sul documento.

Il registro viene visualizzato sotto forma di tabella avente quattro colonne:

* Versione: a versione del documento è definita da tre numeri "x.y.z" dove:
  * **x** (major): viene incrementato a seconda della rifinitura del documento (es: dopo aver steso una prima intera versione grezza);
  * **y** (minor): viene incrementato quando avviene una modifica che non comporta un cambiamento eccessivo. (es: aggiunta di paragrafi);
  * **z** (patch): viene incrementato ogni qual volta ci sia stata una modifica poco consistente.
* Data: data di modifica o revisione;
* Autore: chi ha effettuato le modifica o la revisione;
* Cambiamenti: descrizione della modifica effettuata.

#### Indice

In ogni documento al di fuori dei verbali interni è provvisto di un indice:

* In grassetto vengono visualizzati i titoli dei capitoli;
* Indentati sotto i titoli dei capitoli ci sono i titoli dei vari paragrafi che lo compongono.

## Repository

Per organizzare al meglio il lavoro, all'interno dell'organizzazione {g:github}, abbiamo creato 1<!-- sistemare quando avremo un numero di repo finito --> {g:repository}:

* SevenElevenUnipd/**docs** per i documenti; quelli indispensabili saranno:
  * **verbali**: documenti di incontri interni svolti dal gruppo ed esterni svolti con i proponenti e committenti del progetto.
  * **norme_progetto**: in cui viene aggiornato questo file, aggiungendo di volta in volta norme più adatte per il workflow del gruppo.
  * **piano_progetto**: documento di analisi sui rischi attesi e della suddivisione del lavoro totale in molteplici periodi successivi.
  * **piano_qualifica**: documento inerente alla misurazione del raggiungimento degli obiettivi predisposti e delle iniziative di auto-miglioramento.
  * **analisi_requisiti**: documento che fissa i requisiti (espliciti ed impliciti) concordati con il proponente, che il gruppo si impegna a soddisfare.
  * **glossario**: documento che specifica ogni termine specializzato nel dominio di progetto.

### Nomenclatura dei commit e dei branch

I branch vengono nominati in questo modo:  **SL-n-nome_branch** <!-- accentrato sotto?-->

* SL: SmartLog;
* n: numero auto incrementale;
* Tutte le lettere di nome_branch devono essere minuscole e se si necessita di separare delle parole deve essere utilizzato '_'.

## Project Management

### Scopo

La gestione del progetto avviene tramite {g:youtrack}.
Questo permette di:

* suddividere il lavoro totale in unità da assegnare al singolo individuo.
* impostare delle milestone e baseline da poterle confrontare in futuro.
* avere una visione più semplice dello stato di avanzamento delle attività.
* impostare le ore di lavoro di ogni persona del gruppo per poter analizzare il passo di avanzamento rispetto alle tempistiche prestabilite.

### Guidelines

Ogni componente del gruppo una volta finito un'attività, prima di iniziarne una nuova deve:

* diventare assegnatario della nuova attività che ha intenzione di svolgere.
* spostare lo stato di avanzamento dell'attività che sta svolgendo.
* specificare le ore di lavoro ogni volta che si occupa di quella attività.

# Processi organizzativi

## Comunicazione

* Per le comunicazioni interne sono stati creati:
  * Un gruppo {g:telegram} per scambio di informazioni veloci;
  * Un server {g:discord} per riunioni interne nel caso in cui non fosse possibile trovarsi di persona.
* Per le comunicazioni esterne con l'azienda:
  * Gli incontri vengono fissati tramite mail (anche lo scambio asincrono di informazioni avviene tramite mail);
  * Le video conferenze vengono effettuate tramite {g:teams}.

## Rotazione dei ruoli

I ruoli verranno cambiati con una cadenza periodica in modo tale che ogni membro del gruppo possa ricoprire ogni tipo di ruolo in maniera equa e cercando di rispettare le tempistiche previste.
