---
title: "Norme di progetto"
author: [Seven Eleven Dev]
date: "03/11/2022"
lang: "en"
titlepage: true
pdfa: true
responsabile: "Augusto Zanellato"
redattori: "Andrea Auletta"
verificatori: ["Mattia Brunello", "Antonio Stan", "Nicola Cecchetto", "Enrik Rucaj", "Davide Vitagliano"]
abstract: "Vengono definite le prime norme di progetto."
docusage: "Interno"
versione: 0.0.1
toc: true
toc-own-page: true
...

<!--
| Versione | Data       | Descrizione                                            |
|----------|------------|--------------------------------------------------------|
| 0.0.2    | 22/11/2022 | Aggiunta sezioni "Analisi dei requisiti" e "Requisiti" |
| 0.0.1    | 03/11/2022 | Stesura della documentazione                           |
-->

# Introduzione

## Scopo del documento

L'obiettivo di questo documento è quello di dare delle norme per poter lavorare in maniera uniforme.
Il documento verrà aggiornato con costanza durante tutte le fasi del progetto.

## Scopo del capitolato

### **C5 - SmartLog**

Al giorno d'oggi vista l'espansione e l'aumento del numero delle apparecchiature per il supporto all'energia elettrica nelle infrastrutture critiche, la gestione di esse sta diventando sempre più complessa e richiede una continua analisi per l'ottimizzazione dei consumi e rivelazione degli errori. Per questo motivo i dispositvi Socomec riescono a registrare e salvare su un file di log tutti gli eventi che accadono, in modo da:

* poter analizzare, trovare e risolvere eventuali problemi.
* poter estrarre informazioni statistiche da un insieme di file di log.

## Glossario

Il documento **"Glossario"** contiene tutte le terminologie e definizioni specifiche del dominio di progetto.  

## Riferimenti

### Riferimenti normativi

* Regolamento del progetto didattico:

<https://www.math.unipd.it/~tullio/IS-1/2022/Dispense/PD02.pdf>

* Capitolato d'appalto C5 - SmartLog:

<https://www.math.unipd.it/~tullio/IS-1/2022/Progetto/C5.pdf>

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

<!-- TO DO: Definire nomenclatura documenti -->

#### Template

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

### Verbali

I verbali possono essere interni o esterni:

* Interni: riguardano gli incontri tra i componenti del gruppo;
* Esterni: riguardano gli incontri tra i componenti del gruppo insieme a proponenti e/o committenti.

### Altri documenti

#### Registro delle modifiche

## Repository

### Scopo

### Nomenclatura dei commit e dei branch
