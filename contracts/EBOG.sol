// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "ERC20.sol";

contract EBOG is ERC20 {
    constructor() public ERC20("EBOG Digital Venue", "EBOG"){
        _mint(msg.sender, 100000000  * (10 ** uint256(decimals())));
    }
}
