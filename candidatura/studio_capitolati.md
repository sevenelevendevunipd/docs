---
title: "Studio Capitolati"
author: [Seven Eleven Dev]
date: "27/10/2022"
hidedate: false
lang: "en"
titlepage: true
pdfa: true
responsabile: "Mattia Brunello"
redattori: ["Antonio Stan", "Enrik Rucaj"]
verificatori: ["Antonio Stan", "Nicola Cecchetto", "Davide Vitagliano", "Andrea Auletta", "Augusto Zanellato"]
abstract: "Vengono riportate le valutazioni sui capitolati proposti riguardo a complessità e requisiti che hanno portato alla scelta del progetto."
docusage: "Esterno"
toc: true
toc-own-page: true
...

# Introduzione

## Scopo del documento

Lo scopo di questo documento è indicare i motivi per i quali il gruppo ha scelto il progetto esposto nel capitolato C5.
Inoltre viene riportato per ciascun altro capitolato disponibile le valutazioni e lo studio di fattibilità.

## Riferimenti

1. Capitolato C1: <https://www.math.unipd.it/~tullio/IS-1/2022/Progetto/C1.pdf>
2. Capitolato C2: <https://www.math.unipd.it/~tullio/IS-1/2022/Progetto/C2.pdf>
3. Capitolato C3: <https://www.math.unipd.it/~tullio/IS-1/2022/Progetto/C3.pdf>
4. Capitolato C4: <https://www.math.unipd.it/~tullio/IS-1/2022/Progetto/C4.pdf>
5. Capitolato C5: <https://www.math.unipd.it/~tullio/IS-1/2022/Progetto/C5.pdf>
6. Capitolato C6: <https://www.math.unipd.it/~tullio/IS-1/2022/Progetto/C6.pdf>
7. Capitolato C7: <https://www.math.unipd.it/~tullio/IS-1/2022/Progetto/C7.pdf>

# Capitolato C1 - CAPTCHA: Umano o Sovrumano?

## Informazioni generali

* **Nome**: CAPTCHA: Umano o Sovrumano?
* **Proponente**: Zucchetti SpA
* **Committente**: *Prof. Tullio Vardanega e Prof. Riccardo Cardin*

## Descrizione generale

Un test CAPTCHA è un test progettato per stabilire se un utente online è un umano o un bot, esso è molto utile oggi giorno nella maggior parte dei siti che permettono di registrarsi, compilare form, inserire commenti o recensioni, ovvero tutto ciò che richiede dell'input da parte dell'utente. Per evitare lo spam e aumentare la sicurezza dei siti web, nel 2000 sono stati inventati i primi test CAPTCHA, ovvero dei test che chiedevano all'utente di riscrivere delle sequenze brevi di lettere e numeri che venivano distorte, inclinati o ridimensionati differentemente. Il sistema non era comunque sicuro in quanto i sistemi OCR nel tempo sono migliorati moltissimo grazie all'intelligenza artificiale. I CAPTCHA moderni sono difatti basati sul riconoscimento di oggetti o caratteristiche delle immagini.

## Finalità del progetto

L'azienda richiede di sviluppare una applicazione costituita da una singola pagina web di login in grado di distinguere un utente umano da un bot.
Inoltre si richiede che il captcha non sia eludibile chiamando direttamente la componente server senza passare per quella client.

## Tecnologie interessate

Il commitente ha imposto dei vincoli obbligatori e opzionali per lo sviluppo dell'applicazione:

* Utilizzo di HTML/CSS/JavaScript per la realizzazione della parte client dell'applicazione;
* Uso di Java o PHP per lo sviluppo della parte server;
* Utilizzo di una libreria Open Source, un servizio gratuito web o un programma originale sviluppato dal gruppo di lavoro per il sistema CAPTCHA;

## Aspetti positivi

* L'azienda ha una storia importante alle spalle ed è una dei maggiori esponenti italiani nel proprio settore;
* Gli obbiettivi sono chiari e specifici;
* Possibilità di applicare HTML/CSS/JavaScript che si vedranno durante il corso di Tecnologie Web;

## Criticità e fattori di rischio

* Utilità limitata dell'applicazione;
* Mercato già saturo, troppe aziende/colossi si occupano già del problema dei CAPTCHA, non sembra perciò che gli sforzi del gruppo potrebbero risultare utili;
* L'invenzione di nuovi CAPTCHA risulta troppo impegnativo;
* Mentre l'implementazione di CAPTCHA già esistenti non ci ispira in quanto poco innovativo;

## Conclusioni

In conclusione questo capitolato ha sin da subito suscitato scarso interesse al team ritenendolo poco stimolante rispetto le altre proposte.

# Capitolato C2 - Lumos Minima

## Informazioni generali

* **Nome**: Lumos Minima
* **Proponente**: Imola informatica
* **Committente**: *Prof. Tullio Vardanega e Prof. Riccardo Cardin*

## Descrizione generale

Il capitolato richiede di sviluppare un sistema di ottimizzazione dell'illuminazione pubblica in modo tale da poter regolare l'intensità della luce emessa dagli impianti per risolvere due problemi principali, ovvero:

* Garantire la sicurezza stradale e sociale;
* Migliorare il risparmio energetico;

## Finalità del progetto

Il progetto richiede lo sviluppo obbligatorio delle seguenti funzionalità:

* Rilevamento di una presenza in un'area e aumento dell'intensità luminosa;
* Inserimento di un nuovo sensore nel sistema;
* Aumento o riduzione manuale dell'intensità luminosa in un'area illuminata;
* Aumento o riduzione globale dell'intensità luminosa;
* Inserimento manuale di un guasto;
* Inserimento automatico di un guasto;
* Sviluppo di una applicazione web responsive;

## Tecnologie interessate

Il commitente non impone nessun vincolo riguardo le tecnologie necessarie ai fini del progetto.

## Aspetti positivi

* Il progetto appare innovativo;
* Le richieste del capitolato risultano chiare;
* Il gruppo ritiene che il sistema possa risultare utile in futuro;

## Criticità e fattori di rischio

* Il progetto è troppo incentrato sull'*Internet of Things* che non è di grande interesse al gruppo.

## Conclusioni

Nonostante il forte interesse e curiosità inziale verso questo capitolato da parte del Team, non è stato scelto in quanto non ha retto a confronto con le altre scelte, non ha aiutato il fatto che fosse già un capitolato molto gettonato dagli altri gruppi.

# Capitolato C3 - Personal Identity Wallet

## Informazioni generali

* **Nome**: Personal Identity Wallet
* **Proponente**: InfoCert
* **Committente**: *Prof. Tullio Vardanega e Prof. Riccardo Cardin*

## Descrizione generale

L'identità digitale è percepita come un elemento fondamentale nel mondo del digital market. Tuttavia le informazioni fornite risultano spesso insufficienti in questo contesto e non offrono l'accesso a sistemi che richiedono una consolidazione legale (università, banche ed ospedali).

## Finalità del progetto

Creare un portafoglio digitale capace di fornire le credenziali dell'utente nei vari contesti.
Le informazioni devono poter essere modificate e/o eliminate, inoltre viene richiesto di verificare l'autenticità di queste credenziali.
È possibile creare un'applicazione web oppure mobile.

## Tecnologie interessate

Non vengono specificate tecnologie particolari tranne l'utilizzo di JSON per il passaggio delle credenziali seguendo standard proposto dal committente.

## Aspetti positivi

* Libertà assoluta nella scelta delle tecnologie;

## Criticità e fattori di rischio

* Il progetto risulta difficile da comprendere;
* È necessario lo sviluppo di numerose architetture non banali;
* Lo standard europeo da implementare non è ancora stato rilasciato definitivamente;

## Conclusioni

Il progetto risulta troppo generico e richiede molto tempo per la ricerca delle tecnologie e per l'orientamento nel contesto specifico.

# Capitolato C4 - Piattaforma di Localizzazione Testi

## Informazioni generali

* **Nome**: Piattaforma di Localizzazione Testi
* **Proponente**: Zero12
* **Committente**: *Prof. Tullio Vardanega e Prof. Riccardo Cardin*

## Descrizione generale

Gli applicativi moderni devono essere multi-lingua per poter essere disponibili nel mercato internazionale, serve quindi un metodo per la traduzione di questi prodotti.

## Finalità del progetto

Ideare una soluzione software in grado di gestire le traduzioni dei vari applicativi moderni.

## Tecnologie interessate

L'azienda suggerisce di utilizzare la tecnologia Amazon Web Services:

* AWS Fargate: servizio serverless per gestione a container;
* AWS Aurora Serverless: servizio serverless di database SQL managed;

Inoltre consiglia i seguenti linguaggi di programmazione:

* NodeJS: ideale per lo sviluppo di API RESTful JSON a supporto dell’applicativo;
* Typescript: ideale per lo sviluppo di una libreria frontend;
* Swift: ideale per lo sviluppo di una libreria iOS/macOS;
* Kotlin: ideale per lo sviluppo di una libreria per ambiente Android;

## Aspetti positivi

* L'azienda fornisce corsi di formazione per facilitare lo sviluppo del progetto;
* L'azienda fornisce 500$ in crediti AWS per lo sviluppo;
* AWS è una tecnologia molto richiesta al giorno d'oggi;

## Criticità e fattori di rischio

* Molti vincoli obbligatori e libertà limitata nel svolgerli;
* AWS è una tecnologia molto interessante ma estremamente complessa da usare in modo proficuo ed efficiente.

## Conclusioni

Il progetto non ha suscitato grande interesse nel gruppo.

# Capitolato C5 - SmartLog

## Informazioni generali

* **Nome**: SmartLog
* **Proponente**: Socomec
* **Committente**: *Prof. Tullio Vardanega e Prof. Riccardo Cardin*

## Descrizione generale

Al giorno d'oggi vista l'espansione e l'aumento del numero delle apparecchiature per il supporto all'energia elettrica nelle infrastrutture critiche, la gestione di esse sta diventando sempre più complessa e richiede una continua analisi per l'ottimizzazione dei consumi e rivelazione degli errori.
Per questo motivo i dispositvi Socomec riescono a registrare e salvare su un file di log tutti gli eventi che accadono, in modo da poter essere analizzati e trovare e risolvere gli eventuali problemi.

## Finalità del progetto

Il progetto prevede di sviluppare due applicazioni:

* **SmartLogViewer**: Permette la visualizzazione di un singolo file di log evidenziandone alcune caratteristiche e fornendo dei grafici sull'andamento di alcuni valori;
* **SmartLogStatistics**: Permette la visualizzazione aggregata di una serie di file di log mostrando oltre ai dati visibili su **SmartLogViewer** anche delle statistiche come ad esempio la correlazione di alcuni eventi mediante l'uso di grafici;

## Tecnologie interessate

L'azienda, pur non richiedendo obbligatoriamente l'uso di speifiche tecnologie, ha fortemente consigliato l'uso di Python e di alcune librerie per l'analisi di dati, come ad esempio Matplotlib.

## Aspetti positivi

* Il gruppo ha già delle conoscenze nella creazione di grafici (grazie al corso di Programmazione ad Oggetti);
* Il progetto risulta interessante sotto il punto di vista dell'analisi dei dati;
* Il gruppo ha trovato stimolante la possibilità di lavorare con un'azienda il cui *core business* non è l'informatica;

## Criticità e fattori di rischio

* La mole di dati da analizzare è potenzialmente molto grande, va quindi tenuta sotto controllo la complessità temporale degli algoritmi da utilizzare.

## Conclusioni

Il progetto ha suscitato grande interesse sin da subito all'interno del gruppo per la chiarezza del capitolato e delle relative richieste, inoltre il progetto è fin da subito ben definito facilitando l'analisi dei requisiti.

# Capitolato C6 - ShowRoom3D

## Informazioni generali

* **Nome**: ShowRoom 3D
* **Proponente**: SanMarco informatica
  
* **Committente**: *Prof. Tullio Vardanega e Prof. Riccardo Cardin*

## Descrizione generale

Lo scopo dello showroom è quello di presentare dei prodotti, farsi conoscere e vendere alla clientela, avvalendosi dell’ambiente e dell’esperienza immersiva offerta.

## Finalità del progetto

L'azienda propone di creare uno showroom virtuale che eviti i problemi ed i costi di uno showroom fisico.
L'ambiente deve possedere gli oggetti vendibili e inoltre deve esserci la possibilità di modificare le caratteristiche di questi ultimi, come ad esempio colore o dimensioni.

## Tecnologie interessate

* Libreria JavaScript Three.js usata per creare animazioni 3D in un browser;
* Unity (C#) per progetti 3D;
* Unreal Engine (C++) per progetti 3D;

## Aspetti positivi

* Progetto originale e interessante con una prospettiva rivolta verso il futuro;
* Utilizza tecnologie moderne;
* Vengono usati linguaggi di programmazione conosciuti;

## Criticità e fattori di rischio

* Viene richiesta la conoscenza degli ambienti 3D;
* L'azienda concede molta libertà di sviluppo che in questo caso porta a non capire da quale punto iniziare il progetto;

## Conclusioni

Il gruppo ha escluso il progetto in quanto teme di non riuscire ad acquisire in tempo utile le conoscenze necessarie allo sviluppo del progetto.

# Capitolato C7 - Trustify: Authentic and Verifiable Reviews Platform

## Informazioni generali

* **Nome**: Trustify: Authentic and Verifiable Reviews Platform
* **Proponente**: Sync Lab
* **Committente**: *Prof. Tullio Vardanega e Prof. Riccardo Cardin*

## Descrizione generale

Le recensioni online hanno un'autenticità molto problematica dato che possono essere facilmente falsificate e manipolate a favore o contro le aziende.

## Finalità del progetto

Sviluppare un'applicazione basata sull'utilizzo di smart contract, i quali forniscono autenticità e non possono essere modificati da agenti esterni.

## Tecnologie interessate

L'azienda è aperta all'utilizzo di nuove tecnologie ma ha suggerito le seguenti:

* Utilizzo di blockchain Ethereum-compatibile, con linguaggio Solidity per la scrittura dello smart contract;
* Utilizzo di Java Spring per lo sviluppo del servizio API REST;
* Utilizzo di Angular per lo sviluppo dell'applicazione web;
* Utilizzo di librerie web3js (webapp) e web3j (server) per interagire con lo smart contract;
* Utilizzo di un fornitore terzo per RPC a nodo (es. Infura, Moralis, Alchemy...);
* Utilizzo di Metamask come wallet per la firma delle transazioni degli utenti;

## Aspetti positivi

* Il progetto offre la possibilità di trattare e approfondire le varie tecnologie;
* L'utilizzo della blockchain è molto innovativo e risulta interessante;
* Le tecnologie sono consigliate in modo non vincolante;

## Criticità e fattori di rischio

* Vengono utilizzate molteplici tecnologie sconosciute che necessitano di uno studio approfondito;
* Per una realizzazione ottimale bisogna studiare approfonditamente molte tecnologie;
* Nonostante la tecnologia blockchain risulti interessante, il paradigma di programmazione risulta totalmente estraneo e possono essere introdotte involontariamente classi di vulnerabilità estremamente particolari.

## Conclusioni

Il progetto risulta abbastanza complicato e difficile da inquadrare nei tempi prestabliti.
