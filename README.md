# OnChainGM - Your Daily Web3 Ritual

OnChainGM is a smart contract that enables users to send a "GM" (Good Morning) transaction once every 24 hours on-chain. Each GM transaction requires a small ETH fee and is recorded on the blockchain. The project supports a referral-based reward system and tracks user activity on multiple networks.

# OnChainGM Smart Contract

## Overview
OnChainGM is a decentralized smart contract deployed on the Optimism network that allows users to send a daily "GM" (Good Morning) transaction. Users must wait 24 hours between each GM transaction and pay a small fee to participate. The contract ensures fairness by enforcing time limits and handling ETH fee transfers securely.

## Features
- **Daily GM Transactions:** Users can send one GM transaction every 24 hours.
- **Immutable Fee & Recipient:** A fixed fee of `0.000029 ETH` is required per GM transaction, sent to a predefined recipient address.
- **Time Lock Mechanism:** Enforces a 24-hour cooldown period between GM transactions per user.
- **Event Logging:** Emits an event (`OnChainGMEvent`) for every GM transaction.
- **Fee Transfer Security:** Ensures successful ETH transfer to the recipient.
- **Query Function:** Users can check their remaining cooldown time before sending another GM.

## Smart Contract Details
- **Network:** Optimism
- **Fee Recipient:** `0x7500A83DF2aF99B2755c47B6B321a8217d876a85`
- **GM Fee:** `0.000029 ETH`
- **Time Limit:** `24 hours`

## Functions
### `onChainGM()`
**Description:** Allows a user to send a GM transaction if they meet the required conditions.

**Requirements:**
1. Must send exactly `0.000029 ETH`.
2. Must wait `24 hours` since their last GM transaction.
3. ETH transfer to the fee recipient must succeed.

**Events:**
- Emits `OnChainGMEvent` when a GM transaction is successfully recorded.

### `timeUntilNextGM(address user) → uint256`
**Description:** Returns the remaining time (in seconds) until a user can send their next GM transaction.

**Return Values:**
- `0` if the user is eligible to send a GM.
- Remaining seconds if the user needs to wait.

## Usage
1. Ensure you are connected to the Optimism network.
2. Call `onChainGM()` and send `0.000029 ETH` to participate.
3. Wait 24 hours before sending another GM.
4. Use `timeUntilNextGM()` to check your cooldown status.

## Security Considerations
- The contract prevents users from bypassing the 24-hour rule.
- ETH fee transfer is handled securely.
- Immutable fee and recipient address prevent unauthorized changes.

## License
This contract is licensed under the **MIT License**.



