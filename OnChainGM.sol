/**
 *Submitted for verification at optimistic.etherscan.io on 2025-02-25
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OnChainGM {
    // Storage optimization: Pack related variables together
    mapping(address => uint256) public lastGM;
    mapping(address => bool) private isUniqueUser;

    // Immutable variables for constant addresses
    address public immutable feeRecipient;
    address public immutable admin;

    // Constants
    uint256 public constant TIME_LIMIT = 24 hours;
    uint256 public GM_FEE = 0.000029 ether;
    uint256 public GM_MULTIPLIER = 1;
    
    // Storage for stats
    uint256 public successfulTransactionsCount;
    uint256 public uniqueUsersCount;

    event OnChainGMEvent(address indexed sender, address indexed receiver);

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    constructor() {
        feeRecipient = 0x7500A83DF2aF99B2755c47B6B321a8217d876a85;
        admin = 0x102f479312F69157Df8B804905A20FE5025881a5;
    }

    // Optimized internal function for GM logic
    function _processGM(address sender, address recipient) internal {
        require(msg.value == GM_FEE, "Incorrect ETH fee");
        require(block.timestamp >= lastGM[sender] + TIME_LIMIT, "Wait 24 hours");
        
        lastGM[sender] = block.timestamp;
        
        // Add unique user
        if (!isUniqueUser[sender]) {
            isUniqueUser[sender] = true;
            unchecked { uniqueUsersCount++; }
        }
        
        unchecked { successfulTransactionsCount++; }
        
        // Use call instead of transfer for better gas efficiency
        (bool success,) = feeRecipient.call{value: msg.value}("");
        require(success, "Fee transfer failed");
        
        emit OnChainGMEvent(sender, recipient);
    }

    // Allows a user to send a GM to themselves, with a 24-hour restriction
    function onChainGM() external payable {
        _processGM(msg.sender, msg.sender);
    }

    // Allows a user to send a GM to another user, with a 24-hour restriction
    function onChainGMTo(address recipient) external payable {
        require(recipient != address(0), "Cannot send to zero address");
        _processGM(msg.sender, recipient);
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

    // Function to get total successful transactions and unique users
    function getTransactionStats() external view returns (uint256, uint256) {
        return (successfulTransactionsCount, uniqueUsersCount);
    }
}
