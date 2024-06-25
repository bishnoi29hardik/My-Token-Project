## My Token
This Solidity program is a token contract demonstrating basic functionality for creating and managing a custom token on the Ethereum blockchain.

## Description
This program is a simple token contract written in Solidity. It includes public variables for token details, a mapping for balances, and functions for minting and burning tokens. This contract can serve as a starting point for those looking to understand token creation and management on the blockchain.

## Getting Started
### Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Create token.sol). Copy and paste the following code into the file:
```
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract MyToken {

    // public variables here
    string public token_name = "Chandigarh";
    string public token_abbv = "chd";
    uint public total_supply = 0;

    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mint(address _to ,uint _amount)public{
      total_supply += _amount;
      balances[_to] += _amount;
    }

    // burn function
    function burn(address _to ,uint _amount)public {
      if(balances[_to] >= _amount){
        total_supply -= _amount;
        balances[_to] -= _amount;
      }
    }
}
```
## Help
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile MyToken.sol" button.
Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.
Once the deployment is successful, Remix will display the deployed contract address. You can interact with the "mint" and "burn" functions by clicking on them and providing the required parameters (address and amount).
## Authors
Hardik Bishnoi
@ bishnoihardik29@gmail.com
## License
This project is licensed under the MIT License - see the LICENSE.md file for details
