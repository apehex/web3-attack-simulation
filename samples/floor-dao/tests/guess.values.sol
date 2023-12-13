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

    // to guess
    // IERC20 floor = IERC20(0xf59257E961883636290411c11ec5Ae622d19455e);
    // IsFloor sFloor = IsFloor(0x164AFe96912099543BC2c48bb9358a095Db8e784);
    // IERC20 gFloor = IERC20(0xb1Cc59Fc717b8D4783D41F952725177298B5619d);
    // IERC20 WETH = IERC20(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);
    // uint256 flashAmount;
    // IFloorStaking staking = IFloorStaking(0x759c6De5bcA9ADE8A1a2719a31553c4B7DE02539);
    // Uni_Pair_V3 floorUniPool = Uni_Pair_V3(0xB386c1d831eED803F5e8F274A59C91c4C22EEAc0);

    function setUp() public {
        vm.createSelectFork("mainnet", 18_068_772);

        // vm.label(address(floor), "floor");
        // vm.label(address(sFloor), "sFloor");
        // vm.label(address(gFloor), "gFloor");
        // vm.label(address(WETH), "WETH");
        // vm.label(address(staking), "FloorStaking");
        // vm.label(address(floorUniPool), "Pool");
    }

    function testSignature2() public {
        vm.startPrank(address(creator), address(creator));

        // non-addresses
        suspect.call(abi.encodeWithSelector(
            0x828cc5ce,
            0xab6aab6bab6cab6dab6eab6fab70ab71ab72ab73ab74ab75ab76ab77ab78ab79,
            0xab7aab7bab7cab7dab7eab7fab80ab81ab82ab83ab84ab85ab86ab87ab88ab89));

        vm.stopPrank();
    }

    function testSignature3() public {
        vm.startPrank(address(creator), address(creator));

        // non-addresses
        suspect.call(abi.encodeWithSelector(
            0x828cc5ce,
            0xab8aab8bab8cab8dab8eab8fab90ab91ab92ab93ab94ab95ab96ab97ab98ab99,
            0xab9aab9bab9cab9dab9eab9faba0aba1aba2aba3aba4aba5aba6aba7aba8aba9));

        vm.stopPrank();
    }

    function testSignature4() public {
        vm.startPrank(address(creator), address(creator));

        // non-addresses
        suspect.call(abi.encodeWithSelector(
            0x828cc5ce,
            0xab8aab8bab8cab8dab8eab8fab90ab91ab92ab93ab94ab95ab96ab97ab98ab99,
            0xab9aab9bab9cab9dab9eab9faba0aba1aba2aba3aba4aba5aba6aba7aba8aba9));

        vm.stopPrank();
    }

    // function testExploit() public {
        // emit log_named_decimal_uint("floor token balance after exploit", profitAmount, floor.decimals());
        // emit log_named_decimal_uint("weth balance after swap", WETH.balanceOf(address(this)), WETH.decimals());
    // }
}
