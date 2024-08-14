pragma solidity ^0.8.24;

contract InfPool {
    // VARIEBLES
    address public owner;

    mapping(address => LstInfo) public lsts;

    struct LstInfo {
        bytes name;
        bytes totalSupply;
        bytes symbol;
    }

    // EVENTS
    event AddLst(
        address indexed lst,
        bytes name,
        bytes totalSupply,
        bytes symbol
    );

    // MODIFIERS
    modifier onlyOwner() {
        require(msg.sender == owner, "You aren't the owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    // FUNCTIONS
    function addLst(
        address _lst,
        bytes memory _name,
        bytes memory _totalSupply,
        bytes memory _symbol
    ) public onlyOwner {
        lsts[_lst] = LstInfo(_name, _totalSupply, _symbol);
    }
}
