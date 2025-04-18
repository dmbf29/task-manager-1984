require "csv"

# Repository -> acting as our DB. Holding all of our instances
# TaskRepository.new

class TaskRepository
  def initialize
    # tasks array is our "in memory" DB
    @filepath = 'tasks.csv'
    @tasks = [] # storing INSTANCES
    load_csv # load all of the "stringified" objects from the CSV and turn them back into instances
  end

  def create(task) # task is an instance
    @tasks << task
    save_csv
  end

  def destroy(index)
    @tasks.delete_at(index)
    save_csv
  end

  def all
    @tasks
  end

  private

  def load_csv
    # load the tasks from the CSV
    # turn the row of strings back into an instance and push into @tasks array
  end

  def save_csv
    CSV.open(@filepath, "wb") do |csv|
      @tasks.each do |task|
        # turn our instance into an array of strings
        # bc our CSV cant handle Ruby objects
        csv << [task.description, task.done?]
      end
    end
  end
end
