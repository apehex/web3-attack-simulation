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
    
    bytes public stor_g;
    address public stor_i;
    address public stor_l;
    address public stor_o;
    bytes32 public stor_a;
    bytes32 public stor_b;
    bytes32 public stor_d;
    bytes32 public stor_f;
    (bool success, bytes public stor_c;
    (bool success, bytes public stor_e;
    (bool success, bytes public stor_h;
    (bool success, bytes public stor_j;
    (bool success, bytes public stor_k;
    (bool success, bytes public stor_m;
    (bool success, bytes public stor_n;
    
    /// @custom:selector    0x3f6a5f0e
    /// @custom:name        Unresolved_3f6a5f0e
    function Unresolved_3f6a5f0e() public payable {
        require(address(msg.sender) == (address(stor_a)));
        var_b = (((0x24 + var_b) + 0x20) + 0x20) + 0;
        (bool success, bytes memory ret0) = address(stor_b).delegatecall(abi.encode());
        require(ret0.length == 0);
        require(success == 0x01);
        require(!address(this).balance | (0x09 == ((address(this).balance * 0x09) / address(this).balance)));
        require(0x0a);
        require(address(stor_c).code.length);
        (bool success, bytes memory ret0) = address(stor_c).call{ value: address(this).balance }(abi.encode(0xce7d650300000000000000000000000000000000000000000000000000000000));
        assembly { addr := create(0, var_b, (0x1347 + var_b) - var_b) }
        require(CREATE);
        require(stor_d < 0x14);
        stor_e = (address(CREATE)) | (uint96(stor_e));
        require(stor_d < 0x14);
        address var_k = stor_e;
        require(address(stor_f).code.length);
        (bool success, bytes memory ret0) = address(stor_f).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000));
        require(stor_d < 0x14);
        require(var_k.code.length);
        (bool success, bytes memory ret0) = var_k.call{ value: 0 }(abi.encode(0xc5d9a35900000000000000000000000000000000000000000000000000000000));
        if (stor_d - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) {
            stor_d = stor_d + 0x01;
        }
        if (success == 0x01) {
        }
    }
    
    /// @custom:selector    0x920f5c84
    /// @custom:name        Unresolved_920f5c84
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_920f5c84(bytes memory arg0, bytes memory arg1, bytes memory arg2) public pure {
        require(!arg0 > 0xffffffffffffffff);
        require(!(arg0) > 0xffffffffffffffff);
        require(!arg1 > 0xffffffffffffffff);
        require(!(arg1) > 0xffffffffffffffff);
        require(!arg2 > 0xffffffffffffffff);
    }
    
    /// @custom:selector    0x11702872
    /// @custom:name        Unresolved_11702872
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_11702872(bytes memory arg0) public {
        require(arg0 == arg0);
        require(address(msg.sender) == (address(stor_a)));
        require(arg0 < 0x14);
        require(address(stor_g).code.length);
        (bool success, bytes memory ret0) = address(stor_g).call{ value: 0 }(abi.encode(0x0721348d00000000000000000000000000000000000000000000000000000000));
    }
    
    /// @custom:selector    0xd3429501
    /// @custom:name        Unresolved_d3429501
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_d3429501(address arg0) public payable {
        require(arg0 == (address(arg0)));
        require(address(msg.sender) == (address(stor_a)));
        var_c = (0x20 + var_c) + 0x20;
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0x5cffe9de00000000000000000000000000000000000000000000000000000000));
        var_c = var_c + (uint248(ret0.length + 0x1f));
        require(!((var_c + ret0.length) - var_c) < 0x20);
        require(var_k == (var_k));
        assembly { addr := create(0, var_c, (0x1347 + var_c) - var_c) }
        require(CREATE);
        require(stor_d < 0x14);
        stor_e = (address(CREATE)) | (uint96(stor_e));
        require(stor_d < 0x14);
        var_f = stor_e;
        require(address(stor_f).code.length);
        (bool success, bytes memory ret0) = address(stor_f).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000));
        require(stor_d < 0x14);
        require(var_f.code.length);
        (bool success, bytes memory ret0) = var_f.call{ value: 0 }(abi.encode(0xc5d9a35900000000000000000000000000000000000000000000000000000000));
        if (stor_d - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) {
            stor_d = stor_d + 0x01;
        }
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0x5cffe9de00000000000000000000000000000000000000000000000000000000, 0xc5d9a35900000000000000000000000000000000000000000000000000000000));
    }
    
    /// @custom:selector    0xbe2821b0
    /// @custom:name        Unresolved_be2821b0
    function Unresolved_be2821b0() public payable {
        require(address(msg.sender) == (address(stor_a)));
        require(!address(this).balance | (0x09 == ((address(this).balance * 0x09) / address(this).balance)));
        require(0x0a);
        require(address(stor_c).code.length);
        (bool success, bytes memory ret0) = address(stor_c).call{ value: address(this).balance }(abi.encode(0xce7d650300000000000000000000000000000000000000000000000000000000));
        assembly { addr := create(0, var_k, (0x1347 + var_k) - var_k) }
        require(CREATE);
        require(stor_d < 0x14);
        stor_e = (address(CREATE)) | (uint96(stor_e));
        require(stor_d < 0x14);
        address var_d = stor_e;
        require(address(stor_f).code.length);
        (bool success, bytes memory ret0) = address(stor_f).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000));
        require(stor_d < 0x14);
        require(var_d.code.length);
        (bool success, bytes memory ret0) = var_d.call{ value: 0 }(abi.encode(0xc5d9a35900000000000000000000000000000000000000000000000000000000));
        if (stor_d - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) {
            stor_d = stor_d + 0x01;
        }
    }
    
    /// @custom:selector    0x8237e538
    /// @custom:name        CALLBACK_SUCCESS
    function CALLBACK_SUCCESS() public pure returns (uint256) {
        return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9;
    }
    
    /// @custom:selector    0xce3b12fd
    /// @custom:name        Unresolved_ce3b12fd
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bool", "bytes", "bytes1", "bytes32", "int", "int256", "int8", "string", "uint", "uint256", "uint8"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_ce3b12fd(bytes memory arg0, bool arg1, bytes memory arg2) public pure {
        require(arg0 == arg0);
        require(arg1 == arg1);
        if (arg2 == arg2) {
        }
    }
    
    /// @custom:selector    0xd27b4915
    /// @custom:name        Unresolved_d27b4915
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_d27b4915(address arg0) public payable {
        require(arg0 == (address(arg0)));
        require(address(msg.sender) == (address(stor_a)));
        var_c = (0x20 + var_c) + 0x20;
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0x5cffe9de00000000000000000000000000000000000000000000000000000000));
        var_c = var_c + (uint248(ret0.length + 0x1f));
        require(!((var_c + ret0.length) - var_c) < 0x20);
        require(var_k == (var_k));
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0x5cffe9de00000000000000000000000000000000000000000000000000000000));
    }
    
    /// @custom:selector    0xfa461e33
    /// @custom:name        Unresolved_fa461e33
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_fa461e33(bytes memory arg0, bytes memory arg1) public pure {
        require(arg0 == arg0);
        if (arg1 == arg1) {
        }
    }
    
    /// @custom:selector    0x7e77e468
    /// @custom:name        Unresolved_7e77e468
    function Unresolved_7e77e468() public payable {
        require(address(msg.sender) == (address(stor_a)));
        var_c = (0x20 + var_c) + 0x20;
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0x5cffe9de00000000000000000000000000000000000000000000000000000000));
        var_c = var_c + (uint248(ret0.length + 0x1f));
        require(!((var_c + ret0.length) - var_c) < 0x20);
        require(var_k == (var_k));
        assembly { addr := create(0, var_c, (0x1347 + var_c) - var_c) }
        require(CREATE);
        require(stor_d < 0x14);
        stor_e = (address(CREATE)) | (uint96(stor_e));
        require(stor_d < 0x14);
        var_f = stor_e;
        require(address(stor_f).code.length);
        (bool success, bytes memory ret0) = address(stor_f).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000));
        require(stor_d < 0x14);
        require(var_f.code.length);
        (bool success, bytes memory ret0) = var_f.call{ value: 0 }(abi.encode(0xc5d9a35900000000000000000000000000000000000000000000000000000000));
        if (stor_d - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) {
            stor_d = stor_d + 0x01;
        }
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0x5cffe9de00000000000000000000000000000000000000000000000000000000, 0xc5d9a35900000000000000000000000000000000000000000000000000000000));
    }
    
    /// @custom:selector    0x4aa9f8ac
    /// @custom:name        Unresolved_4aa9f8ac
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_4aa9f8ac(bytes memory arg0, bytes memory arg1) public pure payable {
        require(arg0 == arg0);
        if (arg1 == arg1) {
        }
    }
    
    /// @custom:selector    0x4c15fb94
    /// @custom:name        Unresolved_4c15fb94
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_4c15fb94(address arg0, bytes memory arg1) public {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        require(address(msg.sender) == (address(stor_a)));
        require(address(arg0) - (address(stor_j)));
        (bool success, bytes memory ret0) = address(arg0).staticcall(abi.encode(0x70a0823100000000000000000000000000000000000000000000000000000000));
        var_c = var_c + (uint248(ret0.length + 0x1f));
        require(!((var_c + ret0.length) - var_c) < 0x20);
        require(var_d == (var_d));
        require(address(arg0).code.length);
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000));
        require(arg1 == 0);
        require(!(arg1 - 0x01) > arg1);
        require((arg1 - 0x01) < 0x14);
        require(address(stor_k).code.length);
        (bool success, bytes memory ret0) = address(stor_k).call{ value: 0 }(abi.encode(0xaa429e6600000000000000000000000000000000000000000000000000000000));
        (bool success, bytes memory ret0) = address(stor_j).staticcall(abi.encode(0x70a0823100000000000000000000000000000000000000000000000000000000, 0xaa429e6600000000000000000000000000000000000000000000000000000000));
        var_c = var_c + (uint248(ret0.length + 0x1f));
        require(!((var_c + ret0.length) - var_c) < 0x20);
        require(var_d == (var_d));
        require(address(stor_j).code.length);
        (bool success, bytes memory ret0) = address(stor_j).call{ value: 0 }(abi.encode(0x2e1a7d4d00000000000000000000000000000000000000000000000000000000));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !address(this).balance * 0x08fc, value: address(this).balance }(abi.encode());
        if (arg1 == 0) {
        }
    }
    
    /// @custom:selector    0xb529c612
    /// @custom:name        Unresolved_b529c612
    /// @param              arg0 ["bool", "bytes", "bytes1", "bytes32", "int", "int256", "int8", "string", "uint", "uint256", "uint8"]
    function Unresolved_b529c612(bool arg0) public payable {
        require(arg0 == arg0);
        require(address(msg.sender) == (address(stor_a)));
        require(address(stor_f).code.length);
        (bool success, bytes memory ret0) = address(stor_f).call{ value: 0 }(abi.encode(0x095ea7b300000000000000000000000000000000000000000000000000000000));
        require(address(stor_f).code.length);
        (bool success, bytes memory ret0) = address(stor_f).call{ value: 0 }(abi.encode(0x095ea7b300000000000000000000000000000000000000000000000000000000));
        require(address(stor_n).code.length);
        (bool success, bytes memory ret0) = address(stor_n).call{ value: 0 }(abi.encode(0x095ea7b300000000000000000000000000000000000000000000000000000000));
        require(address(stor_h).code.length);
        (bool success, bytes memory ret0) = address(stor_h).call{ value: 0 }(abi.encode(0x095ea7b300000000000000000000000000000000000000000000000000000000));
        require(address(stor_h).code.length);
        (bool success, bytes memory ret0) = address(stor_h).call{ value: 0 }(abi.encode(0x095ea7b300000000000000000000000000000000000000000000000000000000));
        require(address(stor_n).code.length);
        (bool success, bytes memory ret0) = address(stor_n).call{ value: 0 }(abi.encode(0x095ea7b300000000000000000000000000000000000000000000000000000000));
        require(!address(this).balance | (0x09 == ((address(this).balance * 0x09) / address(this).balance)));
        require(0x0a);
        require(address(stor_c).code.length);
        (bool success, bytes memory ret0) = address(stor_c).call{ value: address(this).balance }(abi.encode(0xce7d650300000000000000000000000000000000000000000000000000000000));
        var_a = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        (bool success, bytes memory ret0) = address(stor_f).staticcall(abi.encode(0x70a0823100000000000000000000000000000000000000000000000000000000));
        var_j = var_j + (uint248(ret0.length + 0x1f));
        require(!((var_j + ret0.length) - var_j) < 0x20);
        require(var_k == (var_k));
        address var_c = stor_m;
        require(address(stor_f).code.length);
        (bool success, bytes memory ret0) = address(stor_f).call{ value: 0 }(abi.encode(0x095ea7b300000000000000000000000000000000000000000000000000000000));
        require(!arg0 | (0x0de0b6b3a7640000 == ((arg0 * 0x0de0b6b3a7640000) / arg0)));
        require(var_c.code.length);
        (bool success, bytes memory ret0) = var_c.call{ value: 0 }(abi.encode(0x171672b100000000000000000000000000000000000000000000000000000000));
    }
    
    /// @custom:selector    0x23e30c8b
    /// @custom:name        Unresolved_23e30c8b
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_23e30c8b(address arg0, address arg1) public pure {
        require(arg0 == (address(arg0)));
        if (arg1 == (address(arg1))) {
        }
    }
    
    /// @custom:selector    0x3b0113a4
    /// @custom:name        Unresolved_3b0113a4
    function Unresolved_3b0113a4() public {
        if (address(msg.sender) == (address(stor_a))) {
            require(address(msg.sender) == (address(stor_a)));
            stor_d = stor_d + 0x01;
        }
    }
    
    /// @custom:selector    0xc92a5807
    /// @custom:name        Unresolved_c92a5807
    function Unresolved_c92a5807() public {
        if (address(msg.sender) == (address(stor_a))) {
            require(address(msg.sender) == (address(stor_a)));
            stor_d = stor_d - 0x01;
        }
    }
}