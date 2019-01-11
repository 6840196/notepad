class Link < Post

  def initialize
    super

    @url = ''
  end

  def read_from_console
    puts "Введите адрес ссылки"
    @url = STDIN.gets.chomp

    puts "Введите описание ссылки"
    @text = STDIN.gets.chomp

  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y-%m-%d, %H:%M:%S")}"

    return [@url, @text, time_string]
  end

  def file_path
    current_path = File.dirname(__FILE__ )

    file_name = "#{@text[0...25]}.txt"

    return current_path + "/data/urls/" + file_name
  end
end