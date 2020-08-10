require_relative 'product'

class Book < Product

  def initialize(params)
    super
    if params[:genre] != nil && params[:author] != nil
      @genre = params[:genre]
      @author = params[:author]
    else
    #  ex
    puts 'No'
    end
  end

  def self.from_file(path)
    begin
      file = File.new(path, "r:UTF-8")

      lines = file.readlines.map { |s| s.chomp }
      file.close

      params = {
          title: lines[0],
          genre: lines[1],
          author: lines[2],
          price: lines[3].to_i,
          quantity: lines[4].to_i
      }

      self.new(params)

    rescue Errno::ENOENT => err
      # print "failed to open #{path}\n"
      puts err.message
    end
  end

  def genre
    @genre
  end

  def author
    @author
  end

  def genre=(genre)
    @genre = genre
  end

  def author=(author)
    @author = author
  end

  def to_s
    "Книга \"#{@title}\", #{@genre}, автор - #{@author}.
Цена #{@price} (осталось #{@quantity})."
  end
end