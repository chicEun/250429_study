// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Counter {
    uint public count;
    address public owner;

    constructor(uint _initial, address _owner) {
        count = _initial;
        owner = _owner;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "only owner do");
        _;
    }

    function increment() public onlyOwner {
        count += 1;
    }

    function getCount() public view returns (uint256) {
        return count;
    }

    function isOver(uint target) public view returns (bool) {
        return count > target;
    }

    function sum(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
}
