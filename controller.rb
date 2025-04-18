require_relative 'view'
# Controller -> handle user actions
# no puts here, only in the view
class Controller
  def initialize(task_repository)
    # storing instances
    @task_repository = task_repository
    # displaying instances
    @view = View.new
  end

  def remove
    # display all of my tasks
    tasks = @task_repository.all
    @view.display(tasks)
    # tell the view to ask for a task index
    index = @view.ask_for_index
    # tell the repository to remove the task using the index
    @task_repository.destroy(index)
  end

  def mark_as_done
    # display all of my tasks
    tasks = @task_repository.all
    @view.display(tasks)
    # tell the view to ask for a task index
    index = @view.ask_for_index
    # get the task with the index
    task = tasks[index]
    # mark a task as done
    task.mark_as_done!
  end

  def list
    # ask the repository for all of the tasks
    tasks = @task_repository.all
    # give the tasks to the view to display
    @view.display(tasks)
  end

  def add
    # tell the view to ask user for the description
    description = @view.ask_for_description
    # create an instance of a task with the description
    task = Task.new(description)
    # give the task to the repository
    @task_repository.create(task)
  end
end
