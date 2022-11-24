---
title: "Norme di progetto"
date: "03/11/2022"
responsabile: "Augusto Zanellato"
redattori: "Andrea Auletta"
verificatori: ["Mattia Brunello", "Antonio Stan", "Nicola Cecchetto", "Enrik Rucaj", "Davide Vitagliano"]
abstract: "Vengono definite le prime norme di progetto."
docusage: "Interno"
toc: true
versioni:
  v0.0.1:
    autore: Mattia Brunello
    data: 10/11/2022
    cambiamenti: Prima stesura
  v0.0.2:
    autore: Andrea Auletta
    data: 18/11/2022
    cambiamenti: Aggiunto paragrafo riguardante il repository
  v0.0.3:
    autore: Nicola Cecchetto
    data: 20/11/2022
    cambiamenti: Aggiunta sezione analisi dei requisiti
  v0.0.4:
    autore: Augusto Zanellato
    data: 24/11/2022
    cambiamenti: Aggiunta sezione riguardante workflow documenti
...

# Introduzione

## Scopo del documento

L'obiettivo di questo documento è quello di dare delle norme per poter lavorare in maniera uniforme.
Il documento verrà aggiornato con costanza durante tutte le fasi del progetto.

## Scopo del capitolato

### C5 - SmartLog

Al giorno d'oggi vista l'espansione e l'aumento del numero delle apparecchiature per il supporto all'energia elettrica nelle infrastrutture critiche, la gestione di esse sta diventando sempre più complessa e richiede una continua analisi per l'ottimizzazione dei consumi e rivelazione degli errori. Per questo motivo i dispositvi Socomec riescono a registrare e salvare su un file di log tutti gli eventi che accadono, in modo da:

* poter analizzare, trovare e risolvere eventuali problemi.
* poter estrarre informazioni statistiche da un insieme di file di log.

## Riferimenti

### Riferimenti normativi

* [Regolamento del progetto didattico](https://www.math.unipd.it/~tullio/IS-1/2022/Dispense/PD02.pdf)

* [Capitolato d'appalto C5 - SmartLog](https://www.math.unipd.it/~tullio/IS-1/2022/Progetto/C5.pdf)

# Processi primari

## Fornitura

<!-- TODO: Capire fornitura-->

## Sviluppo

### Analisi dei requisiti

#### Scopo

Questa sezione contiene le norme usate per la stesura del documento *Analisi dei requisiti*. Nello specifico, contiene la spiegazione dei codici usati per identificare i requisiti.

<!-- TO DO: Aggiungere ovviamente i codici per i casi d'uso quando verranno fatti -->

#### Requisiti

Ogni requisito è identificato da un codice alfanumerico. Esistono:

* Requisiti funzionali, identificati con **RF**;
* Requisiti di qualità, identificati con **RQ**;
* Requisiti di vincoli, identificati con **RV**.

<!-- TO DO: decidere se ha senso mettere requisiti sistemi operativi e prestazionali -->

Il progetto si occupa di due applicazioni distinte, e quindi si aggiunge all'inizio del codice **V** se è un requisito per SmartLogViewer, oppure **S** se è un requisito per SmartLogStatistics. Questo non vale per i requisiti di qualità, in quanto si riferiscono ad entrambe le applicazioni.

Ogni requisito ha alla fine del codice un numero puntato.

<!-- TO DO: decidere se ha senso tenere separati requisiti di vincoli -->

# Processi di supporto

## Documentazione

### Scopo

Questa sezione contiene le norme per la scrittura dei documenti (e la loro struttura) che riguardano le varie fasi del progetto.

### Sviluppo e design

La documentazione è scritta usando il *linguaggio di markup* **Markdown** nella versione supportata da [Pandoc](https://pandoc.org/). Per facilitare la stesura dei documenti sono stati sviluppati dei filtri per Pandoc che permettono l'*embedding* nei documenti di diagrammi [PlantUML](https://plantuml.com/) e che si occupano della generazione automatica del glossario in appendice ai documenti.

Il processo di build dei documenti è controllato da una pipeline di {a:cicd} che controlla che i sorgenti Markdown seguando delle linee guida di stile e formattazione usando [MarkdownLint](https://github.com/DavidAnson/markdownlint), li compila in {g:pdfa} usando Pandoc e pdfLaTeX e carica i pdf risultanti sia sul [sito del gruppo](https://sevenelevendevunipd.github.com/docs/) che come artefatto della {a:cicd}.

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

<!--  Data emanazione e versioning nella tabella sotto?  -->
#### Struttura delle pagine

Ogni pagina è composta da tre parti:

* **Intestazione**:
  * In alto a sinistra è presente il logo;
  * In alto a destra c'è il titolo del documento.

* **Corpo**: a seconda del contenuto della pagina essa viene strutturate tramite **titoli**, **sottotitoli** e **contenuti**.

* **Piè di pagina**:
  * In basso a destra è presente il numero della pagina.

#### Indice

<!--  ??? -->

#### Glossario

Il documento [Glossario](https://sevenelevendevunipd.github.io/docs/glossario.pdf) contiene tutte le terminologie e definizioni specifiche del dominio di progetto.
È generato automaticamente da un [filtro Pandoc](https://github.com/sevenelevendevunipd/pandoc_glossary_filter) che usa le definizioni presenti in un file {g:yaml}. È inoltre presente un glossario separato per gli acronimi generato allo stesso modo.
Ogni documento ha inoltre, per facilitarne la lettura, in appendice un estratto del glossario contenente solo i termini usati all'interno del documento stesso.
Ogni occorrenza in un documento di un termine nel glossario è indicata con una *G* al pedice (ad esempio così$_G$). Le occorrenze di acronimi sono invece indicate con una *A* al pedice (così$_A$).

### Verbali

I verbali possono essere interni o esterni:

* Interni: riguardano gli incontri tra i componenti del gruppo;
* Esterni: riguardano gli incontri tra i componenti del gruppo insieme a proponenti e/o committenti.

### Altri documenti

#### Registro delle modifiche

## Repository

### Scopo

### Nomenclatura dei commit e dei branch
