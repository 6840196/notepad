class Memo < Post

  def read_from_console
    puts "введите заголовок для записи"
    @title = STDIN.gets.chomp

    puts "Вводите строки вашей записи, окончанием ввода будет строка \"end\""
    line = nil
    @text = []
    while line != "end" do
      line = STDIN.gets.chomp
      @text << line
    end

    @text.pop
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y-%m-%d, %H:%M:%S")}"

    return @text.unshift(@title, time_string)
  end

  def file_path
    current_path = File.dirname(__FILE__ )

    file_name = "#{@title}.txt"

    return current_path + "/data/memo/" + file_name
  end
end