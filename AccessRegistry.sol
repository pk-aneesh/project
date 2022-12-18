pragma solidity ^0.6.0;

contract AccessRegistry {
    // The list of signatories
    address[] public signatories;

    // The admin of the contract
    address public admin;

    // The constructor for the contract
    constructor(address _admin) public {
        admin = _admin;
    }

    // Function to add a signatory
    function addSignatory(address signatory) public {
        require(msg.sender == admin, "Only the admin can add a signatory.");
        signatories.push(signatory);
    }

    // Function to revoke a signatory
    function revokeSignatory(address signatory) public {
        require(msg.sender == admin, "Only the admin can revoke a signatory.");
        for (uint256 i = 0; i < signatories.length; i++) {
            if (signatories[i] == signatory) {
                signatories[i] = address(0);
            }
        }
    }

    // Function to renounce signatory privileges
    function renounceSignatory() public {
        require(signatories.length > 0, "No signatories to renounce.");
        for (uint256 i = 0; i < signatories.length; i++) {
            if (signatories[i] == msg.sender) {
                signatories[i] = address(0);
            }
        }
    }

    // Function to transfer admin privileges
    function transferAdmin(address newAdmin) public {
        require(msg.sender == admin, "Only the admin can transfer admin privileges.");
        admin = newAdmin;
    }
}
