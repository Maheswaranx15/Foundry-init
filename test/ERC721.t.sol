// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/console.sol";
import {Test, console2} from "forge-std/Test.sol";
import {ChickenNFT} from "../src/ERC721.sol";
import {ChickenData} from "../src/Data.sol";
import {ChickenController} from "../src/controller.sol";


contract CounterTest is Test {
    ChickenNFT public _chickenNFT;
    ChickenData public _data;
    ChickenController public _controller;
    function setUp() public {
        vm.prank(vm.addr(1));
        _chickenNFT = new ChickenNFT("ChickenNFT","CNFT","https://ipfs.io/ipfs/");
        _data = new ChickenData();
        _controller = new ChickenController(address(_chickenNFT),address(_data));
    }

    function test_mint() public {
        vm.prank(vm.addr(1));
        _chickenNFT.mintNFT(vm.addr(2));
    }
}
