// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../src/DomainReview.sol";

contract DomainReviewTest {
    function testDomainReviewLane() public {
        DomainReview lens = new DomainReview();
        DomainReview.Item memory item = DomainReview.Item(42, 50, 29, 51);
        require(lens.score(item) == 98, "domain score mismatch");
        require(lens.lane(item) == 0, "domain lane mismatch");
    }
}
