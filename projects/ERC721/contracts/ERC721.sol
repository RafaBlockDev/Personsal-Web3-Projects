// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFT is ERC721 {
    uint256 price = 1 * 10**18 ether;

    constructor() ERC721("NFT", "MEXA") {}

    function mint(address to, uint256 tokenId) public {
        require(msg.balance => price, "The price need to be 1 ether or more")
    }

    
}
