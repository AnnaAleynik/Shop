require_relative 'product'

class Film < Product

  attr_accessor :director
  attr_accessor :year

  def initialize(params)
    super
    if params[:year] != nil && params[:director] != nil
      @year = params[:year]
      @director = params[:director]
    else
    #  exceprion
    puts 'This is not film!'
    end
  end

  def self.from_file(path)
    begin
      file = File.new(path, "r:UTF-8")

      lines = file.readlines.map { |l| l.chomp}
      file.close

      params = {
          title: lines[0],
          director: lines[1],
          year: lines[2].to_i,
          price: lines[3].to_i,
          quantity: lines[4].to_i
      }

      self.new(params)

    rescue
      print "failed to open #{path}\n"
    end
  end

  def to_s
    "Фильм \"#{@title}\", #{@year}, реж. - #{@director}.
Цена #{@price} (осталось #{@quantity})."
  end
end