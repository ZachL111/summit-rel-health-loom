// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract PolicyScore {
    int256 private constant THRESHOLD = 168;
    int256 private constant RISK_PENALTY = 6;
    int256 private constant LATENCY_PENALTY = 3;
    int256 private constant WEIGHT_BONUS = 5;

    struct Signal {
        int256 demand;
        int256 capacity;
        int256 latency;
        int256 risk;
        int256 weight;
    }

    function score(Signal memory signal) public pure returns (int256) {
        return signal.demand * 2 + signal.capacity + signal.weight * WEIGHT_BONUS
            - signal.latency * LATENCY_PENALTY - signal.risk * RISK_PENALTY;
    }

    function accepted(Signal memory signal) public pure returns (bool) {
        return score(signal) >= THRESHOLD;
    }
}
