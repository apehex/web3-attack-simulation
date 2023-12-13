// Decompiled by library.dedaub.com
// 2023.12.11 01:16 UTC
// Compiled using the solidity compiler version 0.6.6


// Data structures and variables inferred from the use of storage instructions
uint256 stor_4; // STORAGE[0x4]
uint256 stor_5; // STORAGE[0x5]
uint256 _uniswapV3SwapCallback; // STORAGE[0x0] bytes 0 to 19
uint256 stor_1_0_19; // STORAGE[0x1] bytes 0 to 19
uint256 stor_2_0_19; // STORAGE[0x2] bytes 0 to 19
uint256 stor_3_0_19; // STORAGE[0x3] bytes 0 to 19



function function_selector() public payable { 
    revert();
}

function 0x828cc5ce(uint256 varg0, uint256 varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == _uniswapV3SwapCallback, Error('wrong'));
    stor_5 = varg1;
    if (!varg0) {
        require(bool(stor_2_0_19.code.size));
        v0, /* uint256 */ v1 = stor_2_0_19.balanceOf(address(0xb386c1d831eed803f5e8f274a59c91c4c22eeac0)).gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v2 = new uint256[](1);
        require(RETURNDATASIZE() >= 32);
        v1 = v3.length;
        v4 = v5 = v1 - 1;
    }
    stor_4 = v4;
    v3 = new uint256[](1);
    CALLDATACOPY(v3.data, msg.data.length, 1);
    v6 = v7 = 0;
    while (v6 < v3.length) {
        MEM[v6 + v8.data] = MEM[v6 + v3.data];
        v6 += 32;
    }
    if (1) {
        MEM[v8.data] = ~0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & MEM[v8.data];
    }
    require(bool((address(0xb386c1d831eed803f5e8f274a59c91c4c22eeac0)).code.size));
    v9 = address(0xb386c1d831eed803f5e8f274a59c91c4c22eeac0).flash(address(this), 0, v4, 2560).gas(msg.gas);
    require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(bool(stor_2_0_19.code.size));
    v10, /* uint256 */ v11 = stor_2_0_19.balanceOf(this).gas(msg.gas);
    require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v12 = new bytes[](0);
    require(RETURNDATASIZE() >= 32);
    v11 = v12.length;
    if (0) {
        CALLDATACOPY(v12.data, msg.data.length, 0);
        v13 = v12.data;
    }
    MEM[4 + MEM[64]] = address(0xd3b85111c974c350f95532e3f4210a41c4874bb6);
    v14 = new bytes[](v12.length);
    v15 = v16 = 0;
    while (v15 < v12.length) {
        v14[v15] = v12[v15];
        v15 += 32;
    }
    v17 = v18 = v14.data;
    if (0) {
        MEM[v14.data] = ~0x0 & MEM[v14.data];
    }
    require(bool((address(0xb386c1d831eed803f5e8f274a59c91c4c22eeac0)).code.size));
    v19 = address(0xb386c1d831eed803f5e8f274a59c91c4c22eeac0).swap(address(0xd3b85111c974c350f95532e3f4210a41c4874bb6), False, v11, address(0xfffd8963efd1fc6a506488495d951d5263988d25), v14).gas(msg.gas);
    require(bool(v19), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function uniswapV3FlashCallback(uint256 fee0, uint256 fee1, bytes data) public payable { 
    require(msg.data.length - 4 >= 96);
    require(data <= 0x100000000);
    require(data.data <= 4 + (msg.data.length - 4));
    require(!((data.length > 0x100000000) | (data.data + data.length > 4 + (msg.data.length - 4))));
    require(tx.origin == _uniswapV3SwapCallback, Error('wrong'));
    v0 = v1 = 0;
    while (v0 < stor_5) {
        require(bool(stor_2_0_19.code.size));
        v2, /* uint256 */ v3 = stor_2_0_19.balanceOf(this).gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(RETURNDATASIZE() >= 32);
        require(bool(stor_2_0_19.code.size));
        v4, /* uint256 */ v5 = stor_2_0_19.balanceOf(stor_1_0_19).gas(msg.gas);
        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(RETURNDATASIZE() >= 32);
        require(bool((address(0x164afe96912099543bc2c48bb9358a095db8e784)).code.size));
        v6, /* uint256 */ v7 = address(0x164afe96912099543bc2c48bb9358a095db8e784).circulatingSupply().gas(msg.gas);
        require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(RETURNDATASIZE() >= 32);
        if (v5 + v3 > v7) {
            require(bool(stor_2_0_19.code.size));
            v8 = stor_2_0_19.approve(stor_1_0_19, v3).gas(msg.gas);
            require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(bool(stor_1_0_19.code.size));
            v9 = stor_1_0_19.stake(this, v3, 0, 1).gas(msg.gas);
            require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(bool(stor_3_0_19.code.size));
            v10, /* uint256 */ v11 = stor_3_0_19.balanceOf(this).gas(msg.gas);
            require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(RETURNDATASIZE() >= 32);
            require(bool(stor_1_0_19.code.size));
            v12 = stor_1_0_19.unstake(this, v11, 1, 0).gas(msg.gas);
            require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            v0 = v0 + 1;
        }
    }
    require(bool(stor_2_0_19.code.size));
    v13 = stor_2_0_19.transfer(msg.sender, fee1 + stor_4).gas(msg.gas);
    require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public payable { 
    require(msg.data.length - 4 >= 96);
    require(data <= 0x100000000);
    require(data.data <= 4 + (msg.data.length - 4));
    require(!((data.length > 0x100000000) | (data.data + data.length > 4 + (msg.data.length - 4))));
    require(tx.origin == _uniswapV3SwapCallback, Error('wrong'));
    if (amount1Delta <= 0) {
        v0 = v1 = 0 - amount1Delta;
    }
    require(bool(stor_2_0_19.code.size));
    v2 = stor_2_0_19.transfer(msg.sender, v0).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function function_selector( function_selector) public payable { 
    MEM[64] = 128;
    require(!msg.value);
    if (msg.data.length >= 4) {
        if (0x828cc5ce == function_selector >> 224) {
            0x828cc5ce();
        } else if (0xe9cbafb0 == function_selector >> 224) {
            uniswapV3FlashCallback(uint256,uint256,bytes);
        } else if (0xfa461e33 == function_selector >> 224) {
            uniswapV3SwapCallback(int256,int256,bytes);
        }
    }
    ();
}
