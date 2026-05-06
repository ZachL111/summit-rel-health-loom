// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DomainReview {
    struct Item {
        int256 signal;
        int256 slack;
        int256 drag;
        int256 confidence;
    }

    function score(Item memory item) public pure returns (int256) {
        return item.signal * 2 + item.slack + item.confidence - item.drag * 3;
    }

    function lane(Item memory item) public pure returns (uint8) {
        int256 value = score(item);
        if (value >= 140) return 2;
        if (value >= 105) return 1;
        return 0;
    }
}
