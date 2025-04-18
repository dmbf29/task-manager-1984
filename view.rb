class View
  # ONLY puts/gets
  #
  def display(tasks)
    # tasks an array of INSTANCES
    if tasks.any?
      tasks.each_with_index do |task, index|
        x_mark = task.done? ? "X" : " "
        puts "#{index + 1}.) [#{x_mark}] - #{task.description}"
      end
    else
      puts "No tasks."
    end
  end

  def ask_for_description
    puts "What's the task?"
    return gets.chomp
  end

  def ask_for_index
    puts 'What number?'
    return gets.chomp.to_i - 1
  end
end
