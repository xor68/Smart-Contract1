// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

contract SimpleStorage {

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;


    mapping(string => uint256) nameToFavoriteNumber;

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    //mapping(string => uint256) public nameToFavoriteNumber;
    function PersonToNumber (string memory _name) public view returns (uint256) {
        return nameToFavoriteNumber[_name];
    }

    function NumberToPerson(uint256 _num) public view returns (string memory) {
        return people[_num].name;
    }

    function dimension () public view returns (uint256) {
        return people.length;
    }

}
