// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OnChainGM {
    mapping(address => uint256) public lastGM; // Stores the last GM timestamp for each user
    address public feeRecipient = 0x7500A83DF2aF99B2755c47B6B321a8217d876a85; // Address to receive the transaction fee
    uint256 public GM_FEE = 0.000029 ether; // Fee amount for each GM transaction (now not constant)
    uint256 public constant TIME_LIMIT = 24 hours; // Time limit of 24 hours for sending a GM

    address public admin = 0x102f479312F69157Df8B804905A20FE5025881a5; // Admin address
    uint256 public GM_MULTIPLIER = 1; // Multiplier for GMoint points (starts at 1x)
    
    // Store all GM transactions and the users who have sent them
    address[] public uniqueUsers;
    uint256 public successfulTransactionsCount;

    event OnChainGMEvent(address indexed sender, address indexed receiver);

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    // Allows a user to send a GM to themselves, with a 24-hour restriction
    function onChainGM() external payable {
        require(msg.value == GM_FEE, "Incorrect ETH fee");
        require(block.timestamp >= lastGM[msg.sender] + TIME_LIMIT, "Wait 24 hours before sending another GM");

        lastGM[msg.sender] = block.timestamp; // Update the last GM timestamp

        // Send the fee to the recipient address
        payable(feeRecipient).transfer(GM_FEE);

        // Increment the transaction count and add to unique users if new
        if (!isUserExists(msg.sender)) {
            uniqueUsers.push(msg.sender);
        }
        successfulTransactionsCount++;

        emit OnChainGMEvent(msg.sender, msg.sender);
    }

    // Allows a user to send a GM to another user, with a 24-hour restriction
    function onChainGMTo(address recipient) external payable {
        require(msg.value == GM_FEE, "Incorrect ETH fee");
        require(recipient != address(0), "Cannot send to zero address");
        require(block.timestamp >= lastGM[msg.sender] + TIME_LIMIT, "Wait 24 hours before sending another GM");

        lastGM[msg.sender] = block.timestamp; // Update the last GM timestamp

        // Send the fee to the recipient address
        payable(feeRecipient).transfer(GM_FEE);

        // Increment the transaction count and add to unique users if new
        if (!isUserExists(msg.sender)) {
            uniqueUsers.push(msg.sender);
        }
        successfulTransactionsCount++;

        emit OnChainGMEvent(msg.sender, recipient);
    }

    // Function to check the contract's balance
    function contractBalance() public view returns (uint256) {
        return address(this).balance;
    }

    // Admin function to update GM fee
    function updateGMFee(uint256 newFee) external onlyAdmin {
        GM_FEE = newFee;
    }

    // Admin function to update GM multiplier (x)
    function updateGMointMultiplier(uint256 newMultiplier) external onlyAdmin {
        GM_MULTIPLIER = newMultiplier;
    }

    // Function to get GMoint points for a user
    function getGMointPoints(address user) public view returns (uint256) {
        uint256 gmCount = lastGM[user] > 0 ? 1 : 0;
        return gmCount * GM_MULTIPLIER;
    }

    // Helper function to check if user exists in unique users array
    function isUserExists(address user) private view returns (bool) {
        for (uint256 i = 0; i < uniqueUsers.length; i++) {
            if (uniqueUsers[i] == user) {
                return true;
            }
        }
        return false;
    }

    // Function to get total successful transactions and unique users
    function getTransactionStats() external view returns (uint256, uint256) {
        uint256 uniqueWallets = uniqueUsers.length;
        uint256 successfulTransactions = successfulTransactionsCount;

        return (successfulTransactions, uniqueWallets);
    }
}
