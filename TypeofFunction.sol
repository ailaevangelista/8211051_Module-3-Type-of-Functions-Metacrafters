// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract MyToken is ERC20 {
    address public tokenOwner;

    modifier onlyOwner() {
        require(msg.sender == tokenOwner, "Only owner can call this dunction");
        _;
    }

    constructor() ERC20("MyToken", "MTK") {
        tokenOwner= msg.sender;
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        _transfer(_msgSender(), to, amount);
        return true;       
    }

    function transferFrom(address sender, address recipient, uint256 amount) public override returns (bool) {
         _transfer(sender, recipient, amount);
         _approve(sender, _msgSender(), allowance(sender, _msgSender())- amount);
         return true;
    }

}
