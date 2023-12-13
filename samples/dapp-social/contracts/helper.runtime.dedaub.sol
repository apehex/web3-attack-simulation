// Decompiled by library.dedaub.com
// 2023.12.12 11:36 UTC
// Compiled using the solidity compiler version 0.8.4


// Data structures and variables inferred from the use of storage instructions
uint256 _killMe; // STORAGE[0x0] bytes 0 to 19



function function_selector() public payable { 
    revert();
}

function 0x42c59677(address varg0, address varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    0x7eb(varg2);
    require(msg.sender == _killMe);
    if (1 != varg2) {
        if (2 == varg2) {
            require(bool((address(varg1)).code.size));
            v0, /* uint256 */ v1 = varg1.balanceOf(varg0).gas(msg.gas);
            require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            0x7eb(v1);
            v2 = v3 = 0;
            while (v2 < 68) {
                MEM[v2 + MEM[64]] = MEM[v2 + (MEM[64] + 32)];
                v2 += 32;
            }
            if (v2 > 68) {
                MEM[68 + MEM[64]] = 0;
            }
            v4, /* uint256 */ v5 = varg0.withdrawTokens(varg1, v1).gas(msg.gas);
            if (RETURNDATASIZE() != 0) {
                v6 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
            }
            require(v4);
            require(bool((address(varg1)).code.size));
            v7, /* uint256 */ v8 = varg1.balanceOf(address(this)).gas(msg.gas);
            require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            0x7eb(v8);
            if (this.balance >= 0) {
                if (varg1.code.size) {
                    v9 = v10 = 0;
                    while (v9 < 68) {
                        MEM[v9 + MEM[64]] = MEM[v9 + (MEM[64] + 32)];
                        v9 += 32;
                    }
                    if (v9 > 68) {
                        MEM[68 + MEM[64]] = 0;
                    }
                    v11, /* uint256 */ v12, /* uint256 */ v13, /* uint256 */ v14 = varg1.transfer(_killMe, v8).gas(msg.gas);
                    if (RETURNDATASIZE() == 0) {
                        v15 = v16 = 96;
                    } else {
                        v15 = v17 = new bytes[](RETURNDATASIZE());
                        RETURNDATACOPY(v17.data, 0, RETURNDATASIZE());
                    }
                    if (!v11) {
                        require(!MEM[v15], v14, MEM[v15]);
                        v18 = new bytes[](v19.length);
                        v20 = v21 = 0;
                        while (v20 < v19.length) {
                            v18[v20] = v19[v20];
                            v20 += 32;
                        }
                        if (v20 > v19.length) {
                            v18[32][v19.length] = 0;
                        }
                        revert(Error(v18, v22, 'SafeERC20: low-level call failed'));
                    } else if (MEM[v15]) {
                        require(32 + v15 + MEM[v15] - (32 + v15) >= 32);
                        require(MEM[32 + v15] == bool(MEM[32 + v15]));
                        require(MEM[32 + v15], Error('SafeERC20: ERC20 operation did not succeed'));
                    }
                } else {
                    MEM[4 + MEM[64]] = 32;
                    revert(Error('Address: call to non-contract'));
                }
            } else {
                MEM[4 + MEM[64]] = 32;
                revert(Error('Address: insufficient balance for call'));
            }
        }
    } else {
        v23 = v24 = 0;
        while (v23 < 68) {
            MEM[v23 + MEM[64]] = MEM[v23 + (MEM[64] + 32)];
            v23 += 32;
        }
        if (v23 > 68) {
            MEM[68 + MEM[64]] = 0;
        }
        v25, /* uint256 */ v26 = varg0.lockTokens(0x65e6115c00000000000000000000000000000000000000000000000000000000 | uint224(_killMe), _killMe, uint8(0)).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v27 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v27.data, 0, RETURNDATASIZE());
        }
        require(v25);
    }
}

function killMe() public payable { 
    require(msg.sender == _killMe);
    selfdestruct(_killMe);
}

function 0x7eb(uint256 varg0) private { 
    return ;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function function_selector( function_selector) public payable { 
    MEM[64] = 128;
    require(!msg.value);
    if (msg.data.length >= 4) {
        if (0x42c59677 == function_selector >> 224) {
            0x42c59677();
        } else if (0xb603cd80 == function_selector >> 224) {
            killMe();
        }
    }
    ();
}
