// Decompiled by library.dedaub.com
// 2023.12.13 02:36 UTC
// Compiled using the solidity compiler version 0.8.18


// Data structures and variables inferred from the use of storage instructions
uint256 stor_11; // STORAGE[0x11]
uint256 stor_0_0_19; // STORAGE[0x0] bytes 0 to 19
uint256 stor_1_0_19; // STORAGE[0x1] bytes 0 to 19
uint256 _executeOperation; // STORAGE[0x3] bytes 0 to 19
uint256 stor_7_0_19; // STORAGE[0x7] bytes 0 to 19
uint256 stor_8_0_19; // STORAGE[0x8] bytes 0 to 19
uint256 stor_a_0_19; // STORAGE[0xa] bytes 0 to 19
uint256 _onFlashLoan; // STORAGE[0xb] bytes 0 to 19
uint256 stor_c_0_19; // STORAGE[0xc] bytes 0 to 19
uint256 stor_d_0_19; // STORAGE[0xd] bytes 0 to 19
uint256 _uniswapV3SwapCallback; // STORAGE[0xe] bytes 0 to 19
uint256 owner_f_0_19; // STORAGE[0xf] bytes 0 to 19
uint256 owner_10_0_19; // STORAGE[0x10] bytes 0 to 19
uint256 stor_26_0_19; // STORAGE[0x26] bytes 0 to 19
uint256 owner_27_0_19; // STORAGE[0x27] bytes 0 to 19



function 0x11702872(uint256 varg0) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    0x3212(varg0);
    require(msg.sender == owner_27_0_19);
    require(varg0 < 20, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(bool((address(address(STORAGE[varg0 + 18]))).code.size));
    v0 = address(STORAGE[varg0 + 18]).call(uint32(0x721348d)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function onFlashLoan(address initiator, address token, uint256 amount, uint256 fee, bytes data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 160);
    0x32a9(initiator);
    0x32a9(token);
    0x3212(amount);
    0x3212(fee);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.length <= uint64.max);
    require(data.data + data.length <= 4 + (msg.data.length - 4));
    require(msg.sender == _onFlashLoan);
    v0 = new bytes[](data.length);
    MEM[36 + MEM[64] + 32] = token;
    MEM[36 + MEM[64] + 64] = amount;
    MEM[36 + MEM[64] + 96] = fee;
    MEM[36 + MEM[64] + 128] = 160;
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    MEM[64] = v0.data + (data.length + 31 & ~0x1f);
    MEM[MEM[64] + 32] = uint224(address(initiator)) | bytes4(0x23e30c8b00000000000000000000000000000000000000000000000000000000);
    v1 = v2 = 0;
    while (v1 < v0.data + (data.length + 31 & ~0x1f) - MEM[64] - 32) {
        MEM[MEM[64] + v1] = MEM[MEM[64] + 32 + v1];
        v1 = v1 + 32;
    }
    MEM[MEM[64] + (v0.data + (data.length + 31 & ~0x1f) - MEM[64] - 32)] = 0;
    v3, /* uint256 */ v4 = stor_26_0_19.delegatecall(MEM[(MEM[64]) len (MEM[64] + (v0.data + (data.length + 31 & ~0x1f) - MEM[64] - 32) - MEM[64])], MEM[(MEM[64]) len 0]).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v5 = new bytes[](RETURNDATASIZE());
        v4 = v5.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    require(bool(v3) == True);
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9;
}

function 0x3b0113a4() public nonPayable { 
    require(msg.sender == owner_27_0_19);
    v0 = 0x3a31(stor_11);
    stor_11 = v0;
}

function 0x3f6a5f0e() public payable { 
    require(msg.sender == owner_27_0_19);
    v0 = new uint256[](0);
    v1 = v0.data;
    v2 = v3 = 0;
    while (v2 < 68) {
        MEM[MEM[64] + v2] = MEM[MEM[64] + 32 + v2];
        v2 = v2 + 32;
    }
    MEM[MEM[64] + 68] = 0;
    v4, /* uint256 */ v5 = stor_26_0_19.delegatecall(0x3f6a5f0e, v0).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v6 = new bytes[](RETURNDATASIZE());
        v5 = v6.data;
        RETURNDATACOPY(v5, 0, RETURNDATASIZE());
    }
    require(bool(v4) == True);
    v7 = _SafeMul(this.balance, 9);
    v8 = _SafeDiv(v7, 10);
    require(bool(stor_c_0_19.code.size));
    v9 = stor_c_0_19.exchange(0, 1, this.balance, v8, True, address(this)).value(this.balance).gas(msg.gas);
    require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[(v10.data) len 4935] = 0x6080604052739ab6b21cdf116f611110b048987e58894786c2446000806101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555073be9895146f7af43049ca1c1ae358b0541ea49704600160006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555073d0db31473caad65428ba301d2174390d11d0c788600260006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555073183015a9ba6ff60230fdeadc3f43b3d788b13e21600360006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550733cd40d6e8426c9f02fe7b23867661377e462df3d600460006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550737bebe1d451291099d8e05fa2676412c09c96dfbc600560006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555034801561020d57600080fd5b5033600660006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff1602179055506110e98061025e6000396000f3fe6080604052600436106100385760003560e01c80630721348d14610044578063aa429e661461005b578063c5d9a359146100845761003f565b3661003f57005b600080fd5b34801561005057600080fd5b5061005961009b565b005b34801561006757600080fd5b50610082600480360381019061007d9190610bdc565b610430565b005b34801561009057600080fd5b50610099610573565b005b600660009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff16146100f557600080fd5b6000600460009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16630fdb11cf6040518163ffffffff1660e01b815260040160408051808303816000875af1158015610165573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906101899190610c3f565b5090506000600260009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff166370a08231306040518263ffffffff1660e01b81526004016101e99190610c8e565b602060405180830381865afa158015610206573d6000803e3d6000fd5b505050506040513d601f19601f8201168201806040525081019061022a9190610ca9565b90506000600560009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff166370a08231306040518263ffffffff1660e01b81526004016102899190610c8e565b602060405180830381865afa1580156102a6573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906102ca9190610ca9565b905060006040518060c00160405280600073ffffffffffffffffffffffffffffffffffffffff1681526020016000815260200160008152602001600060ff1681526020016000801b81526020016000801b81525090506000600167120a871cc002000086866103399190610d05565b6103439190610d76565b61034d9190610da7565b9050828111156104295760008054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663171672b1600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff16306000600188876103c79190610da7565b6001670de0b6b3a76400008a6040518963ffffffff1660e01b81526004016103f6989796959493929190610f53565b600060405180830381600087803b15801561041057600080fd5b505af1158015610424573d6000803e3d6000fd5b505050505b5050505050565b600660009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff161461048a57600080fd5b8073ffffffffffffffffffffffffffffffffffffffff1663a9059cbb338373ffffffffffffffffffffffffffffffffffffffff166370a08231306040518263ffffffff1660e01b81526004016104e09190610c8e565b602060405180830381865afa1580156104fd573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906105219190610ca9565b6040518363ffffffff1660e01b815260040161053e929190610fd1565b600060405180830381600087803b15801561055857600080fd5b505af115801561056c573d6000803e3d6000fd5b5050505050565b600660009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff16146105cd57600080fd5b6000600460009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16630fdb11cf6040518163ffffffff1660e01b815260040160408051808303816000875af115801561063d573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906106619190610c3f565b509050600067120a871cc002000082671bc16d674ec800006106839190610d05565b61068d9190610d76565b9050600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663095ea7b360008054906101000a900473ffffffffffffffffffffffffffffffffffffffff167fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff6040518363ffffffff1660e01b815260040161072c929190610fd1565b600060405180830381600087803b15801561074657600080fd5b505af115801561075a573d6000803e3d6000fd5b5050505060006040518060c00160405280600073ffffffffffffffffffffffffffffffffffffffff1681526020016000815260200160008152602001600060ff1681526020016000801b81526020016000801b815250905060008054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663171672b1600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1630671bc16d674ec800006001876001670de0b6b3a7640000896040518963ffffffff1660e01b815260040161084d989796959493929190611035565b600060405180830381600087803b15801561086757600080fd5b505af115801561087b573d6000803e3d6000fd5b505050506000600260009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff166370a08231306040518263ffffffff1660e01b81526004016108dc9190610c8e565b602060405180830381865afa1580156108f9573d6000803e3d6000fd5b505050506040513d601f19601f8201168201806040525081019061091d9190610ca9565b9050671bc16d674ec80000811115610a43576000600167120a871cc002000086671bc16d674ec80000856109519190610da7565b61095b9190610d05565b6109659190610d76565b61096f9190610da7565b90506000811115610a415760008054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663171672b1600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff163060006001866001670de0b6b3a76400008b6040518963ffffffff1660e01b8152600401610a0e989796959493929190610f53565b600060405180830381600087803b158015610a2857600080fd5b505af1158015610a3c573d6000803e3d6000fd5b505050505b505b6000600360009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff166370a08231306040518263ffffffff1660e01b8152600401610aa09190610c8e565b602060405180830381865afa158015610abd573d6000803e3d6000fd5b505050506040513d601f19601f82011682018060405250810190610ae19190610ca9565b9050600360009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663a9059cbb33836040518363ffffffff1660e01b8152600401610b40929190610fd1565b600060405180830381600087803b158015610b5a57600080fd5b505af1158015610b6e573d6000803e3d6000fd5b505050505050505050565b600080fd5b600073ffffffffffffffffffffffffffffffffffffffff82169050919050565b6000610ba982610b7e565b9050919050565b610bb981610b9e565b8114610bc457600080fd5b50565b600081359050610bd681610bb0565b92915050565b600060208284031215610bf257610bf1610b79565b5b6000610c0084828501610bc7565b91505092915050565b6000819050919050565b610c1c81610c09565b8114610c2757600080fd5b50565b600081519050610c3981610c13565b92915050565b60008060408385031215610c5657610c55610b79565b5b6000610c6485828601610c2a565b9250506020610c7585828601610c2a565b9150509250929050565b610c8881610b9e565b82525050565b6000602082019050610ca36000830184610c7f565b92915050565b600060208284031215610cbf57610cbe610b79565b5b6000610ccd84828501610c2a565b91505092915050565b7f4e487b7100000000000000000000000000000000000000000000000000000000600052601160045260246000fd5b6000610d1082610c09565b9150610d1b83610c09565b9250828202610d2981610c09565b91508282048414831517610d4057610d3f610cd6565b5b5092915050565b7f4e487b7100000000000000000000000000000000000000000000000000000000600052601260045260246000fd5b6000610d8182610c09565b9150610d8c83610c09565b925082610d9c57610d9b610d47565b5b828204905092915050565b6000610db282610c09565b9150610dbd83610c09565b9250828203905081811115610dd557610dd4610cd6565b5b92915050565b6000819050919050565b6000819050919050565b6000610e0a610e05610e0084610ddb565b610de5565b610c09565b9050919050565b610e1a81610def565b82525050565b60008115159050919050565b610e3581610e20565b82525050565b610e4481610c09565b82525050565b6000819050919050565b6000610e6f610e6a610e6584610e4a565b610de5565b610c09565b9050919050565b610e7f81610e54565b82525050565b610e8e81610b9e565b82525050565b610e9d81610c09565b82525050565b600060ff82169050919050565b610eb981610ea3565b82525050565b6000819050919050565b610ed281610ebf565b82525050565b60c082016000820151610eee6000850182610e85565b506020820151610f016020850182610e94565b506040820151610f146040850182610e94565b506060820151610f276060850182610eb0565b506080820151610f3a6080850182610ec9565b5060a0820151610f4d60a0850182610ec9565b50505050565b60006101a082019050610f69600083018b610c7f565b610f76602083018a610c7f565b610f836040830189610e11565b610f906060830188610e2c565b610f9d6080830187610e3b565b610faa60a0830186610e2c565b610fb760c0830185610e76565b610fc460e0830184610ed8565b9998505050505050505050565b6000604082019050610fe66000830185610c7f565b610ff36020830184610e3b565b9392505050565b6000819050919050565b600061101f61101a61101584610ffa565b610de5565b610c09565b9050919050565b61102f81611004565b82525050565b60006101a08201905061104b600083018b610c7f565b611058602083018a610c7f565b6110656040830189611026565b6110726060830188610e2c565b61107f6080830187610e3b565b61108c60a0830186610e2c565b61109960c0830185610e76565b6110a660e0830184610ed8565b999850505050505050505056fea2646970667358221220cf18177d720f0766874dee60d5ab6fe20a56312588f4e743838eeb0efd93470064736f6c63430008120033;
    v11 = create.code(v10.data, 4935).value(0);
    require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(stor_11 < 20, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    STORAGE[stor_11 + 18] = address(v11) | bytes12(STORAGE[stor_11 + 18]);
    require(stor_11 < 20, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(bool(_executeOperation.code.size));
    v12 = _executeOperation.transfer(address(STORAGE[stor_11 + 18]), 0x1bc16d674ec80000).gas(msg.gas);
    require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(stor_11 < 20, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(bool((address(address(STORAGE[stor_11 + 18]))).code.size));
    v13 = address(STORAGE[stor_11 + 18]).call(uint32(0xc5d9a359)).gas(msg.gas);
    require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v14 = 0x3a31(stor_11);
    stor_11 = v14;
}

function 0x4aa9f8ac(uint256 varg0, uint256 varg1) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 64);
    0x3212(varg0);
    0x3212(varg1);
    require(msg.sender == owner_27_0_19);
    MEM[32 + MEM[64] + 0] = address(0x0);
    MEM[32 + MEM[64] + 32] = varg0;
    MEM[32 + MEM[64] + 64] = varg1;
    require(1 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new address[](1);
    if (1) {
        CALLDATACOPY(v0.data, msg.data.length, 32);
    }
    require(0 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v1 = v0.data;
    v0[0] = _executeOperation;
    require(1 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    if (1) {
        CALLDATACOPY(v2.data, msg.data.length, 32);
    }
    require(0 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(1 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new uint256[](1);
    if (1) {
        CALLDATACOPY(v3.data, msg.data.length, 32);
    }
    MEM[MEM[64]] = 0xab9c4b5d00000000000000000000000000000000000000000000000000000000;
    v4 = new address[](v0.length);
    v5 = v6 = v4.data;
    v7 = v8 = v0.data;
    v9 = v10 = 0;
    while (v9 < v0.length) {
        MEM[v5] = address(MEM[v7]);
        v5 = v5 + 32;
        v7 = v7 + 32;
        v9 = v9 + 1;
    }
    v5 = new uint256[](v2.length);
    v11 = v12 = v5.data;
    v13 = v14 = v2.data;
    v15 = v16 = 0;
    while (v15 < v2.length) {
        MEM[v11] = MEM[v13];
        v11 = v11 + 32;
        v13 = v13 + 32;
        v15 = v15 + 1;
    }
    v11 = new uint256[](v3.length);
    v17 = v18 = v11.data;
    v19 = v20 = v3.data;
    v21 = v22 = 0;
    while (v21 < v3.length) {
        MEM[v17] = MEM[v19];
        v17 = v17 + 32;
        v19 = v19 + 32;
        v21 = v21 + 1;
    }
    v17 = new uint256[](96);
    v23 = v24 = 0;
    while (v23 < 96) {
        MEM[v17.data + v23] = MEM[MEM[64] + 32 + v23];
        v23 = v23 + 32;
    }
    MEM[v17.data + 96] = 0;
    require(bool(stor_a_0_19.code.size));
    v25 = stor_a_0_19.flashLoan(address(this), v4, v5, v11, address(this), v17, uint16(0), v26, _executeOperation).gas(msg.gas);
    require(bool(v25), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
    v27, /* uint256 */ v28 = _executeOperation.balanceOf(address(this)).gas(msg.gas);
    require(bool(v27), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    0x3212(v28);
    v29 = _SafeMul(v28, 8);
    v30 = _SafeDiv(v29, 10);
    require(bool(stor_c_0_19.code.size));
    v31 = stor_c_0_19.exchange(1, 0, v28, v30, True, address(this)).gas(msg.gas);
    require(bool(v31), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v32 = owner_27_0_19.call().value(this.balance).gas(!this.balance * 2300);
    require(bool(v32), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x4c15fb94(address varg0, uint256 varg1) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 64);
    0x32a9(varg0);
    0x3212(varg1);
    require(msg.sender == owner_27_0_19);
    if (varg0 - stor_0_0_19) {
        v0, /* uint256 */ v1 = varg0.balanceOf(address(this)).gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x3212(v1);
        require(bool((address(varg0)).code.size));
        v2 = varg0.transfer(msg.sender, v1).gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    } else {
        v3, /* uint256 */ v4 = stor_0_0_19.balanceOf(address(this)).gas(msg.gas);
        require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x3212(v4);
        require(bool(stor_0_0_19.code.size));
        v5 = stor_0_0_19.withdraw(v4).gas(msg.gas);
        require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v6 = msg.sender.call().value(this.balance).gas(!this.balance * 2300);
        require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    if (varg1 != 0) {
        v7 = _SafeSub(varg1, 1);
        require(v7 < 20, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(bool((address(address(STORAGE[v7 + 18]))).code.size));
        v8 = address(STORAGE[v7 + 18]).call(uint32(0xaa429e66), varg0).gas(msg.gas);
        require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function 0x7e77e468() public payable { 
    require(msg.sender == owner_27_0_19);
    v0 = new uint256[](32);
    v1 = v2 = 0;
    while (v1 < 32) {
        MEM[v0.data + v1] = MEM[MEM[64] + 32 + v1];
        v1 = v1 + 32;
    }
    MEM[v0.data + 32] = 0;
    v3, /* bool */ v4 = _onFlashLoan.flashLoan(address(this), stor_1_0_19, 0x295be96e64066972000000, v0, v5, address(0x0)).gas(msg.gas);
    require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    0x36c5(v4);
    MEM[(v6.data) len 4935] = 0x6080604052739ab6b21cdf116f611110b048987e58894786c2446000806101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555073be9895146f7af43049ca1c1ae358b0541ea49704600160006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555073d0db31473caad65428ba301d2174390d11d0c788600260006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555073183015a9ba6ff60230fdeadc3f43b3d788b13e21600360006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550733cd40d6e8426c9f02fe7b23867661377e462df3d600460006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550737bebe1d451291099d8e05fa2676412c09c96dfbc600560006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555034801561020d57600080fd5b5033600660006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff1602179055506110e98061025e6000396000f3fe6080604052600436106100385760003560e01c80630721348d14610044578063aa429e661461005b578063c5d9a359146100845761003f565b3661003f57005b600080fd5b34801561005057600080fd5b5061005961009b565b005b34801561006757600080fd5b50610082600480360381019061007d9190610bdc565b610430565b005b34801561009057600080fd5b50610099610573565b005b600660009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff16146100f557600080fd5b6000600460009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16630fdb11cf6040518163ffffffff1660e01b815260040160408051808303816000875af1158015610165573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906101899190610c3f565b5090506000600260009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff166370a08231306040518263ffffffff1660e01b81526004016101e99190610c8e565b602060405180830381865afa158015610206573d6000803e3d6000fd5b505050506040513d601f19601f8201168201806040525081019061022a9190610ca9565b90506000600560009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff166370a08231306040518263ffffffff1660e01b81526004016102899190610c8e565b602060405180830381865afa1580156102a6573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906102ca9190610ca9565b905060006040518060c00160405280600073ffffffffffffffffffffffffffffffffffffffff1681526020016000815260200160008152602001600060ff1681526020016000801b81526020016000801b81525090506000600167120a871cc002000086866103399190610d05565b6103439190610d76565b61034d9190610da7565b9050828111156104295760008054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663171672b1600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff16306000600188876103c79190610da7565b6001670de0b6b3a76400008a6040518963ffffffff1660e01b81526004016103f6989796959493929190610f53565b600060405180830381600087803b15801561041057600080fd5b505af1158015610424573d6000803e3d6000fd5b505050505b5050505050565b600660009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff161461048a57600080fd5b8073ffffffffffffffffffffffffffffffffffffffff1663a9059cbb338373ffffffffffffffffffffffffffffffffffffffff166370a08231306040518263ffffffff1660e01b81526004016104e09190610c8e565b602060405180830381865afa1580156104fd573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906105219190610ca9565b6040518363ffffffff1660e01b815260040161053e929190610fd1565b600060405180830381600087803b15801561055857600080fd5b505af115801561056c573d6000803e3d6000fd5b5050505050565b600660009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff16146105cd57600080fd5b6000600460009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16630fdb11cf6040518163ffffffff1660e01b815260040160408051808303816000875af115801561063d573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906106619190610c3f565b509050600067120a871cc002000082671bc16d674ec800006106839190610d05565b61068d9190610d76565b9050600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663095ea7b360008054906101000a900473ffffffffffffffffffffffffffffffffffffffff167fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff6040518363ffffffff1660e01b815260040161072c929190610fd1565b600060405180830381600087803b15801561074657600080fd5b505af115801561075a573d6000803e3d6000fd5b5050505060006040518060c00160405280600073ffffffffffffffffffffffffffffffffffffffff1681526020016000815260200160008152602001600060ff1681526020016000801b81526020016000801b815250905060008054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663171672b1600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1630671bc16d674ec800006001876001670de0b6b3a7640000896040518963ffffffff1660e01b815260040161084d989796959493929190611035565b600060405180830381600087803b15801561086757600080fd5b505af115801561087b573d6000803e3d6000fd5b505050506000600260009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff166370a08231306040518263ffffffff1660e01b81526004016108dc9190610c8e565b602060405180830381865afa1580156108f9573d6000803e3d6000fd5b505050506040513d601f19601f8201168201806040525081019061091d9190610ca9565b9050671bc16d674ec80000811115610a43576000600167120a871cc002000086671bc16d674ec80000856109519190610da7565b61095b9190610d05565b6109659190610d76565b61096f9190610da7565b90506000811115610a415760008054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663171672b1600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff163060006001866001670de0b6b3a76400008b6040518963ffffffff1660e01b8152600401610a0e989796959493929190610f53565b600060405180830381600087803b158015610a2857600080fd5b505af1158015610a3c573d6000803e3d6000fd5b505050505b505b6000600360009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff166370a08231306040518263ffffffff1660e01b8152600401610aa09190610c8e565b602060405180830381865afa158015610abd573d6000803e3d6000fd5b505050506040513d601f19601f82011682018060405250810190610ae19190610ca9565b9050600360009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663a9059cbb33836040518363ffffffff1660e01b8152600401610b40929190610fd1565b600060405180830381600087803b158015610b5a57600080fd5b505af1158015610b6e573d6000803e3d6000fd5b505050505050505050565b600080fd5b600073ffffffffffffffffffffffffffffffffffffffff82169050919050565b6000610ba982610b7e565b9050919050565b610bb981610b9e565b8114610bc457600080fd5b50565b600081359050610bd681610bb0565b92915050565b600060208284031215610bf257610bf1610b79565b5b6000610c0084828501610bc7565b91505092915050565b6000819050919050565b610c1c81610c09565b8114610c2757600080fd5b50565b600081519050610c3981610c13565b92915050565b60008060408385031215610c5657610c55610b79565b5b6000610c6485828601610c2a565b9250506020610c7585828601610c2a565b9150509250929050565b610c8881610b9e565b82525050565b6000602082019050610ca36000830184610c7f565b92915050565b600060208284031215610cbf57610cbe610b79565b5b6000610ccd84828501610c2a565b91505092915050565b7f4e487b7100000000000000000000000000000000000000000000000000000000600052601160045260246000fd5b6000610d1082610c09565b9150610d1b83610c09565b9250828202610d2981610c09565b91508282048414831517610d4057610d3f610cd6565b5b5092915050565b7f4e487b7100000000000000000000000000000000000000000000000000000000600052601260045260246000fd5b6000610d8182610c09565b9150610d8c83610c09565b925082610d9c57610d9b610d47565b5b828204905092915050565b6000610db282610c09565b9150610dbd83610c09565b9250828203905081811115610dd557610dd4610cd6565b5b92915050565b6000819050919050565b6000819050919050565b6000610e0a610e05610e0084610ddb565b610de5565b610c09565b9050919050565b610e1a81610def565b82525050565b60008115159050919050565b610e3581610e20565b82525050565b610e4481610c09565b82525050565b6000819050919050565b6000610e6f610e6a610e6584610e4a565b610de5565b610c09565b9050919050565b610e7f81610e54565b82525050565b610e8e81610b9e565b82525050565b610e9d81610c09565b82525050565b600060ff82169050919050565b610eb981610ea3565b82525050565b6000819050919050565b610ed281610ebf565b82525050565b60c082016000820151610eee6000850182610e85565b506020820151610f016020850182610e94565b506040820151610f146040850182610e94565b506060820151610f276060850182610eb0565b506080820151610f3a6080850182610ec9565b5060a0820151610f4d60a0850182610ec9565b50505050565b60006101a082019050610f69600083018b610c7f565b610f76602083018a610c7f565b610f836040830189610e11565b610f906060830188610e2c565b610f9d6080830187610e3b565b610faa60a0830186610e2c565b610fb760c0830185610e76565b610fc460e0830184610ed8565b9998505050505050505050565b6000604082019050610fe66000830185610c7f565b610ff36020830184610e3b565b9392505050565b6000819050919050565b600061101f61101a61101584610ffa565b610de5565b610c09565b9050919050565b61102f81611004565b82525050565b60006101a08201905061104b600083018b610c7f565b611058602083018a610c7f565b6110656040830189611026565b6110726060830188610e2c565b61107f6080830187610e3b565b61108c60a0830186610e2c565b61109960c0830185610e76565b6110a660e0830184610ed8565b999850505050505050505056fea2646970667358221220cf18177d720f0766874dee60d5ab6fe20a56312588f4e743838eeb0efd93470064736f6c63430008120033;
    v7 = create.code(v6.data, 4935).value(0);
    require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(stor_11 < 20, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    STORAGE[stor_11 + 18] = address(v7) | bytes12(STORAGE[stor_11 + 18]);
    require(stor_11 < 20, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(bool(_executeOperation.code.size));
    v8 = _executeOperation.transfer(address(STORAGE[stor_11 + 18]), 0x1bc16d674ec80000).gas(msg.gas);
    require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(stor_11 < 20, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(bool((address(address(STORAGE[stor_11 + 18]))).code.size));
    v9 = address(STORAGE[stor_11 + 18]).call(uint32(0xc5d9a359)).gas(msg.gas);
    require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v10 = 0x3a31(stor_11);
    stor_11 = v10;
}

function CALLBACK_SUCCESS() public nonPayable { 
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9;
}

function executeOperation(address[] assets, uint256[] amounts, uint256[] premiums, address initiator, bytes params) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 160);
    require(assets <= uint64.max);
    require(4 + assets + 31 < 4 + (msg.data.length - 4));
    require(assets.length <= uint64.max);
    require(assets.data + (assets.length << 5) <= 4 + (msg.data.length - 4));
    require(amounts <= uint64.max);
    require(4 + amounts + 31 < 4 + (msg.data.length - 4));
    require(amounts.length <= uint64.max);
    require(amounts.data + (amounts.length << 5) <= 4 + (msg.data.length - 4));
    require(premiums <= uint64.max);
    require(4 + premiums + 31 < 4 + (msg.data.length - 4));
    require(premiums.length <= uint64.max);
    require(premiums.data + (premiums.length << 5) <= 4 + (msg.data.length - 4));
    0x32a9(initiator);
    require(params <= uint64.max);
    require(4 + params + 31 < 4 + (msg.data.length - 4));
    require(params.length <= uint64.max);
    require(params.data + params.length <= 4 + (msg.data.length - 4));
    require(params.data + params.length - params.data >= 96);
    require(params[0] == address(params[0]));
    0x3212(params[32][32]);
    0x3212(params[64]);
    v0, /* uint256 */ v1 = _executeOperation.balanceOf(address(this)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    0x3212(v1);
    require(bool(_executeOperation.code.size));
    v2 = _executeOperation.transfer(stor_7_0_19, v1).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    if (address(params[0]) - address(0x0)) {
        require(bool(stor_7_0_19.code.size));
        v3 = stor_7_0_19.liquidate(address(params[0])).gas(msg.gas);
        require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    } else {
        v4 = _SafeSub(stor_11, 1);
        require(v4 < 20, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(bool(stor_7_0_19.code.size));
        v5 = stor_7_0_19.liquidate(address(STORAGE[v4 + 18])).gas(msg.gas);
        require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    v6 = new uint256[](0);
    v7 = v6.data;
    v8 = v9 = 0;
    while (v8 < 68) {
        MEM[MEM[64] + v8] = MEM[MEM[64] + 32 + v8];
        v8 = v8 + 32;
    }
    MEM[MEM[64] + 68] = 0;
    v10, /* uint256 */ v11 = stor_26_0_19.delegatecall(0xee4d195d, v6).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v12 = new bytes[](RETURNDATASIZE());
        v11 = v12.data;
        RETURNDATACOPY(v11, 0, RETURNDATASIZE());
    }
    require(bool(v10) == True);
    v13 = v14 = 0;
    while (v13 < 68) {
        MEM[MEM[64] + v13] = MEM[MEM[64] + 32 + v13];
        v13 = v13 + 32;
    }
    MEM[MEM[64] + 68] = 0;
    v15, /* uint256 */ v16 = stor_26_0_19.delegatecall(0xa64ed556, params[32][32], params[64]).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v17 = new bytes[](RETURNDATASIZE());
        v16 = v17.data;
        RETURNDATACOPY(v16, 0, RETURNDATASIZE());
    }
    require(bool(v15) == True);
    return True;
}

function 0xb529c612(uint256 varg0) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    0x3212(varg0);
    require(msg.sender == owner_27_0_19);
    require(bool(_executeOperation.code.size));
    v0 = _executeOperation.approve(stor_a_0_19, uint256.max).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(bool(_executeOperation.code.size));
    v1 = _executeOperation.approve(stor_c_0_19, uint256.max).gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(bool(stor_8_0_19.code.size));
    v2 = stor_8_0_19.approve(stor_7_0_19, uint256.max).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(bool(stor_1_0_19.code.size));
    v3 = stor_1_0_19.approve(stor_a_0_19, uint256.max).gas(msg.gas);
    require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(bool(stor_1_0_19.code.size));
    v4 = stor_1_0_19.approve(_onFlashLoan, uint256.max).gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(bool(stor_8_0_19.code.size));
    v5 = stor_8_0_19.approve(stor_d_0_19, uint256.max).gas(msg.gas);
    require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v6 = _SafeMul(this.balance, 9);
    v7 = _SafeDiv(v6, 10);
    require(bool(stor_c_0_19.code.size));
    v8 = stor_c_0_19.exchange(0, 1, this.balance, v7, True, address(this)).value(this.balance).gas(msg.gas);
    require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v9, /* uint256 */ v10 = _executeOperation.balanceOf(address(this)).gas(msg.gas);
    require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    0x3212(v10);
    require(bool(_executeOperation.code.size));
    v11 = _executeOperation.approve(stor_7_0_19, uint256.max).gas(msg.gas);
    require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v12 = _SafeMul(varg0, 10 ** 18);
    require(bool(stor_7_0_19.code.size));
    v13 = stor_7_0_19.managePosition(_executeOperation, address(this), v12, True, 0xa2a15d09519be00000, True, 10 ** 18, address(0x0), 0, 0, uint8(0), 0, 0).gas(msg.gas);
    require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0xbe2821b0() public payable { 
    require(msg.sender == owner_27_0_19);
    v0 = _SafeMul(this.balance, 9);
    v1 = _SafeDiv(v0, 10);
    require(bool(stor_c_0_19.code.size));
    v2 = stor_c_0_19.exchange(0, 1, this.balance, v1, True, address(this)).value(this.balance).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[(v3.data) len 4935] = 0x6080604052739ab6b21cdf116f611110b048987e58894786c2446000806101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555073be9895146f7af43049ca1c1ae358b0541ea49704600160006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555073d0db31473caad65428ba301d2174390d11d0c788600260006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555073183015a9ba6ff60230fdeadc3f43b3d788b13e21600360006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550733cd40d6e8426c9f02fe7b23867661377e462df3d600460006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550737bebe1d451291099d8e05fa2676412c09c96dfbc600560006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555034801561020d57600080fd5b5033600660006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff1602179055506110e98061025e6000396000f3fe6080604052600436106100385760003560e01c80630721348d14610044578063aa429e661461005b578063c5d9a359146100845761003f565b3661003f57005b600080fd5b34801561005057600080fd5b5061005961009b565b005b34801561006757600080fd5b50610082600480360381019061007d9190610bdc565b610430565b005b34801561009057600080fd5b50610099610573565b005b600660009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff16146100f557600080fd5b6000600460009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16630fdb11cf6040518163ffffffff1660e01b815260040160408051808303816000875af1158015610165573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906101899190610c3f565b5090506000600260009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff166370a08231306040518263ffffffff1660e01b81526004016101e99190610c8e565b602060405180830381865afa158015610206573d6000803e3d6000fd5b505050506040513d601f19601f8201168201806040525081019061022a9190610ca9565b90506000600560009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff166370a08231306040518263ffffffff1660e01b81526004016102899190610c8e565b602060405180830381865afa1580156102a6573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906102ca9190610ca9565b905060006040518060c00160405280600073ffffffffffffffffffffffffffffffffffffffff1681526020016000815260200160008152602001600060ff1681526020016000801b81526020016000801b81525090506000600167120a871cc002000086866103399190610d05565b6103439190610d76565b61034d9190610da7565b9050828111156104295760008054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663171672b1600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff16306000600188876103c79190610da7565b6001670de0b6b3a76400008a6040518963ffffffff1660e01b81526004016103f6989796959493929190610f53565b600060405180830381600087803b15801561041057600080fd5b505af1158015610424573d6000803e3d6000fd5b505050505b5050505050565b600660009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff161461048a57600080fd5b8073ffffffffffffffffffffffffffffffffffffffff1663a9059cbb338373ffffffffffffffffffffffffffffffffffffffff166370a08231306040518263ffffffff1660e01b81526004016104e09190610c8e565b602060405180830381865afa1580156104fd573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906105219190610ca9565b6040518363ffffffff1660e01b815260040161053e929190610fd1565b600060405180830381600087803b15801561055857600080fd5b505af115801561056c573d6000803e3d6000fd5b5050505050565b600660009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff16146105cd57600080fd5b6000600460009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16630fdb11cf6040518163ffffffff1660e01b815260040160408051808303816000875af115801561063d573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906106619190610c3f565b509050600067120a871cc002000082671bc16d674ec800006106839190610d05565b61068d9190610d76565b9050600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663095ea7b360008054906101000a900473ffffffffffffffffffffffffffffffffffffffff167fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff6040518363ffffffff1660e01b815260040161072c929190610fd1565b600060405180830381600087803b15801561074657600080fd5b505af115801561075a573d6000803e3d6000fd5b5050505060006040518060c00160405280600073ffffffffffffffffffffffffffffffffffffffff1681526020016000815260200160008152602001600060ff1681526020016000801b81526020016000801b815250905060008054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663171672b1600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1630671bc16d674ec800006001876001670de0b6b3a7640000896040518963ffffffff1660e01b815260040161084d989796959493929190611035565b600060405180830381600087803b15801561086757600080fd5b505af115801561087b573d6000803e3d6000fd5b505050506000600260009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff166370a08231306040518263ffffffff1660e01b81526004016108dc9190610c8e565b602060405180830381865afa1580156108f9573d6000803e3d6000fd5b505050506040513d601f19601f8201168201806040525081019061091d9190610ca9565b9050671bc16d674ec80000811115610a43576000600167120a871cc002000086671bc16d674ec80000856109519190610da7565b61095b9190610d05565b6109659190610d76565b61096f9190610da7565b90506000811115610a415760008054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663171672b1600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff163060006001866001670de0b6b3a76400008b6040518963ffffffff1660e01b8152600401610a0e989796959493929190610f53565b600060405180830381600087803b158015610a2857600080fd5b505af1158015610a3c573d6000803e3d6000fd5b505050505b505b6000600360009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff166370a08231306040518263ffffffff1660e01b8152600401610aa09190610c8e565b602060405180830381865afa158015610abd573d6000803e3d6000fd5b505050506040513d601f19601f82011682018060405250810190610ae19190610ca9565b9050600360009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663a9059cbb33836040518363ffffffff1660e01b8152600401610b40929190610fd1565b600060405180830381600087803b158015610b5a57600080fd5b505af1158015610b6e573d6000803e3d6000fd5b505050505050505050565b600080fd5b600073ffffffffffffffffffffffffffffffffffffffff82169050919050565b6000610ba982610b7e565b9050919050565b610bb981610b9e565b8114610bc457600080fd5b50565b600081359050610bd681610bb0565b92915050565b600060208284031215610bf257610bf1610b79565b5b6000610c0084828501610bc7565b91505092915050565b6000819050919050565b610c1c81610c09565b8114610c2757600080fd5b50565b600081519050610c3981610c13565b92915050565b60008060408385031215610c5657610c55610b79565b5b6000610c6485828601610c2a565b9250506020610c7585828601610c2a565b9150509250929050565b610c8881610b9e565b82525050565b6000602082019050610ca36000830184610c7f565b92915050565b600060208284031215610cbf57610cbe610b79565b5b6000610ccd84828501610c2a565b91505092915050565b7f4e487b7100000000000000000000000000000000000000000000000000000000600052601160045260246000fd5b6000610d1082610c09565b9150610d1b83610c09565b9250828202610d2981610c09565b91508282048414831517610d4057610d3f610cd6565b5b5092915050565b7f4e487b7100000000000000000000000000000000000000000000000000000000600052601260045260246000fd5b6000610d8182610c09565b9150610d8c83610c09565b925082610d9c57610d9b610d47565b5b828204905092915050565b6000610db282610c09565b9150610dbd83610c09565b9250828203905081811115610dd557610dd4610cd6565b5b92915050565b6000819050919050565b6000819050919050565b6000610e0a610e05610e0084610ddb565b610de5565b610c09565b9050919050565b610e1a81610def565b82525050565b60008115159050919050565b610e3581610e20565b82525050565b610e4481610c09565b82525050565b6000819050919050565b6000610e6f610e6a610e6584610e4a565b610de5565b610c09565b9050919050565b610e7f81610e54565b82525050565b610e8e81610b9e565b82525050565b610e9d81610c09565b82525050565b600060ff82169050919050565b610eb981610ea3565b82525050565b6000819050919050565b610ed281610ebf565b82525050565b60c082016000820151610eee6000850182610e85565b506020820151610f016020850182610e94565b506040820151610f146040850182610e94565b506060820151610f276060850182610eb0565b506080820151610f3a6080850182610ec9565b5060a0820151610f4d60a0850182610ec9565b50505050565b60006101a082019050610f69600083018b610c7f565b610f76602083018a610c7f565b610f836040830189610e11565b610f906060830188610e2c565b610f9d6080830187610e3b565b610faa60a0830186610e2c565b610fb760c0830185610e76565b610fc460e0830184610ed8565b9998505050505050505050565b6000604082019050610fe66000830185610c7f565b610ff36020830184610e3b565b9392505050565b6000819050919050565b600061101f61101a61101584610ffa565b610de5565b610c09565b9050919050565b61102f81611004565b82525050565b60006101a08201905061104b600083018b610c7f565b611058602083018a610c7f565b6110656040830189611026565b6110726060830188610e2c565b61107f6080830187610e3b565b61108c60a0830186610e2c565b61109960c0830185610e76565b6110a660e0830184610ed8565b999850505050505050505056fea2646970667358221220cf18177d720f0766874dee60d5ab6fe20a56312588f4e743838eeb0efd93470064736f6c63430008120033;
    v4 = create.code(v3.data, 4935).value(0);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(stor_11 < 20, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    STORAGE[stor_11 + 18] = address(v4) | bytes12(STORAGE[stor_11 + 18]);
    require(stor_11 < 20, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(bool(_executeOperation.code.size));
    v5 = _executeOperation.transfer(address(STORAGE[stor_11 + 18]), 0x1bc16d674ec80000).gas(msg.gas);
    require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(stor_11 < 20, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(bool((address(address(STORAGE[stor_11 + 18]))).code.size));
    v6 = address(STORAGE[stor_11 + 18]).call(uint32(0xc5d9a359)).gas(msg.gas);
    require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v7 = 0x3a31(stor_11);
    stor_11 = v7;
}

function 0xc92a5807() public nonPayable { 
    require(msg.sender == owner_27_0_19);
    require(stor_11 - 0, Panic(17)); // arithmetic overflow or underflow
    stor_11 = stor_11 - 1;
}

function 0xce3b12fd(uint256 varg0, bool varg1, uint256 varg2, bool varg3) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 128);
    0x3212(varg0);
    0x36c5(varg1);
    0x3212(varg2);
    0x36c5(varg3);
    require(msg.sender == owner_27_0_19);
    v0 = _SafeMul(varg0, 10 ** 18);
    v1 = _SafeMul(varg2, 10 ** 18);
    require(bool(stor_7_0_19.code.size));
    v2 = stor_7_0_19.managePosition(_executeOperation, address(this), v0, varg1, v1, varg3, 10 ** 18, address(0x0), 0, 0, uint8(0), 0, 0).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0xd27b4915(address varg0) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    0x32a9(varg0);
    require(msg.sender == owner_27_0_19);
    v0 = new uint256[](32);
    v1 = v2 = 0;
    while (v1 < 32) {
        MEM[v0.data + v1] = MEM[MEM[64] + 32 + v1];
        v1 = v1 + 32;
    }
    MEM[v0.data + 32] = 0;
    v3, /* bool */ v4 = _onFlashLoan.flashLoan(address(this), stor_1_0_19, 0x295be96e64066972000000, v0, v5, varg0).gas(msg.gas);
    require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    0x36c5(v4);
}

function 0xd3429501(address varg0) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    0x32a9(varg0);
    require(msg.sender == owner_27_0_19);
    v0 = new uint256[](32);
    v1 = v2 = 0;
    while (v1 < 32) {
        MEM[v0.data + v1] = MEM[MEM[64] + 32 + v1];
        v1 = v1 + 32;
    }
    MEM[v0.data + 32] = 0;
    v3, /* bool */ v4 = _onFlashLoan.flashLoan(address(this), stor_1_0_19, 0x295be96e64066972000000, v0, v5, varg0).gas(msg.gas);
    require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    0x36c5(v4);
    MEM[(v6.data) len 4935] = 0x6080604052739ab6b21cdf116f611110b048987e58894786c2446000806101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555073be9895146f7af43049ca1c1ae358b0541ea49704600160006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555073d0db31473caad65428ba301d2174390d11d0c788600260006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555073183015a9ba6ff60230fdeadc3f43b3d788b13e21600360006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550733cd40d6e8426c9f02fe7b23867661377e462df3d600460006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550737bebe1d451291099d8e05fa2676412c09c96dfbc600560006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555034801561020d57600080fd5b5033600660006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff1602179055506110e98061025e6000396000f3fe6080604052600436106100385760003560e01c80630721348d14610044578063aa429e661461005b578063c5d9a359146100845761003f565b3661003f57005b600080fd5b34801561005057600080fd5b5061005961009b565b005b34801561006757600080fd5b50610082600480360381019061007d9190610bdc565b610430565b005b34801561009057600080fd5b50610099610573565b005b600660009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff16146100f557600080fd5b6000600460009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16630fdb11cf6040518163ffffffff1660e01b815260040160408051808303816000875af1158015610165573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906101899190610c3f565b5090506000600260009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff166370a08231306040518263ffffffff1660e01b81526004016101e99190610c8e565b602060405180830381865afa158015610206573d6000803e3d6000fd5b505050506040513d601f19601f8201168201806040525081019061022a9190610ca9565b90506000600560009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff166370a08231306040518263ffffffff1660e01b81526004016102899190610c8e565b602060405180830381865afa1580156102a6573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906102ca9190610ca9565b905060006040518060c00160405280600073ffffffffffffffffffffffffffffffffffffffff1681526020016000815260200160008152602001600060ff1681526020016000801b81526020016000801b81525090506000600167120a871cc002000086866103399190610d05565b6103439190610d76565b61034d9190610da7565b9050828111156104295760008054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663171672b1600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff16306000600188876103c79190610da7565b6001670de0b6b3a76400008a6040518963ffffffff1660e01b81526004016103f6989796959493929190610f53565b600060405180830381600087803b15801561041057600080fd5b505af1158015610424573d6000803e3d6000fd5b505050505b5050505050565b600660009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff161461048a57600080fd5b8073ffffffffffffffffffffffffffffffffffffffff1663a9059cbb338373ffffffffffffffffffffffffffffffffffffffff166370a08231306040518263ffffffff1660e01b81526004016104e09190610c8e565b602060405180830381865afa1580156104fd573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906105219190610ca9565b6040518363ffffffff1660e01b815260040161053e929190610fd1565b600060405180830381600087803b15801561055857600080fd5b505af115801561056c573d6000803e3d6000fd5b5050505050565b600660009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff16146105cd57600080fd5b6000600460009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16630fdb11cf6040518163ffffffff1660e01b815260040160408051808303816000875af115801561063d573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906106619190610c3f565b509050600067120a871cc002000082671bc16d674ec800006106839190610d05565b61068d9190610d76565b9050600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663095ea7b360008054906101000a900473ffffffffffffffffffffffffffffffffffffffff167fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff6040518363ffffffff1660e01b815260040161072c929190610fd1565b600060405180830381600087803b15801561074657600080fd5b505af115801561075a573d6000803e3d6000fd5b5050505060006040518060c00160405280600073ffffffffffffffffffffffffffffffffffffffff1681526020016000815260200160008152602001600060ff1681526020016000801b81526020016000801b815250905060008054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663171672b1600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1630671bc16d674ec800006001876001670de0b6b3a7640000896040518963ffffffff1660e01b815260040161084d989796959493929190611035565b600060405180830381600087803b15801561086757600080fd5b505af115801561087b573d6000803e3d6000fd5b505050506000600260009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff166370a08231306040518263ffffffff1660e01b81526004016108dc9190610c8e565b602060405180830381865afa1580156108f9573d6000803e3d6000fd5b505050506040513d601f19601f8201168201806040525081019061091d9190610ca9565b9050671bc16d674ec80000811115610a43576000600167120a871cc002000086671bc16d674ec80000856109519190610da7565b61095b9190610d05565b6109659190610d76565b61096f9190610da7565b90506000811115610a415760008054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663171672b1600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff163060006001866001670de0b6b3a76400008b6040518963ffffffff1660e01b8152600401610a0e989796959493929190610f53565b600060405180830381600087803b158015610a2857600080fd5b505af1158015610a3c573d6000803e3d6000fd5b505050505b505b6000600360009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff166370a08231306040518263ffffffff1660e01b8152600401610aa09190610c8e565b602060405180830381865afa158015610abd573d6000803e3d6000fd5b505050506040513d601f19601f82011682018060405250810190610ae19190610ca9565b9050600360009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663a9059cbb33836040518363ffffffff1660e01b8152600401610b40929190610fd1565b600060405180830381600087803b158015610b5a57600080fd5b505af1158015610b6e573d6000803e3d6000fd5b505050505050505050565b600080fd5b600073ffffffffffffffffffffffffffffffffffffffff82169050919050565b6000610ba982610b7e565b9050919050565b610bb981610b9e565b8114610bc457600080fd5b50565b600081359050610bd681610bb0565b92915050565b600060208284031215610bf257610bf1610b79565b5b6000610c0084828501610bc7565b91505092915050565b6000819050919050565b610c1c81610c09565b8114610c2757600080fd5b50565b600081519050610c3981610c13565b92915050565b60008060408385031215610c5657610c55610b79565b5b6000610c6485828601610c2a565b9250506020610c7585828601610c2a565b9150509250929050565b610c8881610b9e565b82525050565b6000602082019050610ca36000830184610c7f565b92915050565b600060208284031215610cbf57610cbe610b79565b5b6000610ccd84828501610c2a565b91505092915050565b7f4e487b7100000000000000000000000000000000000000000000000000000000600052601160045260246000fd5b6000610d1082610c09565b9150610d1b83610c09565b9250828202610d2981610c09565b91508282048414831517610d4057610d3f610cd6565b5b5092915050565b7f4e487b7100000000000000000000000000000000000000000000000000000000600052601260045260246000fd5b6000610d8182610c09565b9150610d8c83610c09565b925082610d9c57610d9b610d47565b5b828204905092915050565b6000610db282610c09565b9150610dbd83610c09565b9250828203905081811115610dd557610dd4610cd6565b5b92915050565b6000819050919050565b6000819050919050565b6000610e0a610e05610e0084610ddb565b610de5565b610c09565b9050919050565b610e1a81610def565b82525050565b60008115159050919050565b610e3581610e20565b82525050565b610e4481610c09565b82525050565b6000819050919050565b6000610e6f610e6a610e6584610e4a565b610de5565b610c09565b9050919050565b610e7f81610e54565b82525050565b610e8e81610b9e565b82525050565b610e9d81610c09565b82525050565b600060ff82169050919050565b610eb981610ea3565b82525050565b6000819050919050565b610ed281610ebf565b82525050565b60c082016000820151610eee6000850182610e85565b506020820151610f016020850182610e94565b506040820151610f146040850182610e94565b506060820151610f276060850182610eb0565b506080820151610f3a6080850182610ec9565b5060a0820151610f4d60a0850182610ec9565b50505050565b60006101a082019050610f69600083018b610c7f565b610f76602083018a610c7f565b610f836040830189610e11565b610f906060830188610e2c565b610f9d6080830187610e3b565b610faa60a0830186610e2c565b610fb760c0830185610e76565b610fc460e0830184610ed8565b9998505050505050505050565b6000604082019050610fe66000830185610c7f565b610ff36020830184610e3b565b9392505050565b6000819050919050565b600061101f61101a61101584610ffa565b610de5565b610c09565b9050919050565b61102f81611004565b82525050565b60006101a08201905061104b600083018b610c7f565b611058602083018a610c7f565b6110656040830189611026565b6110726060830188610e2c565b61107f6080830187610e3b565b61108c60a0830186610e2c565b61109960c0830185610e76565b6110a660e0830184610ed8565b999850505050505050505056fea2646970667358221220cf18177d720f0766874dee60d5ab6fe20a56312588f4e743838eeb0efd93470064736f6c63430008120033;
    v7 = create.code(v6.data, 4935).value(0);
    require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(stor_11 < 20, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    STORAGE[stor_11 + 18] = address(v7) | bytes12(STORAGE[stor_11 + 18]);
    require(stor_11 < 20, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(bool(_executeOperation.code.size));
    v8 = _executeOperation.transfer(address(STORAGE[stor_11 + 18]), 0x1bc16d674ec80000).gas(msg.gas);
    require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(stor_11 < 20, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(bool((address(address(STORAGE[stor_11 + 18]))).code.size));
    v9 = address(STORAGE[stor_11 + 18]).call(uint32(0xc5d9a359)).gas(msg.gas);
    require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v10 = 0x3a31(stor_11);
    stor_11 = v10;
}

function 0x3212(uint256 varg0) private { 
    return ;
}

function 0x32a9(address varg0) private { 
    return ;
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.length <= uint64.max);
    require(data.data + data.length <= 4 + (msg.data.length - 4));
    v0 = v1 = msg.sender == _uniswapV3SwapCallback;
    if (msg.sender != _uniswapV3SwapCallback) {
        v0 = v2 = msg.sender == owner_f_0_19;
    }
    if (!v0) {
        v0 = msg.sender == owner_10_0_19;
    }
    require(v0);
    if (amount0Delta > 0) {
        v3, /* address */ v4 = msg.sender.token0().gas(msg.gas);
        require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x32a9(v4);
        require(bool((address(v4)).code.size));
        v5 = address(v4).transfer(msg.sender, amount0Delta).gas(msg.gas);
        require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    if (amount1Delta > 0) {
        v6, /* address */ v7 = msg.sender.token1().gas(msg.gas);
        require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x32a9(v7);
        require(bool((address(v7)).code.size));
        v8 = address(v7).transfer(msg.sender, amount1Delta).gas(msg.gas);
        require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function 0x36c5(bool varg0) private { 
    return ;
}

function 0x3a31(uint256 varg0) private { 
    require(varg0 - uint256.max, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 1;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require(!varg0 | (varg1 == varg0 * varg1 / varg0), Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function function_selector() public payable { 
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function function_selector( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        require(!msg.data.length);
        ();
    } else if (0x920f5c84 > function_selector >> 224) {
        if (0x4aa9f8ac > function_selector >> 224) {
            if (0x11702872 == function_selector >> 224) {
                0x11702872();
            } else if (0x23e30c8b == function_selector >> 224) {
                onFlashLoan(address,address,uint256,uint256,bytes);
            } else if (0x3b0113a4 == function_selector >> 224) {
                0x3b0113a4();
            } else {
                require(0x3f6a5f0e == function_selector >> 224);
                0x3f6a5f0e();
            }
        } else if (0x4aa9f8ac == function_selector >> 224) {
            0x4aa9f8ac();
        } else if (0x4c15fb94 == function_selector >> 224) {
            0x4c15fb94();
        } else if (0x7e77e468 == function_selector >> 224) {
            0x7e77e468();
        } else {
            require(0x8237e538 == function_selector >> 224);
            CALLBACK_SUCCESS();
        }
    } else if (0xce3b12fd > function_selector >> 224) {
        if (0x920f5c84 == function_selector >> 224) {
            executeOperation(address[],uint256[],uint256[],address,bytes);
        } else if (0xb529c612 == function_selector >> 224) {
            0xb529c612();
        } else if (0xbe2821b0 == function_selector >> 224) {
            0xbe2821b0();
        } else {
            require(0xc92a5807 == function_selector >> 224);
            0xc92a5807();
        }
    } else if (0xce3b12fd == function_selector >> 224) {
        0xce3b12fd();
    } else if (0xd27b4915 == function_selector >> 224) {
        0xd27b4915();
    } else if (0xd3429501 == function_selector >> 224) {
        0xd3429501();
    } else {
        require(0xfa461e33 == function_selector >> 224);
        uniswapV3SwapCallback(int256,int256,bytes);
    }
}
