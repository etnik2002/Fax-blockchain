contract TodoList {
    struct Task {
        string description;
        bool done;
    }

    Task[] public tasks;

    function addTask(string memory _desc) public {
        tasks.push(Task(_desc, false));
    }

    function markDone(uint _index) public {
        tasks[_index].done = true;
    }

    function getTask(uint _index) public view returns (string memory, bool) {
        Task memory t = tasks[_index];
        return (t.description, t.done);
    }
}