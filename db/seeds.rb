# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(
  first_name: "John",
  last_name: "Smith",
  username: "jsmith",
  email: "jsmith@gmail.com",
  password: "123456"
)

user = User.create(
  first_name: "Alicia",
  last_name: "Borchert",
  username: "aborchert",
  email: "aborchert@gmail.com",
  password: "123456"
)

puts "Created two owners..."

12.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: '123456'
  )
  user.save
end

puts "Created 12 random users..."

league = League.new(league_name: "Premier League")
league.save

league = League.new(league_name: "Women's Super League")
league.save

league = League.new(league_name: "Bundesliga")
league.save

puts "Created three leagues..."

community = Community.new(
  community_name: "LeWagoneers",
  join_code: "dbd259353aeb5c8ccdb39e4aedb5ef88ab4e0a78d3e6b5fb08146f0f02bbb051",
  owner_id: 1,
  league_id: 1
)
community.save

community = Community.new(
  community_name: "TheBorcherts",
  join_code: "896f96d1e19011dbe619175639e6c141391febdd9e993c082d6e19d2639bef3a",
  owner_id: 2,
  league_id: 3
)
community.save

puts "Created two communities"

exact = rand(0..12)
fuzzy = rand(0..(12 - exact))

member = Member.new(
  user_id: 1,
  community_id: 1,
  overall_exact: exact,
  overall_fuzzy: fuzzy,
  overall_points: (exact * 3) + fuzzy
)
member.save

exact = rand(0..12)
fuzzy = rand(0..(12 - exact))

member = Member.new(
  user_id: 2,
  community_id: 2,
  overall_exact: exact,
  overall_fuzzy: fuzzy,
  overall_points: (exact * 3) + fuzzy
)
member.save

puts "Added owners as members"

(3..8).each do |id|
  exact = rand(0..12)
  fuzzy = rand(0..(12-exact))
  member = Member.new(
    user_id: id,
    community_id: 1,
    overall_exact: exact,
    overall_fuzzy: fuzzy,
    overall_points: (exact * 3) + fuzzy
  )
  member.save
end

puts "Populated first community"

(9..14).each do |id|
  exact = rand(0..6)
  fuzzy = fuzzy = rand(0..(12-exact))
  member = Member.new(
    user_id: id,
    community_id: 2,
    overall_exact: exact,
    overall_fuzzy: fuzzy,
    overall_points: (exact * 3) + fuzzy
  )
  member.save
end

puts "Populated second community"

# EPL match_day 12
fixture = Fixture.new(
  date: "2021-11-20",
  match_day: 12,
  home_team: "Leicester",
  away_team: "Chelsea",
  home_goals_result: 0,
  away_goals_result: 3,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-20",
  match_day: 12,
  home_team: "Aston Villa",
  away_team: "Brighton",
  home_goals_result: 2,
  away_goals_result: 0,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-20",
  match_day: 12,
  home_team: "Burnley",
  away_team: "Crystal Palace",
  home_goals_result: 3,
  away_goals_result: 3,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-20",
  match_day: 12,
  home_team: "Newcastle",
  away_team: "Brentford",
  home_goals_result: 3,
  away_goals_result: 3,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-20",
  match_day: 12,
  home_team: "Norwich",
  away_team: "Southampton",
  home_goals_result: 2,
  away_goals_result: 1,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-20",
  match_day: 12,
  home_team: "Watford",
  away_team: "Man United",
  home_goals_result: 4,
  away_goals_result: 1,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-20",
  match_day: 12,
  home_team: "Wolves",
  away_team: "West Ham",
  home_goals_result: 1,
  away_goals_result: 0,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-20",
  match_day: 12,
  home_team: "Liverpool",
  away_team: "Arsenal",
  home_goals_result: 4,
  away_goals_result: 0,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-21",
  match_day: 12,
  home_team: "Man City",
  away_team: "Everton",
  home_goals_result: 3,
  away_goals_result: 0,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-21",
  match_day: 12,
  home_team: "Tottenham",
  away_team: "Leeds",
  home_goals_result: 2,
  away_goals_result: 1,
  league_id: 1
)
fixture.save

# EPL match_day 13

fixture = Fixture.new(
  date: "2021-11-27",
  match_day: 13,
  home_team: "Arsenal",
  away_team: "Newcastle",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-27",
  match_day: 13,
  home_team: "Crystal Palace",
  away_team: "Aston Villa",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-27",
  match_day: 13,
  home_team: "Liverpool",
  away_team: "Southampton",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-27",
  match_day: 13,
  home_team: "Norwich",
  away_team: "Wolves",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-27",
  match_day: 13,
  home_team: "Brighton",
  away_team: "Leeds",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-28",
  match_day: 13,
  home_team: "Brentford",
  away_team: "Everton",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-28",
  match_day: 13,
  home_team: "Burnley",
  away_team: "Tottenham",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-28",
  match_day: 13,
  home_team: "Leicester",
  away_team: "Watford",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-28",
  match_day: 13,
  home_team: "Man City",
  away_team: "West Ham",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-28",
  match_day: 13,
  home_team: "Chelsea",
  away_team: "Man United",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 1
)
fixture.save


# EPL match_day 15

fixture = Fixture.new(
  date: "2021-12-04",
  match_day: 15,
  home_team: "West Ham",
  away_team: "Chelsea",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_day: 15,
  home_team: "Newcastle",
  away_team: "Burnley",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_day: 15,
  home_team: "Southampton",
  away_team: "Brighton",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_day: 15,
  home_team: "Wolves",
  away_team: "Liverpool",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_day: 15,
  home_team: "Watford",
  away_team: "Man City",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-05",
  match_day: 15,
  home_team: "Leeds",
  away_team: "Brentford",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-05",
  match_day: 15,
  home_team: "Man United",
  away_team: "Crystal Palace",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-05",
  match_day: 15,
  home_team: "Tottenham",
  away_team: "Norwich",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-05",
  match_day: 15,
  home_team: "Aston Villa",
  away_team: "Leicester",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 1
)
fixture.save

puts "Created Premier League fixtures..."

# WSL match_day 8

fixture = Fixture.new(
  date: "2021-11-20",
  match_day: 8,
  home_team: "Man City",
  away_team: "Aston Villa",
  home_goals_result: 5,
  away_goals_result: 0,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-21",
  match_day: 8,
  home_team: "Leicester",
  away_team: "Everton",
  home_goals_result: 0,
  away_goals_result: 1,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-21",
  match_day: 8,
  home_team: "Chelsea",
  away_team: "Birmingham",
  home_goals_result: 5,
  away_goals_result: 0,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-21",
  match_day: 8,
  home_team: "Man United",
  away_team: "Arsenal",
  home_goals_result: 0,
  away_goals_result: 2,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-21",
  match_day: 8,
  home_team: "Reading",
  away_team: "Brighton",
  home_goals_result: 2,
  away_goals_result: 0,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-21",
  match_day: 8,
  home_team: "West Ham",
  away_team: "Tottenham",
  home_goals_result: 1,
  away_goals_result: 0,
  league_id: 2
)
fixture.save

# WSL match_day 9

fixture = Fixture.new(
  date: "2021-12-11",
  match_day: 9,
  home_team: "Reading",
  away_team: "Chelsea",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-12",
  match_day: 9,
  home_team: "Brighton",
  away_team: "Man United",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-12",
  match_day: 9,
  home_team: "Everton",
  away_team: "West Ham",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-12",
  match_day: 9,
  home_team: "Birmingham",
  away_team: "Man City",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-12",
  match_day: 9,
  home_team: "Aston Villa",
  away_team: "Tottenham",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-12",
  match_day: 9,
  home_team: "Arsenal",
  away_team: "Leicester",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 2
)
fixture.save

puts "Created WSL fixtures..."

# Bundesliga match day 12

fixture = Fixture.new(
  date: "2021-11-19",
  match_day: 12,
  home_team: "Augsburg",
  away_team: "Bayern",
  home_goals_result: 2,
  away_goals_result: 1,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-20",
  match_day: 12,
  home_team: "Dortmund",
  away_team: "Stuttgart",
  home_goals_result: 2,
  away_goals_result: 1,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-20",
  match_day: 12,
  home_team: "Leverkusen",
  away_team: "Bochum",
  home_goals_result: 1,
  away_goals_result: 0,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-20",
  match_day: 12,
  home_team: "M'gladbach",
  away_team: "Fürth",
  home_goals_result: 4,
  away_goals_result: 0,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-20",
  match_day: 12,
  home_team: "Hoffenheim",
  away_team: "Leipzig",
  home_goals_result: 2,
  away_goals_result: 0,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-20",
  match_day: 12,
  home_team: "Bielefeld",
  away_team: "Wolfsburg",
  home_goals_result: 2,
  away_goals_result: 2,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-20",
  match_day: 12,
  home_team: "Union Berlin",
  away_team: "Hertha Berlin",
  home_goals_result: 2,
  away_goals_result: 0,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-21",
  match_day: 12,
  home_team: "Freiburg",
  away_team: "Frankfurt",
  home_goals_result: 0,
  away_goals_result: 2,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-21",
  match_day: 12,
  home_team: "Mainz",
  away_team: "Köln",
  home_goals_result: 1,
  away_goals_result: 1,
  league_id: 3
)
fixture.save

# Bundesliga Match day 13

fixture = Fixture.new(
  date: "2021-11-26",
  match_day: 13,
  home_team: "Stuttgart",
  away_team: "Mainz",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-27",
  match_day: 13,
  home_team: "Wolfsburg",
  away_team: "Dortmund",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-27",
  match_day: 13,
  home_team: "Hertha Berlin",
  away_team: "Augsburg",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-27",
  match_day: 13,
  home_team: "Köln",
  away_team: "M'gladbach",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-27",
  match_day: 13,
  home_team: "Bochum",
  away_team: "Freiburg",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-27",
  match_day: 13,
  home_team: "Fürth",
  away_team: "Hoffenheim",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-27",
  match_day: 13,
  home_team: "Bayern",
  away_team: "Bielefeld",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-28",
  match_day: 13,
  home_team: "Frankfurt",
  away_team: "Union Berlin",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-28",
  match_day: 13,
  home_team: "Leipzig",
  away_team: "Leverkusen",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 3
)
fixture.save

# Bundesliga match day 14

fixture = Fixture.new(
  date: "2021-12-03",
  match_day: 14,
  home_team: "Union Berlin",
  away_team: "Leipzig",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_day: 14,
  home_team: "Leverkusen",
  away_team: "Fürth",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_day: 14,
  home_team: "Hoffenheim",
  away_team: "Frankfurt",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_day: 14,
  home_team: "Mainz",
  away_team: "Wolfsburg",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_day: 14,
  home_team: "Augsburg",
  away_team: "Bochum",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_day: 14,
  home_team: "Bielefeld",
  away_team: "Köln",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_day: 14,
  home_team: "Dortmund",
  away_team: "Bayern",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-05",
  match_day: 14,
  home_team: "Stuttgart",
  away_team: "Hertha Berlin",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-05",
  match_day: 14,
  home_team: "M'gladbach",
  away_team: "Freiburg",
  home_goals_result: nil,
  away_goals_result: nil,
  league_id: 3
)
fixture.save

puts "Created Bundesliga fixtures..."

# Community LeWagoneers Member guesses Match day 12
Fixture.where(league_id: 1, match_day: 12).each do |fixture|
  (3..8).each do |id|
      MemberGuess.create(
      home_goals_guess: rand(0..4),
      away_goals_guess: rand(0..4),
      member_id: id,
      fixture_id: fixture.id
    )
  end
end

# Community LeWagoneers Member guesses Match day 13
Fixture.where(league_id: 1, match_day: 13).each do |fixture|
  (3..8).each do |id|
      MemberGuess.create(
      home_goals_guess: rand(0..4),
      away_goals_guess: rand(0..4),
      member_id: id,
      fixture_id: fixture.id
    )
  end
end

# Community LeWagoneers Member guesses Match day 15
Fixture.where(league_id: 1, match_day: 15).each do |fixture|
  (3..8).each do |id|
      MemberGuess.create(
      home_goals_guess: rand(0..4),
      away_goals_guess: rand(0..4),
      member_id: id,
      fixture_id: fixture.id
    )
  end
end

puts "Generated member guesses for LeWagoneers..."

# Community TheBorcherts Member guesses Match day 12
Fixture.where(league_id: 3, match_day: 12).each do |fixture|
  (9..14).each do |id|
      MemberGuess.create(
      home_goals_guess: rand(0..4),
      away_goals_guess: rand(0..4),
      member_id: id,
      fixture_id: fixture.id
    )
  end
end
# Community TheBorcherts Member guesses Match day 13
Fixture.where(league_id: 3, match_day: 13).each do |fixture|
  (9..14).each do |id|
      MemberGuess.create(
      home_goals_guess: rand(0..4),
      away_goals_guess: rand(0..4),
      member_id: id,
      fixture_id: fixture.id
    )
  end
end
# Community TheBorcherts Member guesses Match day 14
Fixture.where(league_id: 3, match_day: 14).each do |fixture|
  (9..14).each do |id|
      MemberGuess.create(
      home_goals_guess: rand(0..4),
      away_goals_guess: rand(0..4),
      member_id: id,
      fixture_id: fixture.id
    )
  end
end

puts "Generated member guesses for TheBorcherts..."
puts
puts "Complete!"
