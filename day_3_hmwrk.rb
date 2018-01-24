# Section A

stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

# 1.

stops << "Edinburgh Waverly"
p stops

# 2

stops.unshift("Glasgow Queen St")
p stops

# 3

stops.insert(4, "Polmont")
p stops

# 4

p stops.index("Linlithgow")
  # answer: 5

# 5

stops.delete("Livingston")
p stops

# 6

stops.delete_at(2)
p stops

# 7

p stops.count
  # answer: 7

# 8

p stops[2]

p stops[-5]

# 9

p stops.reverse

# 10

for stop in stops
  p stop
end


# Section B

users = {
    "Jonathan" => {
      :twitter => "jonnyt",
      :favourite_numbers => [12, 42, 75, 12, 5],
      :home_town => "Stirling",
      :pets => {
        "fluffy" => :cat,
        "fido" => :dog,
        "spike" => :dog
      }
    },
    "Erik" => {
      :twitter => "eriksf",
      :favourite_numbers => [8, 12, 24],
      :home_town => "Linlithgow",
      :pets => {
        "nemo" => :fish,
        "kevin" => :fish,
        "spike" => :dog,
        "rupert" => :parrot
      }
    },
    "Avril" => {
      :twitter => "bridgpally",
      :favourite_numbers => [12, 14, 85, 88],
      :home_town => "Dunbar",
      :pets => {
        "colin" => :snake
      }
    },
  }

  # 1

  p users["Jonathan"][:twitter]

  # 2

  p users["Erik"][:home_town]

  # 3

  p users["Erik"][:favourite_numbers]

  # 4

  p users["Avril"][:pets].values

  # 5

  p users["Erik"][:favourite_numbers].sort[0]

  # 6

  users["Erik"][:favourite_numbers].unshift(7)
  p users["Erik"][:favourite_numbers][0]

  # 7

  p users["Erik"][:home_town][0] = "Edinburgh"

  # 8

  users["Erik"][:pets]["Fuffy"] = :dog
  p users["Erik"][:pets]

  users["Ellie"] = :person
  p users.keys


  # Section C

  united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  }, {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  }, {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

  # 1

  p united_kingdom[1][:capital] = "Cardiff"

  # 2

  united_kingdom << {
    name: "Northern Ireland",
    population: 1811000,
    capital: "Belfast"
  }

  p united_kingdom

  # 3

  for countries in united_kingdom
    p countries[:name]
  end

  # 4

  total = 0

  for countries in united_kingdom
    total += countries[:population]
  end

  p total
