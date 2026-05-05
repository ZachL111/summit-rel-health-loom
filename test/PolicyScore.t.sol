// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../src/PolicyScore.sol";

contract PolicyScoreTest {
    function test_case_1() public pure {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(79, 85, 14, 7, 12);
        require(scorer.score(signal) == 219, "score mismatch");
        require(scorer.accepted(signal) == true, "decision mismatch");
    }
    function test_case_2() public pure {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(85, 97, 11, 24, 6);
        require(scorer.score(signal) == 120, "score mismatch");
        require(scorer.accepted(signal) == false, "decision mismatch");
    }
    function test_case_3() public pure {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(77, 82, 20, 18, 10);
        require(scorer.score(signal) == 118, "score mismatch");
        require(scorer.accepted(signal) == false, "decision mismatch");
    }
}
