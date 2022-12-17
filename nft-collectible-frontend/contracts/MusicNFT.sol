//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4; 
import '@openzeppelin/contracts/token/ERC721/ERC721.sol';
import '@openzeppelin/contracts/access/Ownable.sol';

contract MusicNFT is ERC721, Ownable {
    uint256 public mintPrice;
    uint256 public totalSupply;
    uint256 public maxSupply;
    uint256 public maxPerWallet;
    bool public isPublicMintEnabled;
    string internal baseTokenUri;
    address payable public withdrawWallet;
    mapping (address => uint256) public wallerMints;
    constructor() payable ERC721('MusicNFT','RP'){
        mintPrice = 0.02 ether;
        totalSupply = 0;
        maxSupply = 1000;
        maxPerWallet = 3;
        //set withdraw wallet address
    }
    function setIsPublicMintEnabled(bool isPublicMintEnabled_) external onlyOwner{
        
    }
}

