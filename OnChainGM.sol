// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract OnChainGM {
    // Immutable variables don't use storage slots
    address public immutable feeRecipient;
    uint256 public immutable GM_FEE;
    uint256 public constant TIME_LIMIT = 24 hours;
    
    // Mapping to store last GM timestamp for each user
    mapping(address => uint256) public lastGMTimestamp;
    
    // Event for tracking GMs
    event OnChainGMEvent(address indexed sender);
    
    constructor() {
        feeRecipient = 0x7500A83DF2aF99B2755c47B6B321a8217d876a85;
        GM_FEE = 0.000029 ether;
    }
    
    // Gas optimized GM function with timestamp check
    function onChainGM() external payable {
        if (msg.value != GM_FEE) {
            revert("Incorrect ETH fee");
        }
        
        // Check if 24 hours have passed since last GM
        if (!(block.timestamp >= lastGMTimestamp[msg.sender] + TIME_LIMIT || lastGMTimestamp[msg.sender] == 0)) {
            revert("Wait 24 hours");
        }
        
        // Update last GM timestamp
        lastGMTimestamp[msg.sender] = block.timestamp;
        
        // Transfer fee after all checks
        (bool success,) = feeRecipient.call{value: msg.value}("");
        if (!success) {
            revert("Fee transfer failed");
        }
        
        emit OnChainGMEvent(msg.sender);
    }
    
    // View function to check remaining time
    function timeUntilNextGM(address user) external view returns (uint256) {
        if (lastGMTimestamp[user] == 0) return 0;
        
        uint256 timePassed = block.timestamp - lastGMTimestamp[user];
        if (timePassed >= TIME_LIMIT) return 0;
        
        return TIME_LIMIT - timePassed;
    }
}
