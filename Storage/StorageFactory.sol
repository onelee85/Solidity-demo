// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

import {SimpleStorage, SimpleStorage2} from "Storage/SimpleStorage.sol";

contract StorageFactory{

    SimpleStorage[] public listOfsimpleStorages;

    function createSimpleStorageContract()public {
        listOfsimpleStorages.push(new SimpleStorage());
    }

    function sfStore(uint _index, uint _storageNum) public {
        listOfsimpleStorages[_index].store(_storageNum);
    }

    function sfGet(uint _index) public view returns(uint){
        return listOfsimpleStorages[_index].retrieve();
    }
}