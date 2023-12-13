// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/// @title            Decompiled Contract
/// @author           Jonathan Becker <jonathan@jbecker.dev>
/// @custom:version   heimdall-rs v0.6.5
///
/// @notice           This contract was decompiled using the heimdall-rs decompiler.
///                     It was generated directly by tracing the EVM opcodes from this contract.
///                     As a result, it may not compile or even be valid solidity code.
///                     Despite this, it should be obvious what each function does. Overall
///                     logic should have been preserved throughout decompiling.
///
/// @custom:github    You can find the open-source decompiler here:
///                       https://heimdall.rs

contract DecompiledContract {
    
    bytes32 public stor_a;
    bytes32 public stor_e;
    uint256 public stor_b;
    (bool success, bytes public stor_c;
    (bool success, bytes public stor_d;
    (bool success, bytes public stor_f;
    
    /// @custom:selector    0xe9cbafb0
    /// @custom:name        uniswapV3FlashCallback
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function uniswapV3FlashCallback(uint256 arg0, uint256 arg1, bytes memory arg2) public payable {
        require(!arg2 > 0x0100000000);
        require(tx.origin == (address(stor_a)));
        require(!0 < stor_b);
        require(address(stor_c).code.length);
        (bool success, bytes memory ret0) = address(stor_c).staticcall(abi.encode(0x70a0823100000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        require(address(stor_c).code.length);
        (bool success, bytes memory ret0) = address(stor_c).staticcall(abi.encode(0x70a0823100000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        require(address(0x164afe96912099543bc2c48bb9358a095db8e784).code.length);
        (bool success, bytes memory ret0) = address(0x164afe96912099543bc2c48bb9358a095db8e784).call{ value: 0 }(abi.encode(0x9358928b00000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        require((var_c.length + var_c.length) > var_c.length);
        require(address(stor_c).code.length);
        (bool success, bytes memory ret0) = address(stor_c).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        require(address(stor_c).code.length);
        (bool success, bytes memory ret0) = address(stor_c).call{ value: 0 }(abi.encode(0x095ea7b300000000000000000000000000000000000000000000000000000000));
        require(address(stor_d).code.length);
        (bool success, bytes memory ret0) = address(stor_d).call{ value: 0 }(abi.encode(0xd866c9d800000000000000000000000000000000000000000000000000000000));
        require(address(stor_f).code.length);
        (bool success, bytes memory ret0) = address(stor_f).staticcall(abi.encode(0x70a0823100000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        require(address(stor_d).code.length);
        (bool success, bytes memory ret0) = address(stor_d).call{ value: 0 }(abi.encode(0x990966d500000000000000000000000000000000000000000000000000000000));
        if (!0x01 < stor_b) {
        }
        if (address(stor_c).code.length) {
        }
    }
    
    /// @custom:selector    0xfa461e33
    /// @custom:name        uniswapV3SwapCallback
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function uniswapV3SwapCallback(int256 arg0, int256 arg1, bytes memory arg2) public payable {
        require(!arg2 > 0x0100000000);
        require(tx.origin == (address(stor_a)));
        require(arg1 > 0);
        require(address(stor_c).code.length);
        (bool success, bytes memory ret0) = address(stor_c).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        require(address(stor_c).code.length);
        (bool success, bytes memory ret0) = address(stor_c).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
    }
    
    /// @custom:selector    0x828cc5ce
    /// @custom:name        flash
    /// @param              arg0 ["bool", "bytes", "bytes1", "bytes32", "int", "int256", "int8", "string", "uint", "uint256", "uint8"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function flash(uint256 arg0, uint256 arg1) public payable {
        require(msg.sender == (address(stor_a)));
        stor_b = arg1;
        require(!arg0);
        stor_e = arg0;
        var_b = 0x40 + var_b;
        require(!bytes1(var_b.length));
        require(address(0xb386c1d831eed803f5e8f274a59c91c4c22eeac0).code.length);
        (bool success, bytes memory ret0) = address(0xb386c1d831eed803f5e8f274a59c91c4c22eeac0).call{ value: 0 }(abi.encode(0x490e6cbc00000000000000000000000000000000000000000000000000000000));
        require(address(stor_c).code.length);
        (bool success, bytes memory ret0) = address(stor_c).staticcall(abi.encode(0x70a0823100000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        var_b = var_b + 0x20;
        require(!0);
        require(!bytes1(var_b.length));
        require(address(0xb386c1d831eed803f5e8f274a59c91c4c22eeac0).code.length);
        (bool success, bytes memory ret0) = address(0xb386c1d831eed803f5e8f274a59c91c4c22eeac0).call{ value: 0 }(abi.encode(0x128acb0800000000000000000000000000000000000000000000000000000000));
        require(address(0xb386c1d831eed803f5e8f274a59c91c4c22eeac0).code.length);
        (bool success, bytes memory ret0) = address(0xb386c1d831eed803f5e8f274a59c91c4c22eeac0).call{ value: 0 }(abi.encode(0x128acb0800000000000000000000000000000000000000000000000000000000));
        require(address(0xb386c1d831eed803f5e8f274a59c91c4c22eeac0).code.length);
        (bool success, bytes memory ret0) = address(0xb386c1d831eed803f5e8f274a59c91c4c22eeac0).call{ value: 0 }(abi.encode(0, 0x128acb0800000000000000000000000000000000000000000000000000000000));
        if (!var_b.length) {
        }
        require(address(stor_c).code.length);
        (bool success, bytes memory ret0) = address(stor_c).staticcall(abi.encode(0x70a0823100000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        stor_e = var_b.length - 0x01;
        var_b = 0x40 + var_b;
    }
}