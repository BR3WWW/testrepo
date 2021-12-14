// SPDX-License-Identifier: MIT Test
pragma solidity ^0.8.0;

contract SimpleStorage {

    uint256 favoriteNumber;
    bool favoriteBool;

    struct People {
        uint favoriteNumber;
        string name;
    }

    People[] public people;

    function addPerson(string memory _name, uint _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
    }
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;

    }

    function retrieve() public view returns(uint256) {
        return(favoriteNumber);
    }

}