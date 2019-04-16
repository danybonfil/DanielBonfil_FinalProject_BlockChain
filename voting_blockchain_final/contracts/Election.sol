pragma solidity >=0.4.22 <0.6.0;

contract Election {
	// Model a Candidate
	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

	// Store accounts that have voted
	mapping(address => bool) public voters;
	// Store Candidates
	// Fetch Candidate
	mapping(uint => Candidate) public candidates;
	// Store Candidates Count
	uint public candidatesCount;

	// Voted event
    event votedEvent (
        uint indexed _candidateId
    );

	// Constructor
	constructor() public {
		addCandidate("1. Volatility spillover effects and time-varying conditional correlationin leading cryptocurrencies: Bitcoin, Ether and Litecoin");
		addCandidate("2. How Zerocash works with zk-SNARKS");
		addCandidate("3. Analysis of the dynamic relationship between the bitcoin prices of the United States, South Korea and Japan");
		addCandidate("4. Price changes’ impact on the miner hash rate allocation in cryptocurrencies");
		addCandidate("5. Opportunities and challenges of blockchain games");
		addCandidate("6. The impact of the blockchain on the supply chain finance ABS");
		addCandidate("7. Research on the application of blockchain in logistics");
		addCandidate("8. The application of block chain in intellectual property protection of music industry");
		addCandidate("9. Application of Block Chain Technology in Credit Reporting Industry");
		addCandidate("10. Principal —— A Blockchain Financial Review and Forecasting Platform");
		addCandidate("11. The Principle and Imparts of Central Bank Digital Currency");
	}

	function addCandidate (string memory _name) private {
		candidatesCount ++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
	}

	function vote (uint _candidateId) public {
		// Require that they haven't voted before
		require (!voters[msg.sender]);		

		// Require a valid candidate
		require (_candidateId > 0 && _candidateId <= candidatesCount);

		// Record that voter has voted
		voters[msg.sender] = true;

		// Update candidate vote Count
		candidates[_candidateId].voteCount ++;

		// trigger voted event
    	emit votedEvent(_candidateId);
	}
	

}
