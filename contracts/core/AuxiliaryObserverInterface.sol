pragma solidity ^0.4.23;

// Copyright 2018 OpenST Ltd.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/** @title The interface for the auxiliary observer. */
interface AuxiliaryObserverInterface {

    /**
     * @notice Report a checkpoint of auxiliary to this core contract. A
     *         checkpoint must be at a height that is a multiple of the epoch
     *         length. You can report every checkpoint only once.
     *
     * @param _height The block height of the checkpoint.
     * @param _blockHash The block hash of the block at the checkpoint.
     *
     * @return `true` if the report succeeded. Reverts if it fails.
     */
    function reportCheckpoint(
        uint256 _height,
        bytes32 _blockHash
    )
        external
        returns (bool success_);
}
