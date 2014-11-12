class Subtitle

  def initialize file_name
    @file_name = File.expand_path("~/Desktop/ironhack/code/subtitle_processor/tmp/#{file_name}", __FILE__)
  end

  def is_readable?
    begin
      @file = IO.read(@file_name)
      if @file
        return @file.length > 0
      end
    rescue
      false
    end
  end

  def modulate
    if is_readable?
      @dialogs = get_dialogs
    else
      puts "File can't be readed"
    end
    @dialogs.to_a
    set_array_dialogs
  end

  def get_dialogs
    @file.split("\r\n\r\n")
  end

  def set_array_dialogs
    @array_dialogs = []
    @dialogs.each do | line |
      @array_dialogs.push(line.gsub(" --> ", "\r\n").split("\r\n").to_a)
    end
    @array_dialogs
  end

  def display_dialog index
    @array_dialogs[index]
  end
end