books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]
p books.size
p books.class
p books[0].size
p books[0].class 


=begin 

input: array of hashes
output: same array in asceding publication order

rules: none

      algo:   sort by each inner hash :publshised year



=end

hu = books.sort_by do |hsh|
  hsh.map do |k, v|
    v
  end
end

p hu
puts ''

years = hu.map{|hsh| hsh.select {|k, v| k == :published }}.map {|hsh2| hsh2.values}
p years.reverse
puts  ''


ordery = (books.sort_by do |hash|
  hash[:published]
end)


p ordery.map {|hsh| hsh[:published]}

