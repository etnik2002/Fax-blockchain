contract Counter {
    int public count;

    function increment() public {
        count += 1;
    }

    function decrement() public {
        count -= 1;
    }
}