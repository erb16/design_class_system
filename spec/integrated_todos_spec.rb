require 'todo'
require 'todo_list'

RSpec.describe "Integration" do 
    context "after creating an instance of todo" do
      it "adds the task to the list of todos" do
      todo = Todo.new("walk the dog")
      todolist = TodoList.new
      result = todolist.add(todo)
      expect(result).to eq [todo]
    end
  end

  it "adds tasks to the todolist" do
    todo = Todo.new("walk the dog")
    todo2 = Todo.new("wash the dog")
    todolist = TodoList.new
    todolist.add(todo.task)
    result = todolist.add(todo2.task)
    expect(result).to eq ["walk the dog", "wash the dog"]
  end

  it "returns a list of uncompleted tasks" do
    todo = Todo.new("walk the dog")
    todo2 = Todo.new("wash the dog")
    todo2.mark_done!
    todolist = TodoList.new
    todolist.add(todo.task)
    todolist.add(todo2.task)
    result = todolist.incomplete
    expect(result).to eq ["walk the dog"]
  end

  it "returns a list of completed tasks" do
    todo = Todo.new("walk the dog")
    todo2 = Todo.new("wash the dog")
    todolist = TodoList.new
    todolist.add(todo.mark_done!)
    todolist.add(todo2.mark_done!)
    result = todolist.complete
    expect(result).to eq ["walk the dog: done", "wash the dog: done"]
  end

  it "marks all tasks as completed" do
    todo = Todo.new("walk the dog")
    todo2 = Todo.new("wash the dog")
    todolist = TodoList.new
    todolist.add(todo.task)
    todolist.add(todo2.task)
    expect(todolist.give_up!).to eq ["walk the dog: done", "wash the dog: done"]
  
  end


end