# File: lib/todo.rb


class Todo
  def initialize(task) # task is a string
    # ...
    @task = task
 

  end

  def task
    # Returns the task as a string
    return @task
  end

  def mark_done!
    # Marks the todo as done
    # @task += ": done"
    # @mark_done = @mark_done << @task
    @task = @task += ': done'
    
    # Returns nothing
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
    @task.include?(": done")
    #  @task.include?(": done")

  end

  # private
  # def list_of_done
  #   return @mark_done
  # end

  # def add_done(task)
  #   return @mark_done << task
  # end

end

# todo = Todo.new("walk the dog")
# todo2 = Todo.new("wash the dog")
# todo.mark_done!
# todo2.mark_done!
# p todo.done?
# p todo2.done?