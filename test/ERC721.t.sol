// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {ChickenNFT} from "../src/ERC721.sol";
import {ChickenData} from "../src/Data.sol";
import {ChickenController} from "../src/controller.sol";


contract CounterTest is Test {
    ChickenNFT public _chickenNFT;
    ChickenData public _data;
    ChickenController public _controller;
    function setUp() public {
        _chickenNFT = new ChickenNFT(vm.addr(1));
        _data = new ChickenData();
        _controller = new ChickenController(address(_chickenNFT),address(_data));
    }

    // function test_Increment() public {
    //     counter.increment();
    //     assertEq(counter.number(), 1);
    // }

    // function testFuzz_SetNumber(uint256 x) public {
    //     counter.setNumber(x);
    //     assertEq(counter.number(), x);
    // }
}
