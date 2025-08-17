// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/// @title MyToken - A simple mintable & burnable token
/// @author Hardik
/// @notice This contract implements a basic token with minting and burning functionality.
/// @dev Not ERC20 compliant, just a simple custom token for learning purposes.
contract MyToken {

    // Public variables
    string public tokenName = "Chandigarh";
    string public tokenAbbrv = "CHD";
    uint public totalSupply = 0;

    // Mapping from addresses to balances
    mapping(address => uint) public balances;

    /// @notice Mint new tokens to a specific address
    /// @param _to The address to receive the tokens
    /// @param _amount The number of tokens to mint
    function mint(address _to, uint _amount) public {
        totalSupply += _amount;
        balances[_to] += _amount;
    }

    /// @notice Burn tokens from a specific address
    /// @param _from The address whose tokens will be burned
    /// @param _amount The number of tokens to burn
    function burn(address _from, uint _amount) public {
        require(balances[_from] >= _amount, "Insufficient balance to burn");
        totalSupply -= _amount;
        balances[_from] -= _amount;
    }
}
