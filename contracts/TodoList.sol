pragma solidity ^0.5.0;

contract TodoList {
    uint public taskCount = 0;

    struct Task {
        uint id; 
        string content;
        bool completed; 
    }

 mapping(uint => Task) public tasks;

 constructor() public {
     createTask("Make a blockchain To-do list");
     createTask("polish diamond hands");
     createTask("Go to the moooon!");

 }

 function createTask(string memory _content) public {
    taskCount ++; 
    tasks[taskCount] = Task(taskCount, _content, false); 
 }

}