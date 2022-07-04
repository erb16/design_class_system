
class TodoList
  def initialize
    @todolist = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    newtodo = Todo.new(todo)
    @todolist << newtodo.task
  end

  def incomplete
    # Returns all non-done todos
    @incomplete = @todolist.select { |item| !item.include?(": done")}
  
  end

  def complete
    # Returns all complete todos
    @todolist.select { |item| item.include?(": done") }
   
  end

  def give_up!
    # Marks all todos as complete
    @todolist.map { |item| item += ": done" unless item.include?(": done") } 
    
  end
end