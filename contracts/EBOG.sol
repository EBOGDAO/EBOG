// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "ERC20.sol";

contract STINK is ERC20 {
    constructor() public ERC20("EBOG Digital Venue", "EBOG"){
        _mint(msg.sender, 1000000000  * (10 ** uint256(decimals())));
    }
}
