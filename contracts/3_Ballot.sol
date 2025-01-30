  pragma solidity ^0.4.17;

contract Campaign {
  struct Request {
    string description;
    uint value;
    address recipient;
    bool complete;
  }

  address public manager;
  uint public minimumContribution;
  mapping(address => bool) approvers;
  Request[] public requests;

  constructor (uint minimum) public {
    manager = msg.sender;
    minimumContribution = minimum;
  }

  modifier restricted() {
    require(msg.sender == manager);
    _;
  }


  function contribute() public payable {
    require(msg.value > minimumContribution);

    approvers[msg.sender] = true;
  }

  function createRequest(string description, uint value, address recipient)
    public restricted {
      require(approvers[msg.sender]);
      Request memory newRequest = Request({
        description: description,
        value: value,
        recipient: recipient,
        complete: false
      });

      Request(description, value, recipient, false);

      requests.push(newRequest);
  }
}