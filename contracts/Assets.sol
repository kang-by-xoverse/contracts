// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract AssetsManager is ERC721URIStorage {
    using Counters for Counters.Counter;

    address public meta;
    Counters.Counter private _tokenIds;

    constructor(
        string memory _name,
        string memory _symbol
    ) ERC721(_name, _symbol) {
        meta = msg.sender;
    }

    function mint(string memory tokenURI) public {
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        _safeMint(msg.sender, newItemId);
        // tokenIdToLevels[newItemId] = 0;
        _setTokenURI(newItemId, tokenURI);
    }
}
