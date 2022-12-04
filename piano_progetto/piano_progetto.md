---
title: "Piano di Progetto"
date: "22/11/2022"
responsabile: "Augusto Zanellato"
redattori: "Davide Vitagliano"
verificatori: ["Andrea Auletta", "Nicola Cecchetto", "Enrik Rucaj", "Antonio Stan"]
versioni:
  0.0.1:
    autore: Davide Vitagliano
    data: 22/11/2022
    cambiamenti: Prima stesura e struttura
  0.1.0:
    autore: Davide Vitagliano
    data: 04/12/2022
    cambiamenti: Aggiunto paragrafo di Analisi dei Rischi

...

# Introduzione

## Scopo del documento

Il fine del seguente documento è quello di fornire un prospetto riguardante la pianificazione e le modalità attraverso
cui verrà sviluppato il progetto. All’interno vengono inoltre riportate le problematiche che il gruppo potrebbe
incontrare lungo tutto il periodo. Al termine sono presenti i preventivi e consuntivi di periodo.
La formulazione segue le regole esposte dal documento *Norme di progetto*

## Scopo del prodotto

Il progetto prevede di sviluppare due applicazioni:

* SmartLogViewer: Permette la visualizzazione di un singolo file di log evidenziandone alcune caratteristiche e fornendo
  dei grafici sull’andamento di alcuni valori;
* SmartLogStatistics: Permette la visualizzazione aggregata di una serie di
  file di log mostrando oltre ai dati visibili su SmartLogViewer anche delle statistiche come ad esempio la correlazione
  di alcuni eventi mediante l’uso di grafici;

## Glossario

Alcuni termini potrebbero non risultare consoni al linguaggio usuale quindi questi ultimi vengono inseriti nel
documento *Glossario* assieme alle loro definizioni.

## Rifermenti

<!-- riferimenti al capitolato e alle slide-->

## Scadenze

La pianificazione presentata in questo documento si basa sulle scadenze che il gruppo Seven Eleven si impegna a
rispettare, esse sono riassunte nella seguente tabella.

| **Revisione**                        | **Acronimo** | **Data**   |
| ------------------------------------ |:------------:|:----------:|
| Requirements and Technology Baseline | RTB          | 28/02/2023 |
| Product Baseline                     | PB           | 09/04/2023 |
| Customer Acceptance                  | CA           | 30/04/2023 |

# Analisi dei Rischi

Questa sezione presenta un’analisi approfondita dei possibili rischi in cui si potrebbe incorrere durante l’avanzamento
del progetto e il modo in cui devono venire mitigati.

## Identificazione Rischi

### Rischi Tecnologici

#### RT1 - Inesperienza tecnologica

* Descrizione: Difficoltà di utilizzo di tecnologie sconosciute ai membri del gruppo;
* Identificazione: i membri del gruppo, in particolare il **responsabile**, dovranno identificare le tecnologie
  sconosciute.

### Rischi Organizzativi

#### RO1 - Impegni personali

* Descrizione: Esistenza d'impegni in conflitto con le tempistiche degli incontri o delle scadenze del lavoro;
* Identificazione: I membri del gruppo dovranno comunicare con adeguato anticipo i suddetti impegni.

#### RO2 - Distribuzione disomogenea

* Descrizione: Esistenza di una disparità del carico di lavoro che può portare a rallentamenti;
* Identificazione: Ogni membro del gruppo dovrà dichiarare la suddetta disparità se riterrà che superi le proprie
  capacità.

#### RO3 - Costo delle attività

* Descrizione: Esistenza di una stima errata dei costi di un'attività, dovuta all'inesperienza del gruppo;
* Identificazione: Ogni membro del gruppo dovrà comunicare al **responsabile** le discrepanze riscontrare rispetto alla
  pianificazione dei costi.

### Rischi Interpersonali

#### RI1 - Inesperienza del gruppo

* Descrizione: Poca esperienza in un rapporto di lavoro cliente-fornitore;
* Identificazione: Il **responsabile** dovrà prestare attenzione alle difficoltà dei membri del gruppo.

#### RI2 - Rapporti interni

* Descrizione: Esistenza di un conflitto di opinione tra i membri del gruppo che non trova a un punto d'intesa;
* Identificazione: Il **responsabile** sarà incaricato di gestire il gruppo.

### Rischi dei Requisiti

#### RR1 - Incomprensione dei requisiti

* Descrizione: Difficoltà nella comprensione dei requisiti che può portare a un grave rallentamento nell'avanzamento
  del progetto;
* Identificazione: L'azienda proponente dovrà comunicare al gruppo la bontà del lavoro svolto.

#### RR2 - Modifica dei requisiti

* Descrizione: L'azienda proponente o il gruppo decide di modificare alcuni dei requisiti iniziali, portando a una
  modifica della visione di progetto;
* Identificazione: L'azienda o il gruppo dovranno comunicare la volontà del cambiamento all'altra parte.

#### RR3 - Proponente poco presente

* Descrizione: I contatti con l'azienda risultano essere poco frequenti o poco utili;
* Identificazione: L'azienda dovrà comunicare con adeguato anticipo le disponibilità d'incontro.

## Mitigazione Rischi

* RT1: I membri del gruppo devono imparare a usare le tecnologie sconosciute;
* RO1: Il **responsabile** deve riorganizzare il lavoro per coprire il più possibile i vuoti;
* RO2: Deve essere organizzata una nuova divisione del lavoro più equa;
* RO3: Il **responsabile** deve ridistribuire le attività di lavoro in modo da ridurre il più possibile i costi in
  eccesso;
* RI1: Ogni membro del gruppo deve adoperarsi per limitare il più possibile le lacune;
* RI2: Il **responsabile** dovrà mediare tra le parti per trovare un punto d'incontro o far scegliere alla maggioranza
  dei membri del gruppo;
* RR1: Non iniziare la progettazione finché tutti i membri del gruppo non hanno chiari i requisiti;
* RR2: Modificare l'*Analisi dei Requisiti*;
* RR3: Insistere nel pianificare un incontro con l'azienda proponente e cercare autonomamente di capire i passi
  successivi per avanzare nel progetto.

# Modello di Sviluppo

Il gruppo ha deciso di lavorare adottando un approccio agile integrando il **modello Kanban** con alcuni elementi del
**modello Scrum**.
<!-- aggiungere altro -->
I requisiti vengono classificati in base alla loro criticità. In questo modo, quelli più importanti vengono trattati
prima, aumentandone chiarezza e facilità di soddisfazione. I requisiti meno importanti, invece, vengono soddisfatti in
seguito, così da essere inseriti in un sistema già stabilizzato.
Il metodo di lavoro sarà quindi il seguente:

<!-- aggiungere altro -->

* In ogni "sprint" vengono prefissati degli obiettivi da raggiungere entro una certa data;
* I verificatori controlleranno il lavoro svolto dagli altri membri del gruppo e comunicheranno eventuali mancanze o
  errori;
