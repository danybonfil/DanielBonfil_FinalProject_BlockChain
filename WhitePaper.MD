# VoteChain Whitepaper
# Voting dApp - Smart Contract on Ethereum - FinalProject_BlockChain
## Introduction:

The motivation for proposing this decentralized application (dApp) raises from the new system of referendums that the Mexican Government implemented, which can be improved by including a hybrid of blockchain digital and physical voting. The past July of 2018, Mexico had general elections for president, and has underwent three referendums that have had immediate impact in the future of the Mexican people and the countries' economy. The Instituto Nacional Electoral [INE](https://www.ine.mx/credencial/estadisticas-lista-nominal-padron-electoral/), is the institution responsible of preparation, execution and definition of the electoral processes. However, given the nature of "Public Consultation" the INE acts as a mere advisor to the civil organization that is in charge of the complete logistics through [México Decide](https://mexicodecide.com.mx/).

# Background:
- It has been hypothesized that *direct democratic institutions* make politicians more accountable –and that this would lead to policy choices that are closer to the preferences of the citizens. 
- In real-world societies beyond a certain size, *representative and direct democracy are not an alternative*. 
- Rather, a different degree of direct democratic institutions is combined with representative institutions, as no sizeable society can decide on all issues directly. (Brousseau E., 2008)

# Applaud government innovation, enhance it with technology:
Incorporating new policies is never easy. However, doing it with lax procedures could result counterintuitive rather than progressive.

For a democratic tool to be successful, the following should be considered:
- Prevent the use of this tool for the antagonization of different interest groups
  - **use the institutions as well as the infrastructure already available for this purpose: INE**
- Enhance rather than deteriorating a social involvement 
- Strengthen public confidence in public administration
- Recognize the processes of prior and due consultation
- Promote the exercise of the right to self-determination
- Recognize the right of democratic participation in the national development planning system
- Give each citizen the right to participate in matters of public interest
  - The pluricultural State of law bases its unity on the diversity of the people that make it up and on the right of different cultures to preserve, reproduce and flourish.
  
In the same way, the new referendum should take into account:
  - The resolution of matters of national interest should be resolved via:
    - Negotiation and informed concession, based on a just and sustainable future.
    - Should provide information to allow any decision to be, free, informed, transparent and fair.

Nevertheless, applying technologies to the democratic process of a country does not guarantee either that the process will be more efficient, accurate or transparent. On the other hand, Mexico can be inspired by the learning curve of other countries that have achieved the digitalization of the voting process up to certain extent. This however, does not imply that the implementation in other countries would apply the same way into the democratic system in Mexico, but the knowledge of them with a combination of local support of federal and state government could help the INE to take a step towards a stronger democratic state.

# Face the obsolescence of the current Paper Ballot system:
Paper Ballots:
  - Cost: Paper and Materials, Polling Stations, Labor
  - Integrity: Corruption, Human Error, Counting Time Theft or fire.
  - Accessibility: Retired Municipalities, Voters with Disabilities

# Case Studies:
- [USA](https://www.businessinsider.com/22-states-that-allow-you-to-vote-online-2016-9) - Has notable development with 25 states allowing some voters to submit their ballots electronically.
- [Brazil](https://arstechnica.com/tech-policy/2018/06/in-a-blow-to-e-voting-critics-brazil-suspends-use-of-all-paper-ballots/) - Introduced Electronic Voting Machines (EVM) in 1996. By 2000, elections were fully electronic with a requirement of only 5% ballot to use paper. Is working towards complete digitalization and cybersecurity reinforcement.
- [Estonia](https://e-estonia.com/solutions/e-governance/i-voting/) - The most advanced country, with a highly-digitalized culture and the system "i-Voting" which by 2005 became the first country in the world to hold nation-wide elections using this method.  The system, allows voters to cast their ballots from any internet-connected computer anywhere in the world. 

# Zero Sum Game?
- In the case of USA, the approach has been made by each state. But this has enabled to some USA citizens the ability to cast a vote when before they were not able and to others, the convenience of online voting.
- In the case of Brazil, scandals natural to the incorporation to unknown technologies raised on parallel with its inclusion. However, after 23 years of coexistence, the country has achieved to tackle the scale of the task, reduce the vote counting time, and hence the tension and uncertainty of the post-election period. 
- In the case of [Estonia](https://estoniaevoting.org/), internally they believe to have an efficient and secure tool. However, international studies have raised the question as to the extent of its security as well as the possible intervention by neighboring states like Russia. Hence, cybersecurity experts have warned about systemic malware attacks, privacy breaches, and "denial of service" attacks that can compromise the entire countries’ election system. 

## Project approach:
- **The information will be Centralized by the INE** but the system would use a decentralized blockchain with Hyperledger and Ethereum. Every citizen registered and able to vote will be able to do so by:
  - 1: Presenting its voting id the day of the elections. [ID would act as Public Key](https://github.com/PHBS/2018.M3.BlockChain/wiki/Public-Key-Infrastructure-(PKI))
  - 2: Signing the vote with the digital fingerprint recorded by the INE. [Finger Print would act as Private Key](https://github.com/PHBS/2018.M3.BlockChain/wiki/Public-Key-Infrastructure-(PKI))
  - 3: Casting the vote would need the [Digital Signature](https://github.com/PHBS/2018.M3.BlockChain/wiki/Public-Key-Infrastructure-(PKI)) that will be a cobination matching both 1 & 2.

- The proposal suggests a pilot project in the 4 strategic cities of Mexico:
  - Mexico City
  - Monterrey
  - Guadalajara
  - Queretaro
  
- This will be achieved by:
  - Developing an enhanced app of the one presented in this WhitePaper using the same Ethereum standards, meaning it uses the “gas” execution fee to pay for transactions. 
 - And the combination of a Centralized Private Blockchain which is Hyperledger Fabric and its network only host this decentralized app and make it easy to deploy and process Solidity smart contracts.  
 - Finally, replace Ethereum’s gas in the Hyperledger Fabric with a digital token.
  
# Pricing
- The total cost of the election will be calculated upon the, total number of people multiplied by the gas designated price.
- Depending on the population estimated for the cities proposed, the threshold of gas price would be calculated to its exchange rate in ETH/USD.

  - TUSD: k*P

    - TUSD: Election Reserved Tokens in USD for election a
    - k: Ethereumm Blockchain Gas Network Fee (weighted average per unit, by population thresholds) 
    - P: Voter population 

## Improvement
  - The project can certainly be improved by the better integration of Hyperledger.
  - Interest of the Mexican Government and its institutions.
  - Involvement of Local players such as: https://www.stateofthedapps.com/dapps/electchain

## Reference
* [Blockchain at Berkeley, 2018 Fall](https://blockchain.berkeley.edu/courses/fall-2018-fundamentals-decal/) (__DeCal__): Slides, Youtube lectures available (Uploaded in [CMS](http://cms.phbs.pku.edu.cn/claroline/document/document.php?cidReset=true&cidReq=FIN533))
* [Bitcoin and Cryptocurrency Technologies](http://bitcoinbook.cs.princeton.edu/) (Princeton textbook) by Narayanan, Bonneau, Felten, Miller, and Goldfeder ([draft download](https://d28rh4a8wq0iu5.cloudfront.net/bitcointech/readings/princeton_bitcoin_book.pdf)):
* [IBM Hyperledger](https://developer.ibm.com/patterns/voting-app-hyperledger-ethereum/)

