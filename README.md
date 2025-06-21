# OnChainGM - Your Daily Web3 Ritual

OnChainGM is a smart contract that enables users to send a "GM" (Good Morning) transaction once every 24 hours on-chain. Each GM transaction requires a small ETH fee and is recorded on the blockchain. The project supports a referral-based reward system and tracks user activity on multiple networks.

# 🌞 OnChainGM

**OnChainGM** is a minimalist Ethereum smart contract that lets users send an on-chain “GM” (Good Morning) message once per day, optionally rewarding the person who referred them.

---

## 🚀 Features

- ✅ Daily GM — only once per day per address  
- 💸 Optional referral reward (10% of the fee)  
- 📦 Emits events for every GM and failed referral  
- 🔐 Fully on-chain and permissionless  

---

## 📄 Contract Info

- **Name**: `OnChainGM`  
- **Language**: Solidity `^0.8.0`  
- **License**: MIT  
- **Fee**: `0.000029 ETH` (29,000 Gwei)  

---

## 💸 Fee Breakdown

| Purpose               | Amount           |
|------------------------|------------------|
| Total Fee              | `0.000029 ETH`   |
| Referral Reward (10%)  | `0.0000029 ETH`  |
| Sent to Fee Recipient  | `0.0000261 ETH`  |

- **Fee Recipient**: [`0x7500A83DF2aF99B2755c47B6B321a8217d876a85`](https://etherscan.io/address/0x7500A83DF2aF99B2755c47B6B321a8217d876a85)

---

## ⚙️ Functions

### `onChainGM(address referrer)`

Send your daily GM and optionally specify a `referrer`.

- Requires exactly `0.000029 ETH` as msg.value  
- Emits `OnChainGMEvent(sender, referrer)`  
- If referrer is non-zero and transfer succeeds → sends 10% of fee  
- If transfer fails → logs `ReferralFailed`  

### `timeUntilNextGM(address user) → uint256`

Returns how many seconds remain until the specified user can GM again.

---

## 🧾 Events

```solidity
event OnChainGMEvent(address indexed sender, address indexed referrer);
event ReferralFailed(address indexed referrer, uint256 amount);
```

---

## 🔐 How It Works

1. User sends exactly `0.000029 ETH` by calling `onChainGM(referrer)`  
2. Contract checks if `msg.sender` has already GMed today (based on UTC)  
3. If not:
   - Attempts to send 10% of fee to `referrer`  
   - Sends remaining ETH to `feeRecipient`  
   - Emits `OnChainGMEvent`  
4. If referral payment fails, logs `ReferralFailed` but does **not revert**  

---

## 🧪 Example (Remix / Etherscan)

```solidity
onChainGM("0xYourReferrersAddress")
```

> 🔔 Be sure to send exactly `0.000029 ETH` as value.

---

## 🛠 Deployment

The contract can be deployed to any EVM-compatible chain.  
There is **no owner**, **no upgradeability**, and **no admin** — it's fully immutable.

---

## 🧭 License

MIT License — feel free to build on it, fork it, or integrate it into your dApp.

---

## ❤️ Support

If you like the project, send your on-chain GM with a referral to share the love 🌞
