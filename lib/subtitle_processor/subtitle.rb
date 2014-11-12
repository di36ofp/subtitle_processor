class Subtitle

  def initialize file_name
    @file = File.expand_path("~/Desktop/ironhack/code/subtitle_processor/tmp/#{file_name}", __FILE__)
  end

  def is_readable?
    begin
      if file = IO.read(@file)
        return file.length > 0
      end
    rescue
      false
    end
  end

  def modulate
    if is_readable?
      #work
    else
      puts "File can't be readed"
    end
  end
end