// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./AbstractRoyalties.sol";
import "../IRoyaltiesV2.sol";

contract RoyaltiesV2Impl is AbstractRoyalties, IRoyaltiesV2 {

    function getRaribleV2Royalties(uint256 id) external override view returns (LibPart.Part[] memory) {
        return royalties[id];
    }

    function _onRoyaltiesSet(uint256 id, LibPart.Part[] memory _royalties) internal override {
        emit RoyaltiesSet(id, _royalties);
    }
}