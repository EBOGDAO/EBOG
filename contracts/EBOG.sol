// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract EBOG is ERC20 {
    
    uint256 decimal = 10 ** uint256(decimals());
    address[] accounts;
    uint256[] amounts;
    
    constructor() ERC20("EBOG Digital Arena", "EBOG") {
       minterGoBrrr(100000000 * decimal);
    }

    function massAirdrop(address[] memory _accounts, uint256  _amount) public {
        for (uint256 i = 0; i < _accounts.length; i++) {
            ERC20.transfer(_accounts[i], _amount * decimal);
        }
    }
    
    function airdrop(address _account, uint256 _amount) public {
        ERC20.transfer(_account, _amount * decimal);
    }
    
    function minterGoBrrr(uint256 _toMint) internal
    {
        _mint(msg.sender, _toMint);
    }
}
