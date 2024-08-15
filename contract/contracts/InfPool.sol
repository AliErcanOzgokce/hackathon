pragma solidity ^0.8.24;

contract InfPool {
    // VARIEBLES
    address public owner;

    mapping(address => LstInfo) public lsts;

    struct LstInfo {
        bytes name;
        bytes symbol;
        uint256 totalSupply;
        uint256 inputFee;
        uint256 outputFee;
    }

    // EVENTS
    event AddLst(
        address indexed lst,
        bytes name,
        bytes symbol,
        uint256 totalSupply,
        uint256 inputFee,
        uint256 outputFee
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
    function registerLst(
        address _lst,
        bytes memory _name,
        bytes memory _symbol,
        uint256 _totalSupply
    ) public onlyOwner {
        lsts[_lst] = LstInfo(_name, _symbol, _totalSupply, 0, 0);
    }

    function addLiquidity(address lstAddress) public payable {
        // TODO
    }

    function removeLiquidity(address lstAddress) public payable {
        // TODO
    }

    function calculateFees(address lstAddress) public {
        // TODO
    }

    function swap(address fromLstAddress, address toLstAddress, uint256 amount) public {
        // TODO
    }

    function _transfer(address fromLstAddress, address toLstAddress, uint256 amount) internal {
        // TODO
    }
}
