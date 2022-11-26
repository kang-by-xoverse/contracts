// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./Identity.factory.sol";
import "./Assets.sol";

contract Meta {
    struct State {
        string name;
        string description;
        address owner;
        // bool enablePassports;
        // bool enableDelivery;
        // bool enableBridges;
        // string[] metaAccesslist;
        // string[] idBlacklist;
    }

    State state;

    address public identity;
    address public assets;

    constructor(
        string memory _name,
        string memory _description // bool _enablePassports,
    ) {
        state.name = _name;
        state.description = _description;
        state.owner = tx.origin;
        // state.enablePassports = _enablePassports;
        // state.enableDelivery = _enableDelivery;
        // state.enableBridges = _enableBridges;
        // state.metaAccesslist = _metaAccesslist;
        // state.idBlacklist = _idBlacklist;

        _generateIdentityFactory();
        _generateAssetsManager();
        // _generateDeliveryManager();
    }

    function _generateIdentityFactory() private {
        IdentityFactory identityFactory = new IdentityFactory();
        identity = address(identityFactory);
    }

    function _generateAssetsManager() private {
        AssetsManager assetsManager = new AssetsManager("Assets", "ASSET");
        assets = address(assetsManager);
    }
}
