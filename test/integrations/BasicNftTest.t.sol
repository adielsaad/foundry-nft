// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {DeployBasicNft} from "../../script/DeployBasicNft.s.sol";
import {BasicNft} from "../../src/BasicNft.sol";


contract BasicNftTest is Test {
    DeployBasicNft deployer;
    BasicNft public basicNft;
    address USER = makeAddr("user");
    string public constant PUG_TOKEN_URI = "ipfs://bafybeig37ioir76s7mg5oobetncojcm3c3hxasyd4rvid4jqhy4gkaheg4/?filename=0-PUG.json";
    
    function setUp() public {
        deployer = new DeployBasicNft();
        basicNft = deployer.run();
    }

    function test_NameIsCorrect() public view {
        string memory expectedName = "BasicNft";
        string memory actualName = basicNft.name();
        assert(keccak256(abi.encodePacked(actualName)) == keccak256(abi.encodePacked(expectedName)));
    }
    
    function test_CanMintAndHaveBalance() public {
        vm.prank(USER);
        basicNft.mintNft(PUG_TOKEN_URI);
        assert(basicNft.balanceOf(USER) == 1);
        assert(keccak256(abi.encodePacked(basicNft.tokenURI(0))) == keccak256(abi.encodePacked(PUG_TOKEN_URI)));
    }
}