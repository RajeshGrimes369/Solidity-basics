//SPDX-License-Identifier:MIT

pragma solidity^0.8.0;

contract pay
{
      string public own;
      mapping(address => uint) public sentamo;

      constructor(){
            own = msg.sender;
      }

      function payamo()public payable{
            sentamo(msg.sender) += msg.value;
      }
      function payinfo() public view returns(uint){
            return sentamo(msg.sender);
      }
      function withdeaw(uint amount) public{
            require(sentamo[msg.sender] => amount ,"money not enogsh");
            payable(msg.sender).transfer(amount);
      }
      function payall() public {
            require(msg.sender == own);
            payable(msg.sender).transfer(address(this).balance);
      }
}
