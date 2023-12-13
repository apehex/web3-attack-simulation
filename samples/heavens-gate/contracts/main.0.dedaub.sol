// Decompiled by library.dedaub.com
// 2023.12.08 20:47 UTC
// Compiled using the solidity compiler version 0.8.20


// Data structures and variables inferred from the use of storage instructions
uint256 stor_0_0_19; // STORAGE[0x0] bytes 0 to 19
uint256 stor_1_0_19; // STORAGE[0x1] bytes 0 to 19
uint256 stor_2_0_19; // STORAGE[0x2] bytes 0 to 19
uint256 _uniswapV2Call; // STORAGE[0x3] bytes 0 to 19
uint256 stor_4_0_19; // STORAGE[0x4] bytes 0 to 19



function _SafeMul(uint256 varg0, uint256 varg1) private {
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function function_selector() public payable {
}

function uniswapV2Call(address _sender, uint256 _amount0, uint256 _amount1, bytes _data) public nonPayable {
    require(msg.data.length - 4 >= 128);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(msg.data[4 + _data] <= uint64.max);
    v0 = _data.word0;
    require(v0.data <= msg.data.length);
    if (32 < 32) {
        v1 = v2 = uint256(v3);
    }
    MEM[52 + MEM[64] + 32] = keccak256(bytes20(tx.origin << 96));
    v4 = new uint256[](116 + MEM[64] - v4 - 32);
    v5 = v4.length;
    v6 = v4.data;
    require(keccak256(v4) == v1);
    require(36 + _data + msg.data[4 + _data] - (36 + _data) >= 32);
    v7, /* bool */ v8 = _uniswapV2Call.approve(stor_2_0_19, uint256.max).gas(msg.gas);
    require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v8 == bool(v8));
    v9, /* bool */ v10 = stor_4_0_19.approve(stor_2_0_19, uint256.max).gas(msg.gas);
    require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v10 == bool(v10));
    v11 = v12 = 0;
    while (v11 < _data.word1) {
        v13, /* uint256 */ v14 = _uniswapV2Call.balanceOf(this).gas(msg.gas);
        require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(bool(stor_2_0_19.code.size));
        v15 = stor_2_0_19.stake(address(this), v14).gas(msg.gas);
        require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v16, /* uint256 */ v17 = stor_4_0_19.balanceOf(this).gas(msg.gas);
        require(bool(v16), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(bool(stor_2_0_19.code.size));
        v18 = stor_2_0_19.unstake(address(this), v17, 1).gas(msg.gas);
        require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(v11 - uint256.max, Panic(17)); // arithmetic overflow or underflow
        v11 += 1;
    }
    if (!_amount0) {
        v19 = _SafeMul(10031, _amount1);
        require(10000, Panic(18)); // division by zero
        v20 = v19 / 10000;
    } else {
        v21 = _SafeMul(10031, _amount0);
        require(10000, Panic(18)); // division by zero
        v20 = v22 = v21 / 10000;
    }
    v23, /* bool */ v24 = _uniswapV2Call.transfer(msg.sender, v20).gas(msg.gas);
    require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v24 == bool(v24));
}

function 0x8d9410de(address varg0, address varg1, address varg2, address varg3, uint256 varg4) public nonPayable {
    require(msg.data.length - 4 >= 160);
    if (32 < 32) {
        v0 = v1 = uint256(v2);
    }
    MEM[52 + MEM[64] + 32] = keccak256(bytes20(tx.origin << 96));
    v3 = new uint256[](116 + MEM[64] - v3 - 32);
    v4 = v3.length;
    v5 = v3.data;
    require(keccak256(v3) == v0);
    stor_2_0_19 = varg1;
    _uniswapV2Call = varg2;
    stor_4_0_19 = varg3;
    v6, /* address */ v7 = varg0.token0().gas(msg.gas);
    require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v7 == address(v7));
    if (address(v7) - varg2) {
        v8, /* uint256 */ v9 = varg2.balanceOf(varg0).gas(msg.gas);
        require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v10 = _SafeMul(9, v9);
        require(10, Panic(18)); // division by zero
        MEM[32 + MEM[64]] = varg4;
        v11 = new uint256[](32);
        v12 = 0;
        while (v12 < 32) {
            MEM[32 + (v12 + v11)] = MEM[32 + (MEM[64] + v12)];
            v12 += 32;
        }
        MEM[v11.data + 32] = 0;
        require(bool((address(varg0)).code.size));
        v13 = varg0.swap(0, v10 / 10, address(this), v11).gas(msg.gas);
        require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    } else {
        v14, /* uint256 */ v15 = varg2.balanceOf(varg0).gas(msg.gas);
        require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v16 = _SafeMul(9, v15);
        require(10, Panic(18)); // division by zero
        MEM[32 + MEM[64]] = varg4;
        v17 = new uint256[](32);
        v18 = 0;
        while (v18 < 32) {
            MEM[32 + (v18 + v17)] = MEM[32 + (MEM[64] + v18)];
            v18 += 32;
        }
        MEM[v17.data + 32] = 0;
        require(bool((address(varg0)).code.size));
        v19 = varg0.swap(v16 / 10, 0, address(this), v17).gas(msg.gas);
        require(bool(v19), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    v20, /* uint256 */ v21 = varg2.balanceOf(this).gas(msg.gas);
    require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v22, /* bool */ v23 = varg2.approve(stor_0_0_19, uint256.max).gas(msg.gas);
    require(bool(v22), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v23 == bool(v23));
    v24 = new address[](2);
    CALLDATACOPY(v24.data, msg.data.length, 64);
    require(0 < v24.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v25 = v24.data;
    v24[0] = varg2;
    require(1 < v24.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v24[1] = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
    v26 = new address[](v24.length);
    v27 = v28 = v26.data;
    v29 = v30 = v24.data;
    v31 = v32 = 0;
    while (v31 < v24.length) {
        MEM[v27] = address(MEM[v29]);
        v29 += 32;
        v27 += 32;
        v31 += 1;
    }
    require(bool(stor_1_0_19.code.size));
    v33 = stor_1_0_19.swapExactTokensForTokensSupportingFeeOnTransferTokens(v21, 0, v26, address(this), block.timestamp, v34, varg2).gas(msg.gas);
    require(bool(v33), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v35, /* uint256 */ v36 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
    require(bool(v35), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
    v37 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v36).gas(msg.gas);
    require(bool(v37), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v38, /* uint256 */ v39 = msg.sender.call().value(this.balance).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v40 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v40.data, 0, RETURNDATASIZE());
    }
}

function 0xda9100cc(address varg0) public nonPayable {
    require(msg.data.length - 4 >= 32);
    if (32 < 32) {
        v0 = v1 = uint256(v2);
    }
    MEM[52 + MEM[64] + 32] = keccak256(bytes20(tx.origin << 96));
    v3 = new uint256[](116 + MEM[64] - v3 - 32);
    v4 = v3.length;
    v5 = v3.data;
    require(keccak256(v3) == v0);
    if (varg0) {
        v6, /* uint256 */ v7 = varg0.balanceOf(this).gas(msg.gas);
        require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v8, /* bool */ v9 = varg0.transfer(msg.sender, v7).gas(msg.gas);
        require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v9 == bool(v9));
    } else {
        v10 = msg.sender.call().value(this.balance).gas(2300 * !this.balance);
        require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
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

