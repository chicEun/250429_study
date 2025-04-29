// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Baseball {
    uint256 private progress = 10;
    address private owner;

    function getProgress() public view returns (uint) {
        return progress;
    }
    // view와 pure의 공통점=> 상태를 변화 시키지 않겠다는 명시적 선언
    // function setProgress() public {
    //     progress = 11;
    // }

    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
}
