// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";
contract FundMeTest is Test {

    uint256 favNumber = 0;
    bool greatCourse = false;
    FundMe fundMe;

    function setUp() external { 
        fundMe = new FundMe();
    }

    // function testDemo() public { 
    //     assertEq(favNumber, 1337);
    //     assertEq(greatCourse, true);
    //     console.log("This will get printed second!");
    //     console.log("Updraft is changing lives!");
    //     console.log("You can print multiple things, for example this is a uint256, followed by a bool:", favNumber, greatCourse);
    // }

    function testOwnerIsMsgSender() public {
        assertEq(fundMe.i_owner(), address(this));

    }


 }