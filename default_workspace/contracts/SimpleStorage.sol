// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {

    uint256 favoriteNumber;
    bool favoriteBool;

    struct People {
        uint favoriteNumber;
        string name;
    }

    People[] public people;

    mapping(string => uint256) public nameToFavoriteNumber;

    function addPerson(string memory _name, uint _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;

    }

    function retrieve() public view returns(uint256) {
        return(favoriteNumber);
    }

}