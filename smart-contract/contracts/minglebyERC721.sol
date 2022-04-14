// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract minglebyERC721 is ERC721URIStorage {
    uint256 mingleby_TOKEN_ID;

    constructor() ERC721("CleverNFT", "CN") {}

    function mintNFT(address _userOne, address _userTwo, string memory tokenURI) public {
        _mint(_userOne, mingleby_TOKEN_ID);
        _setTokenURI(mingleby_TOKEN_ID, tokenURI);
         mingleby_TOKEN_ID++;

        _mint(_userTwo,mingleby_TOKEN_ID);
        _setTokenURI(mingleby_TOKEN_ID, tokenURI);
        mingleby_TOKEN_ID++;
    }
}