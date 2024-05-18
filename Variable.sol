pragma solidity ^0.8.0;

contract Variable{
    uint8 public u8=122;
    uint256 public u256=1456;
    uint public u=1343; //uint is an alias for uint256

    //negative numbers are allowed for int types
    int public i=-12;

    //address stands for ethereum address
    address public addr=0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    //bool stands for boolean
    bool public defaultBool=false;

    //unsigned variables have a default value in solidity
    bool public defaultBool2; //false
    uint public defaultUint; //0
    int public defaultInt; //0
    address public defaultAddress; //0x000000000000000000000000

    function doSomething() public view{
        //local variable
        uint j=5;

        //global variables
        uint timestamp=block.timestamp; //current block timestamp
        address sender=msg.sender; //address of the caller
    }
}