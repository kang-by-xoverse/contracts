// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./Meta.sol";

contract MetaFactory {
    event MetaCreated(address metaAddress, address owner);

    function createMeta(
        string memory _name,
        string memory _description,
        bool _enablePassports,
        bool _enableDelivery,
        bool _enableBridges,
        string[] memory _metaAccesslist,
        string[] memory _idBlacklist
    ) public {
        Meta meta = new Meta(
            _name,
            _description,
            _enablePassports,
            _enableDelivery,
            _enableBridges,
            _metaAccesslist,
            _idBlacklist
        );
        emit MetaCreated(address(meta), msg.sender);
    }
}
