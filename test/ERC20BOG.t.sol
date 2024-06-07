// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "forge-std/Test.sol";
import "../src/ERC20BOG.sol";
import "forge-std/console.sol";

contract ETHBOGTest is Test {
    ETHBOG private ethbog;
    address private owner = address(0x123);

    function setUp() public {
        ethbog = new ETHBOG(owner);
    }

    function testInitialSupply() public {
        uint256 initialSupply = 1000000 * 10 ** ethbog.decimals();
        assertEq(ethbog.balanceOf(owner), initialSupply);
    }

    function testPauseAndUnpause() public {
        vm.prank(owner);
        ethbog.pause();
        assertTrue(ethbog.paused());

        vm.prank(owner);
        ethbog.unpause();
        assertFalse(ethbog.paused());
    }
}
