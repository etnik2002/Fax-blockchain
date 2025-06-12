contract Factorial {
    function factorial(uint n) public pure returns (uint) {
        uint result = 1;
        for (uint i = 1; i <= n; i++) {
            result *= i;
        }
        return result;
    }
}