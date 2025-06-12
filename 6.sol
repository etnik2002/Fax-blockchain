contract EtherWallet {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    receive() external payable {}

    function withdraw() public {
        require(msg.sender == owner, "Vetem pronari mund te terheqe");
        payable(owner).transfer(address(this).balance);
    }
}