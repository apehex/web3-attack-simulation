// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import "forge-std/Test.sol";
import "../../interface.sol";

// @KeyInfo -- Total Lost : ~40 eth
// Attacker : https://etherscan.io/address/0x4453aed57c23a50d887a42ad0cd14ff1b819c750
// Attack Contract : https://etherscan.io/address/0x6ce5a85cff4c70591da82de5eb91c3fa38b40595
// Attacker Transaction : https://explorer.phalcon.xyz/tx/eth/0x1274b32d4dfacd2703ad032e8bd669a83f012dde9d27ed92e4e7da0387adafe4

// @Analysis
// https://twitter.com/PeckShieldAlert/status/1698962105058361392
// https://medium.com/floordao/floor-post-mortem-incident-summary-september-5-2023-e054a2d5afa4

contract FloorTest is Test {
    // known
    address private constant creator = address(0x4453AeD57C23a50d887a42ad0CD14ff1b819C750);
    address private constant suspect = address(0x6cE5a85CFF4c70591DA82De5eb91c3Fa38B40595);

    function setUp() public {
        vm.createSelectFork("mainnet", 18_068_772);
    }

    function testSelector1() public {
        vm.startPrank(address(creator), address(creator));

        // non-addresses
        suspect.call(abi.encodeWithSelector(
            0xfa461e33));

        vm.stopPrank();
    }

    function testSelector2() public {
        vm.startPrank(address(creator), address(creator));

        // non-addresses
        suspect.call(abi.encodeWithSelector(
            0xe9cbafb0));

        vm.stopPrank();
    }

    function testSelector3() public {
        vm.startPrank(address(creator), address(creator));

        // non-addresses
        suspect.call(abi.encodeWithSelector(
            0x828cc5ce));

        vm.stopPrank();
    }

    // function testExploit() public {
        // emit log_named_decimal_uint("floor token balance after exploit", profitAmount, floor.decimals());
        // emit log_named_decimal_uint("weth balance after swap", WETH.balanceOf(address(this)), WETH.decimals());
    // }
}
