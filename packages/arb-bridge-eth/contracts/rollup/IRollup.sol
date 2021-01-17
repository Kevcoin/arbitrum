// SPDX-License-Identifier: Apache-2.0

/*
 * Copyright 2021, Offchain Labs, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.6.11;

interface IRollup {
    event RollupCreated(bytes32 machineHash);

    event NodeCreated(
        uint256 indexed nodeNum,
        bytes32[7] assertionBytes32Fields,
        uint256[10] assertionIntFields,
        uint256 inboxMaxCount,
        bytes32 inboxMaxHash
    );

    event RollupChallengeStarted(
        address indexed challengeContract,
        address asserter,
        address challenger,
        uint256 challengedNode
    );

    event SentLogs(bytes32 logsAccHash);

    function initialize(
        address _outbox,
        bytes32 _machineHash,
        uint256 _challengePeriodBlocks,
        uint256 _arbGasSpeedLimitPerBlock,
        uint256 _baseStake,
        address _stakeToken,
        address _owner,
        address _bridge,
        address _challengeFactory,
        address _nodeFactory,
        bytes memory _extraConfig,
        address _admin
    ) external;

    function completeChallenge(address winningStaker, address losingStaker) external;

    function returnOldDeposit(address stakerAddress) external;
}
