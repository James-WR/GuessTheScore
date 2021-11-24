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

puts "Created 12 random members..."

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

member = Member.new(
  user_id: 1,
  community_id: 1,
  overall_exact: 0,
  overall_fuzzy: 0,
  overall_points: 0
)
member.save

member = Member.new(
  user_id: 2,
  community_id: 2,
  overall_exact: 0,
  overall_fuzzy: 0,
  overall_points: 0
)
member.save

puts "Added owners as members"

(3..8).each do |id|
  member = Member.new(
    user_id: id,
    community_id: 1,
    overall_exact: 0,
    overall_fuzzy: 0,
    overall_points: 0
  )
  member.save
end

puts "Populated first community"

(9..14).each do |id|
  member = Member.new(
    user_id: id,
    community_id: 2,
    overall_exact: 0,
    overall_fuzzy: 0,
    overall_points: 0
  )
  member.save
end

puts "Populated second community"

premier_league_array = ['Arsenal',
                        'Aston Villa',
                        'Brentford',
                        'Brighton',
                        'Burnley',
                        'Chelsea',
                        'Crystal Palace',
                        'Everton',
                        'Leeds',
                        'Leicester',
                        'Liverpool',
                        'Man City',
                        'Man United',
                        'Newcastle',
                        'Norwich',
                        'Southampton',
                        'Tottenham',
                        'Watford',
                        'West Ham',
                        'Wolves']

premier_league_array.each do |team|
  team = Team.new(
    team_name: team,
    league_id: 1
  )
  team.save
end

puts "Created Premier League teams..."

wsl_array = ['Arsenal',
             'Aston Villa',
             'Birmingham',
             'Brighton',
             'Chelsea',
             'Everton',
             'Leicester',
             'Man City',
             'Man United',
             'Reading',
             'Tottenham',
             'West Ham']

wsl_array.each do |team|
  team = Team.new(
    team_name: team,
    league_id: 2
  )
  team.save
end

puts "Created WSL teams..."

bundesliga_array = ['Bielefeld',
                    'Augsburg',
                    'Leverkusen',
                    'Bayern',
                    'Bochum',
                    'Dortmund',
                    "M'gladbach",
                    'Frankfurt',
                    'Freiburg',
                    'Fürth',
                    'Hertha Berlin',
                    'Hoffenheim',
                    'Köln',
                    'Leipzig',
                    'Mainz',
                    'Stuttgart',
                    'Union Berlin',
                    'Wolfsburg']

bundesliga_array.each do |team|
  team = Team.new(
    team_name: team,
    league_id: 3
  )
  team.save
end

puts "Created Bundesliga teams..."
# premier league fixtures

fixture = Fixture.new(
  date: "2021-12-04",
  match_week: 15,
  home_team_id: Team.where(league_id: 1,
                           team_name: "West Ham").pluck(:id).first,
  away_team_id: Team.where(league_id: 1,
                           team_name: "Chelsea").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_week: 15,
  home_team_id: Team.where(league_id: 1,
                           team_name: "Newcastle").pluck(:id).first,
  away_team_id: Team.where(league_id: 1,
                           team_name: "Burnley").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_week: 15,
  home_team_id: Team.where(league_id: 1,
                           team_name: "Southampton").pluck(:id).first,
  away_team_id: Team.where(league_id: 1,
                           team_name: "Brighton").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_week: 15,
  home_team_id: Team.where(league_id: 1,
                           team_name: "Wolves").pluck(:id).first,
  away_team_id: Team.where(league_id: 1,
                           team_name: "Liverpool").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_week: 15,
  home_team_id: Team.where(league_id: 1,
                           team_name: "Watford").pluck(:id).first,
  away_team_id: Team.where(league_id: 1,
                           team_name: "Man City").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-05",
  match_week: 15,
  home_team_id: Team.where(league_id: 1,
                           team_name: "Leeds").pluck(:id).first,
  away_team_id: Team.where(league_id: 1,
                           team_name: "Brentford").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-05",
  match_week: 15,
  home_team_id: Team.where(league_id: 1,
                           team_name: "Man United").pluck(:id).first,
  away_team_id: Team.where(league_id: 1,
                           team_name: "Crystal Palace").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-05",
  match_week: 15,
  home_team_id: Team.where(league_id: 1,
                           team_name: "Tottenham").pluck(:id).first,
  away_team_id: Team.where(league_id: 1,
                           team_name: "Norwich").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-05",
  match_week: 15,
  home_team_id: Team.where(league_id: 1,
                           team_name: "Aston Villa").pluck(:id).first,
  away_team_id: Team.where(league_id: 1,
                           team_name: "Leicester").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

puts "Created Premier League fixtures..."

# WSL fixtures

fixture = Fixture.new(
  date: "2021-12-11",
  match_week: 9,
  home_team_id: Team.where(league_id: 2,
                           team_name: "Reading").pluck(:id).first,
  away_team_id: Team.where(league_id: 2,
                           team_name: "Chelsea").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-12",
  match_week: 9,
  home_team_id: Team.where(league_id: 2,
                           team_name: "Brighton").pluck(:id).first,
  away_team_id: Team.where(league_id: 2,
                           team_name: "Man United").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-12",
  match_week: 9,
  home_team_id: Team.where(league_id: 2,
                           team_name: "Everton").pluck(:id).first,
  away_team_id: Team.where(league_id: 2,
                           team_name: "West Ham").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-12",
  match_week: 9,
  home_team_id: Team.where(league_id: 2,
                           team_name: "Birmingham").pluck(:id).first,
  away_team_id: Team.where(league_id: 2,
                           team_name: "Man City").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-12",
  match_week: 9,
  home_team_id: Team.where(league_id: 2,
                           team_name: "Aston Villa").pluck(:id).first,
  away_team_id: Team.where(league_id: 2,
                           team_name: "Tottenham").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-12",
  match_week: 9,
  home_team_id: Team.where(league_id: 2,
                           team_name: "Arsenal").pluck(:id).first,
  away_team_id: Team.where(league_id: 2,
                           team_name: "Leicester").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

puts "Created WSL fixtures..."

# Bundesliga fixtures

fixture = Fixture.new(
  date: "2021-12-03",
  match_week: 15,
  home_team_id: Team.where(league_id: 3,
                           team_name: "Union Berlin").pluck(:id).first,
  away_team_id: Team.where(league_id: 3,
                           team_name: "Leipzig").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_week: 15,
  home_team_id: Team.where(league_id: 3,
                           team_name: "Leverkusen").pluck(:id).first,
  away_team_id: Team.where(league_id: 3,
                           team_name: "Fürth").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_week: 15,
  home_team_id: Team.where(league_id: 3,
                           team_name: "Hoffenheim").pluck(:id).first,
  away_team_id: Team.where(league_id: 3,
                           team_name: "Frankfurt").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_week: 15,
  home_team_id: Team.where(league_id: 3,
                           team_name: "Mainz").pluck(:id).first,
  away_team_id: Team.where(league_id: 3,
                           team_name: "Wolfsburg").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_week: 15,
  home_team_id: Team.where(league_id: 3,
                           team_name: "Augsburg").pluck(:id).first,
  away_team_id: Team.where(league_id: 3,
                           team_name: "Bochum").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_week: 15,
  home_team_id: Team.where(league_id: 3,
                           team_name: "Bielefeld").pluck(:id).first,
  away_team_id: Team.where(league_id: 3,
                           team_name: "Köln").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-04",
  match_week: 15,
  home_team_id: Team.where(league_id: 3,
                           team_name: "Dortmund").pluck(:id).first,
  away_team_id: Team.where(league_id: 3,
                           team_name: "Bayern").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-05",
  match_week: 15,
  home_team_id: Team.where(league_id: 3,
                           team_name: "Stuttgart").pluck(:id).first,
  away_team_id: Team.where(league_id: 3,
                           team_name: "Hertha Berlin").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: "2021-12-05",
  match_week: 15,
  home_team_id: Team.where(league_id: 3,
                           team_name: "M'gladbach").pluck(:id).first,
  away_team_id: Team.where(league_id: 3,
                           team_name: "Freiburg").pluck(:id).first,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

puts "Created Bundesliga fixtures..."
puts
puts "Complete!"
