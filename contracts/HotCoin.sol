pragma solidity ^0.4.23;

import "openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract HotCoin is StandardToken {

  string public constant name = "HotCoin"; // solium-disable-line uppercase
  string public constant symbol = "HOTC"; // solium-disable-line uppercase
  uint8 public constant decimals = 0; // solium-disable-line uppercase

  uint256 public constant INITIAL_SUPPLY = 100000000000;

  constructor() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
    emit Transfer(0x0, msg.sender, INITIAL_SUPPLY);
  }

}

