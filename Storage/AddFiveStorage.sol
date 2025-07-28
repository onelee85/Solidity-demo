// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

import {SimpleStorage, SimpleStorage2} from "Storage/SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{

    function store(uint256 _favoriteNumber) public override  {
        myFavoriteNumber = _favoriteNumber + 5;
    }
}