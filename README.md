# OnChainGM - Your Daily Web3 Ritual

OnChainGM is a smart contract that enables users to send a "GM" (Good Morning) transaction once every 24 hours on-chain. Each GM transaction requires a small ETH fee and is recorded on the blockchain. The project supports a referral-based reward system and tracks user activity on multiple networks.

## 📜 Smart Contract Overview

- **Last GM Tracking:** The contract records the last GM timestamp for each user.
- **Transaction Fee:** A small fee (0.000029 ETH) is required per GM transaction.
- **Time Restriction:** Users must wait 24 hours before sending another GM.
- **Admin Functions:** Allows updates to GM fee and GMoint multiplier.
- **Statistics Tracking:** Keeps track of unique users and successful transactions.

## 🔧 Smart Contract Functions

### 1️⃣ Sending a GM
Users can send a GM to themselves or another user once every 24 hours:
```solidity
function onChainGM() external payable;
function onChainGMTo(address recipient) external payable;
```
- Requires **0.000029 ETH** as a fee.
- The GM is recorded in the blockchain.

### 2️⃣ Admin Controls
Admins can update the transaction fee and the GMoint multiplier:
```solidity
function updateGMFee(uint256 newFee) external onlyAdmin;
function updateGMointMultiplier(uint256 newMultiplier) external onlyAdmin;
```

### 3️⃣ Statistics & Tracking
Check contract balance, total transactions, and unique users:
```solidity
function contractBalance() public view returns (uint256);
function getTransactionStats() external view returns (uint256, uint256);
function getGMointPoints(address user) public view returns (uint256);
```

## 📊 Data & Analytics
- **Total Successful Transactions:** `{successfulTransactionsCount}`
- **Unique Users:** `{uniqueUsers.length}`

## 🚀 How to Deploy & Use
### 📌 Deployment Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/your-repo/onchaingm.git
   cd onchaingm
   ```
2. Compile and deploy using Hardhat/Remix.
3. Interact with the contract using Etherscan or a frontend UI.

### 🛠 Example Interaction (Using Web3.js)
```javascript
const contract = new web3.eth.Contract(OnChainGM_ABI, OnChainGM_ADDRESS);
await contract.methods.onChainGM().send({ from: userAddress, value: web3.utils.toWei('0.000029', 'ether') });
```

## 📄 License
This project is licensed under the **MIT License**.

---
💡 **Join the Web3 movement with OnChainGM!** 🚀

