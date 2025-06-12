contract MessageStorage {
    string public message;

    function setMessage(string memory _msg) public {
        message = _msg;
    }
}