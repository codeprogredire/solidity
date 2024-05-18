pragma solidity ^0.8.0;

contract Conditions{
    event Print(uint output);

    uint public num; //state variable to store a number

    //it is a public function. means it can be called from within the cotract and alo externally
    function set(uint _num)public{
        num=_num;
    }

    //declared as view function meaning that the function does not change the state of any variable
    //view functions in solidity do not require any gas.
    function get() public view returns(uint){
        return num;
    }

    function foo(uint x) public pure returns(uint){
        if(x<10){
            return 0;
        }
        else if(x<20){
            return 1;
        }
        else{
            return 0;
        }
    }

    function loop() public pure{
        for(uint i=0;i<10;i++){
            if(i==3){
                continue;
            }
            if(i==5){
                break;
            }
        }
    }

    function callfoo() public{
        uint val=foo(3);
        emit Print(val);
    }
    



}