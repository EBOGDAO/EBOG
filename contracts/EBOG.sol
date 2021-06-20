pragma solidity ^0.8.0;

import "ERC20.sol";

contarct EBOG is ERC20 {
	constructor(uint256 initialSupply) public ERC20("EBOG Digital Venue", "EBOG"){
		_mint(msg.sender, initialSupply);
	}
}