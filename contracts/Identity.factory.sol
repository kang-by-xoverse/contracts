// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./Identity.sol";

contract IdentityFactory {
    address[] public id;

    function createIdentity(string memory _name) public {
        Identity identity = new Identity(_name);
        id.push(address(identity));
    }
}
