require 'todo'

RSpec.describe Todo do
  context "when we add a task" do
    it "returns the task as a string" do
      todo = Todo.new("walk the dog")
      expect(todo.task).to eq "walk the dog"
    end
  end

  context "when we mark a task as complete" do
    it "adds : done to the string" do
      todo = Todo.new("walk the dog")
      expect(todo.mark_done!).to eq "walk the dog: done"
    end
  end

  context "when the task has been marked as done" do
    it "returns true" do
      todo = Todo.new("walk the dog")
      todo.mark_done!
      expect(todo.done?).to eq true
    end
  end

  context "when the task has not been marked as done" do
    it "returns false" do
      todo = Todo.new("walk the dog")
      expect(todo.done?).to eq false
    end
  end
end

  
  
