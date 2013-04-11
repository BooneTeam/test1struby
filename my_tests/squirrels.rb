
def rank(x)

sq = ["Andrew Stamm",
  "Bill Van Der Laan",
  "Danny Houk",
  "Dmitri Rakhuba",
  "Earl Wagner",
  "Erik Allar",
  "Garrett Boone",
  "Gregory Elliott",
  "Henry Wang",
  "Jack Zhou",
  "Lora Abe",
  "Marion Knight",
  "Mile Milovanovic",
  "Mitchell Lee",
  "Nestor Castillo",
  "Rod Levy",
  "Tom Eckert",
  "Yannick Dawant"
]

s = x.downcase
sq = sq.each{|n| puts "#{n} your rank is #{sq.index(n)+1} you crazy Squirrel!" if s == n.downcase}
end
x = gets.chomp
rank(x)