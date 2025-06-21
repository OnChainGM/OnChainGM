// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OnChainGM {
    address public constant feeRecipient = 0x7500A83DF2aF99B2755c47B6B321a8217d876a85;
    uint256 public constant GM_FEE = 0.000029 ether;
    uint256 public constant REFERRAL_PERCENT = 10;
    mapping(address => uint256) public lastGMDay;
    event OnChainGMEvent(address indexed sender, address indexed referrer);
    event ReferralFailed(address indexed referrer, uint256 amount);
    function onChainGM(address referrer) external payable {
        if (msg.value != GM_FEE) {
            revert("Incorrect ETH fee");
        }
        uint256 currentDay = block.timestamp / 86400;
        if (lastGMDay[msg.sender] == currentDay) {
            revert("Already sent GM today");
        }
        lastGMDay[msg.sender] = currentDay;

        uint256 refAmount = 0;
        if (referrer != address(0)) {
            refAmount = (msg.value * REFERRAL_PERCENT) / 100;
            (bool refSuccess, ) = referrer.call{value: refAmount}("");
            if (!refSuccess) {
                emit ReferralFailed(referrer, refAmount);
                refAmount = 0;
            }
        }
        uint256 remaining = msg.value - refAmount;
        (bool success, ) = feeRecipient.call{value: remaining}("");
        if (!success) {
            revert("Fee transfer failed");
        }
        emit OnChainGMEvent(msg.sender, referrer);
    }
    function timeUntilNextGM(address user) external view returns (uint256) {
        uint256 currentDay = block.timestamp / 86400;
        if (lastGMDay[user] < currentDay) {
            return 0;
        }
        uint256 nextMidnight = (currentDay + 1) * 86400;
        return nextMidnight - block.timestamp;
    }
}
