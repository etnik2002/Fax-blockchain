contract SimpleVoting {
    mapping(address => bool) public hasVoted;
    uint public votesForYes;
    uint public votesForNo;

    function vote(bool _voteYes) public {
        require(!hasVoted[msg.sender], "Ke votuar nje here");
        hasVoted[msg.sender] = true;
        if (_voteYes) {
            votesForYes++;
        } else {
            votesForNo++;
        }
    }
}