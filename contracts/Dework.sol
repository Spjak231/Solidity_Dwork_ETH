// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
import {FreelancerProfile} from "./types/DeworkTypes.sol";

contract Dework{
 uint256 connetFee;
 address public initialOwner;

 FreelancerProfile[] public freelancerProfiles;

 constructor(address _initialOwner){
    initialOwner = _initialOwner;
 }




 function getNumberOfRegisteredFreelancers()public view returns(uint256){
    return freelancerProfiles.length;
 }

 function registerFreelancerProfile(
      string memory name,
      uint8 yearsOfExperience,
      uint256 hourlyRateWei
 ) public {
   uint256 freelancerId = getNumberOfRegisteredFreelancers();


   FreelancerProfile memory freelancerProfile = FreelancerProfile({
      id:freelancerId,
      name:name,
      wallet:msg.sender,
      yearsOfExperience:yearsOfExperience,
      isAvailableForHire:true,
      hourlyRateWei:hourlyRateWei
   });
   freelancerProfiles.push(freelancerProfile);
 }
}