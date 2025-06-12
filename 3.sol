contract NameRegistry {
    mapping(address => string) public names;

    function registerName(string memory _name) public {
        names[msg.sender] = _name;
    }

    function getMyName() public view returns (string memory) {
        return names[msg.sender];
    }
}