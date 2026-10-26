// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Dework {
    uint256 connectFree = 65536;
    bool isHired = false;
    uint256 registeredFreelancers = 0;
    uint24 freelancerId = 10;
    uint256 hourlyRate = 0;

    function registerFreelancerProfile() public {
        registeredFreelancers++;
    }

    function getNumberofRegisteredFreelancers()
        public view returns (uint256)
    {
        return registeredFreelancers;
    }

    function updatedHourlyRate(uint256 rate) public {
        hourlyRate = rate;
    }

    function getFreelancerProfile() public view returns (uint24) {
        return freelancerId;
    }
}