// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";
import {ETHBOG} from "../src/ERC20BOG.sol";

contract ETHBOGScript is Script {
    function setUp() public {}

    function run() public {
        vm.broadcast();
        address owner = vm.envAddress("OWNER");
        ETHBOG ethBog = new ETHBOG(owner);
        console.log("ETHBOG", address(ethBog));
        vm.stopBroadcast();
    }
}
