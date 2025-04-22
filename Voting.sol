// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Voting {
    
    struct Candidate {
        string name;
        uint voteCount;
    }

    address public owner;
    mapping(uint => Candidate) public candidates;
    mapping(address => bool) public hasVoted;
    uint public candidatesCount;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can perform this action.");
        _;
    }

    function addCandidate(string memory _name) public onlyOwner {
        candidates[candidatesCount] = Candidate(_name, 0);
        candidatesCount++;
    }

    function vote(uint _candidateId) public {
        require(!hasVoted[msg.sender], "You have already voted.");
        require(_candidateId < candidatesCount, "Invalid candidate ID.");

        candidates[_candidateId].voteCount++;
        hasVoted[msg.sender] = true;
    }

    function getVotes(uint _candidateId) public view returns (uint) {
        require(_candidateId < candidatesCount, "Invalid candidate ID.");
        return candidates[_candidateId].voteCount;
    }

    function getWinner() public view returns (string memory winnerName) {
        uint highestVotes = 0;
        uint winnerId = 0;
        for (uint i = 0; i < candidatesCount; i++) {
            if (candidates[i].voteCount > highestVotes) {
                highestVotes = candidates[i].voteCount;
                winnerId = i;
            }
        }
        winnerName = candidates[winnerId].name;
    }
}
