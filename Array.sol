pragma solidity ^0.8.19;

contract Array{
    string public greet="Hello World!";

    //several ways to initialize arrays
    //arrays initialized here are considered state variables that get stored on the blockchain
    //these are called storage variables
    uint[] public arr;
    uint[] public arr2=[1,2,3];

    //fixed size array. all elements initlalized to 0
    uint[10] public arr3;

    function get(uint i) public view returns(uint){
        return arr2[i];
    }

    //solidity can return entire array
    //memory variables - exist temporarily during function execution whereas
    //storage variables are persistent across function calls for the lifetime of the contract
    function getArr(uint[] memory _arr) public pure returns(uint[] memory){
        return _arr;
    }

    //thid function returns string memory
    //the reason memory keyword is used because string internally works as array
    //here the string is only needed while th function executes
    function foo() public pure returns(string memory){
        return "C";
    }

    function doStuff(uint i) public{
        //append to array
        arr.push(i);

        //remove the last element from the array
        arr.pop();

        //length of the array
        uint length=arr.length;

        uint index=1;
        //delete does not the change the value of array length
        //it change the value of arr2 at index= index to 0
        delete arr2[index]; 

        //create an array in memory. only fixed size can be created
        uint[] memory a=uint[](5);

        //create string in memory
        string memory hi="hi";
    }
}