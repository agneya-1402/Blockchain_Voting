# 🗳️ Voting System Smart Contract

A basic voting system implemented in Solidity. Built and tested in [Remix IDE](https://remix.ethereum.org), this contract allows the owner to add candidates and lets users vote only once for a candidate of their choice.

---

## 🚀 Features

- Add candidates (Only owner)
- Vote for a candidate (One vote per address)
- View total votes per candidate
- Get the winning candidate

---

## 🛠️ Tech Stack

- [Solidity ^0.8.26](https://soliditylang.org/)
- [Remix Ethereum IDE](https://remix.ethereum.org)

---

## 📁 File Structure

```
📦 Voting.sol
```
---

## Usage

- 🔹 `addCandidate("Person1")`
- 🔹 `addCandidate("Person2")`
- 🔹 Switch account → `vote(0)` for Alice
- 🔹 Switch to another account → `vote(1)` for Bob
- 🔹 View results with `getVotes(0)` or `getWinner()`

---

## 📷 Screenshot 
![Output](https://github.com/agneya-1402/Blockchain_Voting/blob/main/output.png)

---

## 📚 Learnings

- Structs & mappings
- Access control with modifiers
- Preventing double voting
- Basic loop logic to find max

---

## 📌 Future Improvements

- Add a voting deadline
- Voter registration
- Candidate profile pictures (for frontend)
- Frontend DApp using Web3.js

---

## 🧑‍🎓 Author

**Agneya Pathare**  
[LinkedIn](https://www.linkedin.com/in/agneya-pathare)
