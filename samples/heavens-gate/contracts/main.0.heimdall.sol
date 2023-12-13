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
    bytes32 public stor_b;
    (bool success, bytes public stor_c;

    /// @custom:selector    0x8d9410de
    /// @custom:name        Unresolved_8d9410de
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_8d9410de(address arg0, address arg1) public pure {
        require(arg0 == (address(arg0)));
        if (arg1 == (address(arg1))) {
        }
    }

    /// @custom:selector    0x10d1e85c
    /// @custom:name        uniswapV2Call
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg3 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function uniswapV2Call(address arg0, uint256 arg1, uint256 arg2, bytes memory arg3) public {
        require(arg0 == (address(arg0)));
        require(!arg3 > 0xffffffffffffffff);
        require(!(arg3) > 0xffffffffffffffff);
        var_d = var_d + 0x40;
        require(!var_d.length < 0x20);
        var_d = 0x34 + var_d;
        var_d = 0x40 + (0x34 + var_d);
        require(keccak256(var_h) == (var_j & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff << ((0x20 - var_d.length) << 0x03))));
        require(!((0x20 + (0x04 + arg3)) + (arg3) - (0x20 + (0x04 + arg3))) < 0x20);
        (bool success, bytes memory ret0) = address(stor_b).call{ value: 0 }(abi.encode(0x095ea7b300000000000000000000000000000000000000000000000000000000));
        var_d = var_d + (uint248(ret0.length + 0x1f));
        require(!((var_d + ret0.length) - var_d) < 0x20);
        require(var_d.length == var_d.length);
        (bool success, bytes memory ret0) = address(stor_c).call{ value: 0 }(abi.encode(0x095ea7b300000000000000000000000000000000000000000000000000000000));
        var_d = var_d + (uint248(ret0.length + 0x1f));
        if (!((var_d + ret0.length) - var_d) < 0x20) {
        }
        var_d = 0x34 + var_d;
        if (keccak256(var_h) == (var_j)) {
        }
    }

    /// @custom:selector    0xda9100cc
    /// @custom:name        Unresolved_da9100cc
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_da9100cc(address arg0) public {
        require(arg0 == (address(arg0)));
        var_d = var_d + 0x40;
        require(!var_d.length < 0x20);
        var_d = 0x34 + var_d;
        var_d = 0x40 + (0x34 + var_d);
        require(keccak256(var_h) == (var_j & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff << ((0x20 - var_d.length) << 0x03))));
        require(address(arg0));
        (bool success, bytes memory ret0) = address(arg0).staticcall(abi.encode(0x70a0823100000000000000000000000000000000000000000000000000000000));
        var_d = var_d + (uint248(ret0.length + 0x1f));
        require(!((var_d + ret0.length) - var_d) < 0x20);
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000));
        var_d = var_d + (uint248(ret0.length + 0x1f));
        require(!((var_d + ret0.length) - var_d) < 0x20);
        require(var_d.length == var_d.length);
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: 0x08fc * !address(this).balance, value: address(this).balance }(abi.encode());
        var_d = 0x34 + var_d;
        if (keccak256(var_h) == (var_j)) {
        }
    }
}
