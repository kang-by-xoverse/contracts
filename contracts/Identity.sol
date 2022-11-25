// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Identity {
    struct State {
        string name;
        address owner;
        mapping(string => string) metadata;
    }

    State public state;

    constructor(string memory _name) {
        state.name = _name;
        state.owner = tx.origin;
    }

    function setMetadata(string memory _key, string memory _value) public {
        state.metadata[_key] = _value;
    }

    function getMetadata(
        string memory _key
    ) public view returns (string memory) {
        return state.metadata[_key];
    }
}
