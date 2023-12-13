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

    /// @custom:selector    0x10d1e85c
    /// @custom:name        Unresolved_10d1e85c
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_10d1e85c(address arg0, bytes memory arg1, bytes memory arg2) public pure {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        if (arg2 == arg2) {
        }
    }

    /// @custom:selector    0x8d9410de
    /// @custom:name        Unresolved_8d9410de
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_8d9410de(address arg0, address arg1) public pure payable {
        require(arg0 == (address(arg0)));
        if (arg1 == (address(arg1))) {
        }
    }

    /// @custom:selector    0xda9100cc
    /// @custom:name        Unresolved_da9100cc
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_da9100cc(address arg0) public {
        require(arg0 == (address(arg0)));
        var_d = ((0x20 + var_d) + 0x02) + 0x1e;
        require(!var_d.length < 0x20);
        var_d = (0x20 + var_d) + 0x14;
        var_d = (0x20 + var_d) + 0x20;
        require(keccak256(var_h) == (var_j & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff << (0x08 * (0x20 - var_d.length)))));
        require(address(arg0) - 0);
        (bool success, bytes memory ret0) = address(arg0).staticcall(abi.encode(0x70a0823100000000000000000000000000000000000000000000000000000000));
        var_d = var_d + (uint248(ret0.length + 0x1f));
        require(!((var_d + ret0.length) - var_d) < 0x20);
        require(var_m == (var_m));
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000));
        var_d = var_d + (uint248(ret0.length + 0x1f));
        require(!((var_d + ret0.length) - var_d) < 0x20);
        require(var_m == (var_m));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !address(this).balance * 0x08fc, value: address(this).balance }(abi.encode());
        var_d = (0x20 + var_d) + 0x14;
        if (keccak256(var_h) == (var_j)) {
        }
    }
}
