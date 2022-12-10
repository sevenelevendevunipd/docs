---
title: "Piano di Progetto"
date: "22/11/2022"
responsabile: "Augusto Zanellato"
redattori: ["Davide Vitagliano", "Enrik Rucaj"]
verificatori: ["Andrea Auletta", "Nicola Cecchetto", "Antonio Stan"]
versioni:
  0.0.1:
    autore: Davide Vitagliano
    data: 22/11/2022
    cambiamenti: Prima stesura e struttura
  0.1.0:
    autore: Davide Vitagliano
    data: 04/12/2022
    cambiamenti: Aggiunto paragrafo di Analisi dei Rischi
  0.2.0:
    autore: Enrik Rucaj
    data: 04/12/2022
    cambiamenti: Aggiunto Metodo di Sviluppo e Pianificazione
  0.2.1:
    autore: Enrik Rucaj
    data: 08/12/2022
    cambiamenti: Aggiunto Preventivo per il periodo di Analisi dei Requisiti
  0.2.2:
    autore: Andrea Auletta
    data: 09/12/2022
    cambiamenti: revisione del contenuto e piccole modifiche
...

# Introduzione

## Scopo del documento

Lo scopo del seguente documento è quello di fornire informazioni riguardanti la pianificazione e le modalità attraverso
cui verrà sviluppato il progetto. All’interno vengono inoltre riportate i rischi che il gruppo potrebbe
incontrare lungo tutto il periodo. Al termine sono presenti i preventivi e consuntivi di periodo.
La formulazione segue le regole esposte dal documento *Norme di progetto*

## Glossario

Alcuni termini potrebbero non risultare consoni al linguaggio usuale quindi questi ultimi vengono inseriti nel
documento *Glossario* assieme alle loro definizioni.

## Rifermenti

<!-- riferimenti al capitolato e alle slide-->

## Scadenze

Di seguito viene riportata la tabella con le scadenze che il gruppo Seven Eleven si impegna a rispettare:

| **Revisione**                        | **Acronimo** | **Data**   |
| ------------------------------------ |:------------:|:----------:|
| Requirements and Technology Baseline | RTB          | 28/02/2023 |
| Product Baseline                     | PB           | 09/04/2023 |
| Customer Acceptance                  | CA           | 30/04/2023 |

# Analisi dei Rischi

Questa sezione elenca i possibili rischi in cui si potrebbe incorrere durante l’avanzamento del progetto e il modo in cui devono venire mitigati.

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

* Descrizione: Poca esperienza in un rapporto di lavoro fra cliente e fornitore;
* Identificazione: Il **responsabile** dovrà prestare attenzione alle difficoltà dei membri del gruppo.

#### RI2 - Rapporti interni

* Descrizione: Esistenza di un conflitto di opinione tra i membri del gruppo che non trova un punto d'intesa;
* Identificazione: Il **responsabile** sarà incaricato di gestire il gruppo.

### Rischi dei Requisiti

#### RR1 - Incomprensione dei requisiti

* Descrizione: Difficoltà nella comprensione dei requisiti che può portare a un grave rallentamento nell'avanzamento
  del progetto;
* Identificazione: L'azienda proponente dovrà comunicare al gruppo l'adeguatezza del lavoro svolto.

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

Il gruppo ha deciso di lavorare adottando un approccio agile integrando il **modello Kanban** con alcuni elementi del **modello Scrum**.

Per avere un'idea chiara dell'avanzamento nel progetto, ogni requisito prima di essere svolto viene inserito all'interno di una backlog, ciascuno con un suo grado di importanza (in base alle loro criticità).
I requisiti più importanti vengono svolti per primi mentre quelli con minor criticità vengono svolti in seguito, in modo tale da facilitare la loro integrazione in un sistema già stabilizzato.

Il metodo di lavoro sarà quindi il seguente:

* In ogni "sprint" vengono prelevati dei requisiti dai backlog in base alla loro importanza e la disponibilità temporale dei componenti del team.
* Nello stesso "sprint" vengono prefissati gli obiettivi da raggiungere entro una certa data, cercando di prevedere in anticipo i possibili rischi che potrebbero accadere;
* Il responsabile assegna un obiettivo a uno o più redattori.
* I verificatori controlleranno il lavoro svolto dai redattori e comunicheranno eventuali mancanze o errori;
* Al termine del periodo dello sprint, il gruppo insieme analizzerà il lavoro svolto per capire l'avanzamento del progetto ed adattarsi a eventuali modifiche per risolvere i problemi riscontrati.

# Pianificazione

Tenendo in considerazione le scadenze prefissate per ogni revisione e la durata di ogni sprint di 14 giorni si è deciso di suddividere lo sviluppo del progetto nelle seguenti sottosezioni:

* Requirements and Technology Baseline (RTB) composta da 8 sprint:
  * Analisi dei requisiti composta da 3 sprint.
  * Progettazione Technology Baseline composta da 3 sprint.
  * Proof of Concept composta da 2 sprint.
* Product Baseline (PB) composta da 3 sprint:
  <!--Aggiungere roba in futuro-->
* Customer Acceptance (CA) composta da 2 sprint:
  <!--Aggiungere roba in futuro-->

*Nota: Le sottosezioni sopra citate indicano i requisiti critici importanti per il corretto sviluppo del progetto. Durante i specifici sprint possono essere svolti anche requisiti meno importanti presenti nel backlog.*

**Suddivisione ruoli:**

In un sprint ogni componente del gruppo deve assumere un solo ruolo in modo da concentrarsi a pieno alle sue responsabilità.

Ad ogni nuovo sprint i ruoli precedentemente fissati possono essere cambiati. Un'eccezione alla regola riccade sul ruolo del *responsabile*, il quale essendo una figura altamente importante per la stabilità del gruppo e del progetto si preferisce mantenere la stessa persone che ricopre quel ruolo per un'istante di tempo maggiore rispetto al solito.

Uno stesso ruolo può essere ricoperto contemporaneamente da più persone a eccezione del ruolo di *responsabile*.

## Analisi dei requisiti

**Periodo:**

* INIZIO 07 Novembre 2022 - Dopo assegnazione del capitolato e un periodo di autoformazione del gruppo.
* FINE 18 Dicembre 2022 - Inizio periodo di progettazione di Technology Baseline.

**Ruoli coinvolti:** Responsabile - Amministratore - Analista - Verificatore

Le attività da svolgere durante questo periodo sono:

* **Norme di Progetto:** L’obiettivo del documento è quello di impostare delle norme per poter lavorare in maniera uniforme all'interno del gruppo. L'*amministratore* di un certo documento, dopo essersi concordato con il *responsabile*, emana le norme. I *verificatori* in seguito si impegnerano nel controllo della correttezza di tali documenti.
* **Glossario:** Documento che specifica ogni termine specializzato nel dominio di progetto. I *verificatori* concordandosi direttamente con il *responsabile* aggiungerano termini per evitare possibili fraintendimenti con i commitenti.
* **Piano di Progetto:** L'obiettivo del documento è quello di stabilire il corretto avanzamento del progetto tramite possibili analisi sui rischi e di poter quindi rientrare nei costi/margini del preventivo fatto. Il *responsabile* è l'unico individuo del gruppo che si occupa del corretto svolgimento di questa attività.
* **Piano di Qualifica:** Il documento serve a stabilire metodi svolti dal gruppo per poter constatare il giusto raggiungimento degli obiettivi predisposti. L'*amministratore* emana le procedure di gestione di qualità e il *verificatore* esegue tali procedure sui documenti di loro competenza.
* **Analisi dei Requisiti:** L'obiettivo del documento è quello di fissare i requisiti (espliciti ed impliciti) concordati con il proponente. L'*analista* è colui che identifica questi requisiti.

### Preventivo

Nel periodo di Analisi dei Requisiti, ciascun componente rivestirà i ruoli secondo la seguente suddivisione:

| **Nome**          | **Resp** | **Amm** | **An** | **Progett** | **Programm** | **Ver** | **Totale** |
| ----------------- |:--------:| :-----: |:------:|:-----------:|:------------:|:-------:|:----------:|
| Auletta Andrea    | -        | 6       | 9      | -           | -            | 7       | 22         |
| Brunello Mattia   | 9        | 4       | 10     | -           | -            | 8       | 31         |
| Cecchetto Nicola  | -        | -       | 11     | -           | -            | 7       | 18         |
| Rucaj Enrik       | -        | 9       | 12     | -           | -            | 7       | 28         |
| Stan Antonio      | -        | -       | 11     | -           | -            | 7       | 18         |
| Vitagliano Davide | -        | 7       | 12     | -           | -            | 6       | 25         |
| Zanellato Augusto | 9        | 4       | 10     | -           | -            | 9       | 32         |
| **Totale**        | **18**   | **30**  | **75** | **-**       | **-**        | **51**  | **174**    |

<!--NOTA PER IL FUTURO, IMPORTANTE:
     - Anotnio avrà 3 ore di analista nella fase di "progettazione di dettaglio e codifica per i requisiti opzionali"
     - Enrik avrà 2 ore di analista nella fase di "progettazione di dettaglio e codifica per i requisiti obbligatori"
     - Andrea avrà 2 ore di analista nella fase di "codifica proof of concept"
     - Nicola avrà 2 ore di analista nella fase di "codifica proof of concept"
     - Davide avrà 2 ore di analista nella fase di "Progettazione Technology Baseline"
     - Mattia avrà 3 ore di analista nella fase di "Progettazione Technology Baseline"-->

In questo periodo i costi da affrontare per ogni ruolo sono i seguenti:

| **Ruolo**      | **Ore** | **Costo** |
| -------------- |:-------:|:---------:|
| Responsabile   | 18      | 540       |
| Amministratore | 30      | 600       |
| Analista       | 75      | 1875      |
| Progettista    | -       | -         |
| Programmatore  | -       | -         |
| Verificatore   | 51      | 765       |
| **Totale**     | **174** | **3780**  |

Quadro dei costi da affrontare:

```{.plotly_python}
import plotly.graph_objects as go

labels = ['Responsabile','Amministratore','Analista','Verificatore']
text = ['18h', '30h', '75h', '51h']
values = [540, 600, 1875, 765]

fig = go.Figure(data=[go.Pie(labels=labels, values=values, text=text)])
fig.update_traces(textposition='inside', textinfo='percent+value+label+text', showlegend=False, insidetextorientation="horizontal")

```

## Progettazione Technology Baseline

<!--Sto aspettando che il proff ne parli prima di iniziare a scrivere.-->

# Consuntivo di periodo

In questa sezione vengono esposti i costi e gli orari effettivi sostenuti dal gruppo Seven Eleven.
Infine viene presentato un bilancio tra il consutivo e il preventivo di un determinato periodo (viene riportato a fianco dei nuovi valori).
Quest'ultimo risulterà positivo quando la spesa effettiva è minore del preventivo e viceversa sarà negativo quando la spesa supererà i costi preventivati.

## Analisi dei requisiti

Vengono riportare le ore effettive di lavoro svolte dai componenti del gruppo:

| **Nome**          | **Resp** | **Amm** | **An**  | **Progett** | **Programm** | **Ver** | **Totale** |
| ----------------- |:--------:| :-----: |:-------:|:-----------:|:------------:|:-------:|:----------:|
| Auletta Andrea    | -        | 5 (-1)  | 9 (+1)  | -           | -            | 7       | 22         |
| Brunello Mattia   | 9        | 4       | 10      | -           | -            | 7 (-1)  | 28 (-1)    |
| Cecchetto Nicola  | -        | -       | 11      | -           | -            | 6 (-1)  | 17 (-1)    |
| Rucaj Enrik       | -        | 9       | 11 (-1) | -           | -            | 7       | 27 (-1)    |
| Stan Antonio      | -        | -       | 11      | -           | -            | 7       | 18         |
| Vitagliano Davide | -        | 8 (+1)  | 12      | -           | -            | 6       | 26 (+1)    |
| Zanellato Augusto | 10 (+1)  | 4       | 10      | -           | -            | 7 (-2)  | 31 (-1)    |
| **Totale**        | **19**   | **30**  | **75**  | **-**       | **-**        | **47**  | **171**    |

Di seguito vengono riportate le variaizioni dei costi:

| **Ruolo**      | **Ore** | **Costo**      |
| -------------- |:-------:|:--------------:|
| Responsabile   | 19 (+1) | 570  (+30,00)  |
| Amministratore | 30      | 600            |
| Analista       | 75      | 1875           |
| Progettista    | -       | -              |
| Programmatore  | -       | -              |
| Verificatore   | 47 (-4) | 705  (-60,00)  |
| **Totale**     | **171** | **3750**       |

## Motivazioni delle variazioni

* **Responsabile +1**: Problema iniziale riguardante la suddivisione del lavoro;
* **Amministratore +0**: -
* **Analista +0**: -  
* **Verificatore -4**: Avendo da verificare documentazione il lavoro è risultato più rapido di quanto previsto.  

## Considerazioni

### Bilancio finale

| **Ore** | **Costo**  |
|:-------:|:----------:|
| **-3**  | **-30,00** |

Il bilancio è positivo rispetto a quanto preventivato per questo periodo e tutti gli obiettivi sono stati raggiunti con leggero anticipo rispetto a quanto previsto.
Il bilancio finale non risulta essere scostato in maniera significativo dalle previsioni effettuate dal gruppo quinidi non è ritenuta necessaria la ripianificazione del prossimo periodo.
