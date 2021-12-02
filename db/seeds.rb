user = User.create(
  first_name: "Jonathan",
  last_name: "Bilson",
  username: "jbilson",
  email: "jsmith@gmail.com",
  password: "123456"
)

user = User.create(
  first_name: "James",
  last_name: "Robbs",
  username: "jrobbs",
  email: "james@originmaster.com",
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

league = League.new(league_name: "Premier League", match_day: 15)
league.save

league = League.new(league_name: "Women's Super League", match_day: 15)
league.save

league = League.new(league_name: "Bundesliga", match_day: 14)
league.save

puts "Created three leagues..."

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
  home_goals_result: 2,
  away_goals_result: 0,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-27",
  match_day: 13,
  home_team: "Crystal Palace",
  away_team: "Aston Villa",
  home_goals_result: 1,
  away_goals_result: 2,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-27",
  match_day: 13,
  home_team: "Liverpool",
  away_team: "Southampton",
  home_goals_result: 4,
  away_goals_result: 0,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-27",
  match_day: 13,
  home_team: "Norwich",
  away_team: "Wolves",
  home_goals_result: 0,
  away_goals_result: 0,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-27",
  match_day: 13,
  home_team: "Brighton",
  away_team: "Leeds",
  home_goals_result: 0,
  away_goals_result: 0,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-28",
  match_day: 13,
  home_team: "Brentford",
  away_team: "Everton",
  home_goals_result: 1,
  away_goals_result: 0,
  league_id: 1
)
fixture.save

# Postponed!
# fixture = Fixture.new(
#   date: "2021-11-28",
#   match_day: 13,
#   home_team: "Burnley",
#   away_team: "Tottenham",
#   home_goals_result: nil,
#   away_goals_result: nil,
#   league_id: 1
# )
# fixture.save

fixture = Fixture.new(
  date: "2021-11-28",
  match_day: 13,
  home_team: "Leicester",
  away_team: "Watford",
  home_goals_result: 4,
  away_goals_result: 2,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-28",
  match_day: 13,
  home_team: "Man City",
  away_team: "West Ham",
  home_goals_result: 2,
  away_goals_result: 1,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-28",
  match_day: 13,
  home_team: "Chelsea",
  away_team: "Man United",
  home_goals_result: 1,
  away_goals_result: 1,
  league_id: 1
)
fixture.save

# EPL match_day 14

fixture = Fixture.new(
  date: "2021-11-30",
  match_day: 14,
  home_team: "Newcastle",
  away_team: "Norwich",
  home_goals_result: 1,
  away_goals_result: 0,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-30",
  match_day: 14,
  home_team: "Leeds",
  away_team: "Crystal Palace",
  home_goals_result: 1,
  away_goals_result: 2,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-01",
  match_day: 14,
  home_team: "Southampton",
  away_team: "Leicester",
  home_goals_result: 2,
  away_goals_result: 3,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-01",
  match_day: 14,
  home_team: "Wolves",
  away_team: "Burnley",
  home_goals_result: 1,
  away_goals_result: 0,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-01",
  match_day: 14,
  home_team: "Watford",
  away_team: "Chelsea",
  home_goals_result: 0,
  away_goals_result: 2,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-01",
  match_day: 14,
  home_team: "West Ham",
  away_team: "Brighton",
  home_goals_result: 2,
  away_goals_result: 1,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-01",
  match_day: 14,
  home_team: "Everton",
  away_team: "Liverpool",
  home_goals_result: 1,
  away_goals_result: 3,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-01",
  match_day: 14,
  home_team: "Aston Villa",
  away_team: "Man City",
  home_goals_result: 1,
  away_goals_result: 2,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-02",
  match_day: 14,
  home_team: "Tottenham",
  away_team: "Brentford",
  home_goals_result: 2,
  away_goals_result: 0,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-02",
  match_day: 14,
  home_team: "Man United",
  away_team: "Arsenal",
  home_goals_result: 1,
  away_goals_result: 1,
  league_id: 1
)
fixture.save

# EPL match_day 15

fixture = Fixture.new(
  date: "2021-12-04",
  match_day: 15,
  home_team: "West Ham",
  away_team: "Chelsea",
  home_goals_result: 0,
  away_goals_result: 3,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_day: 15,
  home_team: "Newcastle",
  away_team: "Burnley",
  home_goals_result: 1,
  away_goals_result: 1,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_day: 15,
  home_team: "Southampton",
  away_team: "Brighton",
  home_goals_result: 2,
  away_goals_result: 1,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_day: 15,
  home_team: "Wolves",
  away_team: "Liverpool",
  home_goals_result: 1,
  away_goals_result: 4,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_day: 15,
  home_team: "Watford",
  away_team: "Man City",
  home_goals_result: 0,
  away_goals_result: 3,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-05",
  match_day: 15,
  home_team: "Leeds",
  away_team: "Brentford",
  home_goals_result: 0,
  away_goals_result: 0,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-05",
  match_day: 15,
  home_team: "Man United",
  away_team: "Crystal Palace",
  home_goals_result: 1,
  away_goals_result: 0,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-05",
  match_day: 15,
  home_team: "Tottenham",
  away_team: "Norwich",
  home_goals_result: 2,
  away_goals_result: 1,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-05",
  match_day: 15,
  home_team: "Aston Villa",
  away_team: "Leicester",
  home_goals_result: 3,
  away_goals_result: 3,
  league_id: 1
)
fixture.save

# match_day 16

fixture = Fixture.new(
  date: "2021-12-11",
  match_day: 16,
  home_team: "Man City",
  away_team: "Wolves",
  home_goals_result: 0,
  away_goals_result: 3,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-11",
  match_day: 16,
  home_team: "Chelsea",
  away_team: "Leeds",
  home_goals_result: 2,
  away_goals_result: 1,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-11",
  match_day: 16,
  home_team: "Liverpool",
  away_team: "Aston Villa",
  home_goals_result: 1,
  away_goals_result: 0,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-11",
  match_day: 16,
  home_team: "Arsenal",
  away_team: "Southampton",
  home_goals_result: 2,
  away_goals_result: 0,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-11",
  match_day: 16,
  home_team: "Norwich",
  away_team: "Man United",
  home_goals_result: 2,
  away_goals_result: 3,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-12",
  match_day: 16,
  home_team: "Burnley",
  away_team: "West Ham",
  home_goals_result: 0,
  away_goals_result: 0,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-12",
  match_day: 16,
  home_team: "Leicester",
  away_team: "Newcastle",
  home_goals_result: 1,
  away_goals_result: 1,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-12",
  match_day: 16,
  home_team: "Brighton",
  away_team: "Tottenham",
  home_goals_result: 1,
  away_goals_result: 3,
  league_id: 1
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-12",
  match_day: 16,
  home_team: "Crystal Palace",
  away_team: "Everton",
  home_goals_result: 1,
  away_goals_result: 0,
  league_id: 1
)
fixture.save


puts "Created Premier League fixtures..."

# WSL match_day 8

fixture = Fixture.new(
  date: "2021-11-20",
  match_day: 14,
  home_team: "Man City",
  away_team: "Aston Villa",
  home_goals_result: 5,
  away_goals_result: 0,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-21",
  match_day: 14,
  home_team: "Leicester",
  away_team: "Everton",
  home_goals_result: 0,
  away_goals_result: 1,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-21",
  match_day: 14,
  home_team: "Chelsea",
  away_team: "Birmingham",
  home_goals_result: 5,
  away_goals_result: 0,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-21",
  match_day: 14,
  home_team: "Man United",
  away_team: "Arsenal",
  home_goals_result: 0,
  away_goals_result: 2,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-21",
  match_day: 14,
  home_team: "Reading",
  away_team: "Brighton",
  home_goals_result: 2,
  away_goals_result: 0,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-21",
  match_day: 14,
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
  match_day: 15,
  home_team: "Reading",
  away_team: "Chelsea",
  home_goals_result: 0,
  away_goals_result: 4,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-12",
  match_day: 15,
  home_team: "Brighton",
  away_team: "Man United",
  home_goals_result: 0,
  away_goals_result: 2,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-12",
  match_day: 15,
  home_team: "Everton",
  away_team: "West Ham",
  home_goals_result: 1,
  away_goals_result: 1,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-12",
  match_day: 15,
  home_team: "Birmingham",
  away_team: "Man City",
  home_goals_result: 0,
  away_goals_result: 2,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-12",
  match_day: 15,
  home_team: "Aston Villa",
  away_team: "Tottenham",
  home_goals_result: 1,
  away_goals_result: 1,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-12",
  match_day: 15,
  home_team: "Arsenal",
  away_team: "Leicester",
  home_goals_result: 2,
  away_goals_result: 1,
  league_id: 2
)
fixture.save

# WSL Match Day 10

fixture = Fixture.new(
  date: "2021-12-19",
  match_day: 16,
  home_team: "Man United",
  away_team: "Aston Villa",
  home_goals_result: 2,
  away_goals_result: 0,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-19",
  match_day: 16,
  home_team: "Chelsea",
  away_team: "West Ham",
  home_goals_result: 3,
  away_goals_result: 1,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-19",
  match_day: 16,
  home_team: "Tottenham",
  away_team: "Everton",
  home_goals_result: 1,
  away_goals_result: 0,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-19",
  match_day: 16,
  home_team: "Leicester",
  away_team: "Birmingham",
  home_goals_result: 0,
  away_goals_result: 0,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-19",
  match_day: 16,
  home_team: "Man City",
  away_team: "Reading",
  home_goals_result: 1,
  away_goals_result: 1,
  league_id: 2
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-19",
  match_day: 16,
  home_team: "Arsenal",
  away_team: "Brighton",
  home_goals_result: 2,
  away_goals_result: 1,
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
  home_goals_result: 2,
  away_goals_result: 1,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-27",
  match_day: 13,
  home_team: "Wolfsburg",
  away_team: "Dortmund",
  home_goals_result: 1,
  away_goals_result: 3,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-27",
  match_day: 13,
  home_team: "Hertha Berlin",
  away_team: "Augsburg",
  home_goals_result: 1,
  away_goals_result: 1,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-27",
  match_day: 13,
  home_team: "Köln",
  away_team: "M'gladbach",
  home_goals_result: 4,
  away_goals_result: 1,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-27",
  match_day: 13,
  home_team: "Bochum",
  away_team: "Freiburg",
  home_goals_result: 2,
  away_goals_result: 1,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-27",
  match_day: 13,
  home_team: "Fürth",
  away_team: "Hoffenheim",
  home_goals_result: 3,
  away_goals_result: 6,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-27",
  match_day: 13,
  home_team: "Bayern",
  away_team: "Bielefeld",
  home_goals_result: 1,
  away_goals_result: 0,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-28",
  match_day: 13,
  home_team: "Frankfurt",
  away_team: "Union Berlin",
  home_goals_result: 2,
  away_goals_result: 1,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-11-28",
  match_day: 13,
  home_team: "Leipzig",
  away_team: "Leverkusen",
  home_goals_result: 1,
  away_goals_result: 3,
  league_id: 3
)
fixture.save

# Bundesliga match day 14

fixture = Fixture.new(
  date: "2021-12-03",
  match_day: 14,
  home_team: "Union Berlin",
  away_team: "Leipzig",
  home_goals_result: 1,
  away_goals_result: 1,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_day: 14,
  home_team: "Leverkusen",
  away_team: "Fürth",
  home_goals_result: 3,
  away_goals_result: 0,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_day: 14,
  home_team: "Hoffenheim",
  away_team: "Frankfurt",
  home_goals_result: 2,
  away_goals_result: 1,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_day: 14,
  home_team: "Mainz",
  away_team: "Wolfsburg",
  home_goals_result: 0,
  away_goals_result: 0,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_day: 14,
  home_team: "Augsburg",
  away_team: "Bochum",
  home_goals_result: 1,
  away_goals_result: 0,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_day: 14,
  home_team: "Bielefeld",
  away_team: "Köln",
  home_goals_result: 1,
  away_goals_result: 2,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_day: 14,
  home_team: "Dortmund",
  away_team: "Bayern",
  home_goals_result: 0,
  away_goals_result: 1,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-05",
  match_day: 14,
  home_team: "Stuttgart",
  away_team: "Hertha Berlin",
  home_goals_result: 1,
  away_goals_result: 1,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-05",
  match_day: 14,
  home_team: "M'gladbach",
  away_team: "Freiburg",
  home_goals_result: 1,
  away_goals_result: 3,
  league_id: 3
)
fixture.save

# Bundesliga Match Day 15

fixture = Fixture.new(
  date: "2021-12-10",
  match_day: 15,
  home_team: "Köln",
  away_team: "Augsburg",
  home_goals_result: 1,
  away_goals_result: 0,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-11",
  match_day: 15,
  home_team: "Bayern",
  away_team: "Mainz",
  home_goals_result: 3,
  away_goals_result: 1,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-11",
  match_day: 15,
  home_team: "Leipzig",
  away_team: "M'gladbach",
  home_goals_result: 0,
  away_goals_result: 0,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-11",
  match_day: 15,
  home_team: "Freiburg",
  away_team: "Hoffenheim",
  home_goals_result: 2,
  away_goals_result: 2,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-11",
  match_day: 15,
  home_team: "Hertha Berlin",
  away_team: "Bielefeld",
  home_goals_result: 1,
  away_goals_result: 1,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-11",
  match_day: 15,
  home_team: "Bochum",
  away_team: "Dortmund",
  home_goals_result: 0,
  away_goals_result: 3,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-11",
  match_day: 15,
  home_team: "Wolfsburg",
  away_team: "Stuttgart",
  home_goals_result: 2,
  away_goals_result: 1,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-12",
  match_day: 15,
  home_team: "Fürth",
  away_team: "Union Berlin",
  home_goals_result: 0,
  away_goals_result: 1,
  league_id: 3
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-12",
  match_day: 15,
  home_team: "Frankfurt",
  away_team: "Leverkusen",
  home_goals_result: 0,
  away_goals_result: 2,
  league_id: 3
)
fixture.save

puts "Created Bundesliga fixtures..."

community = Community.new(
  community_name: "LeWagoneers",
  join_code: "dbd259353aeb5c8ccdb39e4aedb5ef88ab4e0a78d3e6b5fb08146f0f02bbb051",
  owner_id: 1,
  league_id: 1
)
community.save

community = Community.new(
  community_name: "Rose And Crown",
  join_code: "896f96d1e19011dbe619175639e6c141391febdd9e993c082d6e19d2639bef3a",
  owner_id: 3,
  league_id: 2
)
community.save

puts "Created two communities"

Member.create(user_id: 1, community_id: 2, overall_exact: 0, overall_fuzzy: 0, overall_points: 0)

exact = rand(0..12)
fuzzy = rand(0..(12 - exact))

member = Member.where(user_id: 1, community_id: 1).first
member.update(overall_exact: exact, overall_fuzzy: fuzzy, overall_points: (exact * 3) + fuzzy )

exact = rand(0..12)
fuzzy = rand(0..(12 - exact))

member = Member.where(user_id: 1, community_id: 2).first
member.update(overall_exact: exact, overall_fuzzy: fuzzy, overall_points: (exact * 3) + fuzzy )

puts "Added random points data for owners"

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


    MemberGuess.all.each do |guess|
      guess.update(home_goals_guess: rand(0..4), away_goals_guess: rand(0..2))
    end

puts "Generated random scores for all member guesses..."

user = User.create(
  first_name: "Alicia",
  last_name: "Borchert",
  username: "aborchert",
  email: "aborchert@gmail.com",
  password: "123456"
)

user = User.create(
  first_name: "Chris",
  last_name: "Hampson",
  username: "champson",
  email: "cmh@gmail.com",
  password: "123456"
)

puts "Created user accounts for Alicia and Chris"
puts
puts "Complete!"
