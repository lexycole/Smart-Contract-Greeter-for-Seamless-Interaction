// pragma solidity ^0.8.0;

// import "hardhat/console.sol";

// contract Token {
//   string public name = "Lazy Cats Token";
//   string public symbol = "LCT";
//   uint public totalSupply = 1000000;
//   mapping(address => uint) balances;

//   constructor() {
//     balances[msg.sender] = totalSupply;
//   }

//   function transfer(address to, uint amount) external {
//     require(balances[msg.sender] >= amount, "Not enough tokens");
//     balances[msg.sender] -= amount;
//     balances[to] += amount;
//   }

//   function balanceOf(address account) external view returns (uint) {
//     return balances[account];
//   }
// }

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        _mint(msg.sender, 100000 * (10 ** 18));
    }
}