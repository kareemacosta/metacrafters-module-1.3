pragma solidity ^0.8.0;

contract Example {
    event Event1(string message);
    event Event2(address indexed from, uint256 value);
    event Event3(bool success);

    function triggerEvent1(string memory message) public {
        emit Event1(message);
    }

    function triggerEvent2(address payable to, uint256 value) public {
        to.transfer(value);
        emit Event2(msg.sender, value);
    }

    function triggerEvent3(bool success) public {
        emit Event3(success);
    }
}
