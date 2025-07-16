// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IPool {
    function tokenA() external view returns (address);
    function tokenB() external view returns (address);
}

interface IFactory {
    function isFactoryPool(IPool pool) external view returns (bool);
}
