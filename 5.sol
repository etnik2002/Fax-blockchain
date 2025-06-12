contract AddressList {
    address[] public addresses;

    function register() public {
        addresses.push(msg.sender);
    }

    function getCount() public view returns (uint) {
        return addresses.length;
    }
}