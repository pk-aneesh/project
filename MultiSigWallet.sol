pragma solidity ^0.6.0;

contract MultiSigWallet {
    // The list of signatory wallets
    address[] public signatories;

    // The minimum percentage of signatures required to perform a transaction
    uint256 public requiredPercentage;

    constructor(address[] memory _signatories, uint256 _requiredPercentage) public {
        signatories = _signatories;
        requiredPercentage = _requiredPercentage;
    }

    // Function to request a transaction
    function requestTransaction(address to, uint256 value) public {
        // TODO: Implement function
    }

    // Function to confirm a transaction
    function confirmTransaction(uint256 transactionId) public {
        // TODO: Implement function
    }

    // Function to execute a transaction
    function executeTransaction(uint256 transactionId) public {
        // TODO: Implement function
    }
