// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IMaverickV2Pool {
    function tokenA() external view returns (address);
    function tokenB() external view returns (address);
}

interface IMaverickV2Factory {
    function isFactoryPool(address pool) external view returns (bool);
}
