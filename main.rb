# version 0.4

require_relative 'products/product'
require_relative 'products/book'
require_relative 'products/film'

lion = Film.new({
                    price: 990,
                    quantity: 10,
                    title: "Леон",
                    director: "Люк Бессон",
                    year: 1994
                }
                )
# puts lion
# puts lion.year
# lion.year = 3
# puts lion.year

idiot = Book.new({
                    price: 890,
                    quantity: 10,
                    title: "Идиот",
                    author: "Фёдор Достоевский",
                    genre: "роман"
                }
)

# puts
# puts idiot.to_s
current = File.dirname(__FILE__ )
book = Book.from_file(current + '/data/books/DendalionVine.txt')
puts book

film = Film.from_file(current + '/data/films/Inception.txt')
puts film

product = Product.from_file('hh')