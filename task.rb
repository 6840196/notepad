require 'date'

class Task < Post

  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts "Введите имя задачи"
    @text = STDIN.gets.chomp

    puts "Введите дату дедлайна"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y-%m-%d, %H:%M:%S")}"

    deadline = "Крайний срок: #{@due_date}"

    return [deadline, @text, time_string]
  end

  def file_path
    current_path = File.dirname(__FILE__ )

    file_name = "#{@text} выполнить до - #{@due_date}.txt"

    return current_path + "/data/task/" + file_name
  end
end