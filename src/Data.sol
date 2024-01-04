// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ChickenData {
    
    struct NftData {
        address owner;
        uint256 size;
        uint256 strikePrice;
        bool buyCall;
        uint256 expirationDate;
        uint256 lastFedAt;
        uint256 feedInterval;
        bool status;
        uint256 tokenId;
    }

    mapping(uint256 => NftData) public nftInfo;
    
    function storeNFTData(NftData memory _nftData) external {
        _nftData.lastFedAt = block.timestamp;
        nftInfo[_nftData.tokenId] = _nftData;
    }

    function getNFTDetails(uint256 tokenId) external view returns (NftData memory) {
        NftData memory nft = nftInfo[tokenId];
        return nft;
    }

    function updateLastFed(uint256 _newLastFed, uint256 _tokenId) external returns (uint256, uint256) {
        require(msg.sender == nftInfo[_tokenId].owner, "You are not the owner of this NFT");
        nftInfo[_tokenId].lastFedAt = _newLastFed;
        return (nftInfo[_tokenId].lastFedAt, _tokenId);
    }

}