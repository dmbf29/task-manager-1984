# Modeling the data of our app (setting the rules and behavior for ONE instance)
# data + behavior
# Task.new -> initialize
# task.description
class Task
  attr_reader :description # :done (done is a boolean)

  def initialize(description)
    @description = description
    @done = false
  end

  def done?
    return @done
  end

  def mark_as_done!
    @done = true
  end
end
