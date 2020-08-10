class Product

  attr_accessor :price
  attr_accessor :quantity
  attr_accessor :title

  def initialize(params)
    @price = params[:price]
    @quantity = params[:quantity]
    @title = params[:title]
  end

  def self.from_file(path)
    raise NotImplementedError
  end

  def price
    @price
  end

  def quantity
    @quantity
  end

  def title
    @title
  end

  def to_s
  #  override
  end
end