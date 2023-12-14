// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import "forge-std/Test.sol";
import "../../interface.sol";

// @KeyInfo - Total Lost : ~3.2 M USD$
// Attacker : https://etherscan.io/address/0xc1f2b71a502b551a65eee9c96318afdd5fd439fa
// Attack Contract : https://etherscan.io/address/0x0a3340129816a86b62b7eafd61427f743c315ef8
// Vulnerable Contract : https://etherscan.io/address/0x9ab6b21cdf116f611110b048987e58894786c244
// Attack Tx :https://etherscan.io/tx/0xfeedbf51b4e2338e38171f6e19501327294ab1907ab44cfd2d7e7336c975ace7

// @Info
// Vulnerable Contract Code : https://etherscan.io/address/0x9ab6b21cdf116f611110b048987e58894786c244#code

// @Analysis
// Post-mortem : https://www.google.com/
// Twitter Guy : https://twitter.com/BlockSecTeam/status/1723229393529835972
// Hacking God : https://www.google.com/

contract FloorTest is Test {
    // known
    address private constant creator = address(0xc1f2b71A502B551a65Eee9C96318aFdD5fd439fA);
    address private constant suspect = address(0x0A3340129816a86b62b7eafD61427f743c315ef8);

    // to guess
    // IERC20 cbETH = IERC20(0xBe9895146f7AF43049ca1c1AE358B0541Ea49704);
    // IAaveFlashloan aaveV3 = IAaveFlashloan(0x87870Bca3F3fD6335C3F4ce8392D69350B4fA4E2);
    // IPRM PRM = IPRM(0x9AB6b21cDF116f611110b048987E58894786C244);
    // address liquidablePosition = 0x011992114806E2c3770df73fa0D19884215db85F;
    // IERC20Indexable rcbETH_c = IERC20Indexable(0xD0Db31473CaAd65428ba301D2174390d11D0C788);
    // IERC20Indexable rcbETH_d = IERC20Indexable(0x7beBe1D451291099D8e05fA2676412c09C96dFbC);
    // IERC20 R = IERC20(0x183015a9bA6fF60230fdEaDc3F43b3D788b13e21);
    // Uni_Pair_V3 R_USDC_Pair = Uni_Pair_V3(0x190Ed02Adaf1Ef8039fCD3f006b42553467D5045);
    // Uni_Pair_V3 WETH_USDC_Pair = Uni_Pair_V3(0x88e6A0c2dDD26FEEb64F039a2c41296FcB3f5640);
    // ICurve cbETH_ETH_Pool = ICurve(0x5FAE7E604FC3e24fd43A72867ceBaC94c65b404A);
    // IRaftOracle RaftOracle = IRaftOracle(0x3cd40D6e8426C9f02Fe7B23867661377E462df3d);
    // IERC20 USDC = IERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);
    // WETH9 WETH = WETH9(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);
    // address expContract = 0x0A3340129816a86b62b7eafD61427f743c315ef8;

    function setUp() public {
        vm.createSelectFork("mainnet", 18_543_485);

        // vm.label(address(aaveV3), "aaveV3");
        // vm.label(address(PRM), "PRM");
        // vm.label(address(rcbETH_c), "rcbETH_c");
        // vm.label(address(rcbETH_d), "rcbETH_d");
        // vm.label(address(R), "R");
        // vm.label(address(R_USDC_Pair), "R_USDC_Pair");
        // vm.label(address(WETH_USDC_Pair), "WETH_USDC_Pair");
        // vm.label(address(WETH_USDC_Pair), "WETH_USDC_Pair");
        // vm.label(address(RaftOracle), "RaftOracle");
        // vm.label(address(USDC), "USDC");
        // vm.label(address(WETH), "WETH");
        // vm.label(address(cbETH), "cbETH");
    }

    function testSignature0() public {
        vm.startPrank(address(creator), address(creator));

        // non-addresses
        suspect.call(abi.encodeWithSelector(
            0x4aa9f8ac));

        vm.stopPrank();
    }

    function testSignature1() public {
        vm.startPrank(address(creator), address(creator));

        // non-addresses
        suspect.call(abi.encodeWithSelector(
            0x4aa9f8ac,
            0xab4aab4bab4cab4dab4eab4fab50ab51ab52ab53ab54ab55ab56ab57ab58ab59));

        vm.stopPrank();
    }

    function testSignature2() public {
        vm.startPrank(address(creator), address(creator));

        // non-addresses
        suspect.call(abi.encodeWithSelector(
            0x4aa9f8ac,
            0xab6aab6bab6cab6dab6eab6fab70ab71ab72ab73ab74ab75ab76ab77ab78ab79,
            0xab7aab7bab7cab7dab7eab7fab80ab81ab82ab83ab84ab85ab86ab87ab88ab89));

        vm.stopPrank();
    }

    function testSignature3() public {
        vm.startPrank(address(creator), address(creator));

        // non-addresses
        suspect.call(abi.encodeWithSelector(
            0x4aa9f8ac,
            0xab8aab8bab8cab8dab8eab8fab90ab91ab92ab93ab94ab95ab96ab97ab98ab99,
            0xab9aab9bab9cab9dab9eab9faba0aba1aba2aba3aba4aba5aba6aba7aba8aba9,
            0xabaaabababacabadabaeabafabb0abb1abb2abb3abb4abb5abb6abb7abb8abb9));

        vm.stopPrank();
    }

    function testSignature4() public {
        vm.startPrank(address(creator), address(creator));

        // non-addresses
        suspect.call(abi.encodeWithSelector(
            0x4aa9f8ac,
            0xab8aab8bab8cab8dab8eab8fab90ab91ab92ab93ab94ab95ab96ab97ab98ab99,
            0xab9aab9bab9cab9dab9eab9faba0aba1aba2aba3aba4aba5aba6aba7aba8aba9,
            0xabaaabababacabadabaeabafabb0abb1abb2abb3abb4abb5abb6abb7abb8abb9,
            0xabbaabbbabbcabbdabbeabbfabc0abc1abc2abc3abc4abc5abc6abc7abc8abc9));

        vm.stopPrank();
    }
}
