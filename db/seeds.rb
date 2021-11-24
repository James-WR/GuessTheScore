# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

user = User.new(
  first_name: "John",
  last_name: "Smith",
  username: "jsmith",
  email: "jsmith@gmail.com",
  password: "123456"
)
user.save

user = User.new(
  first_name: "Alicia",
  last_name: "Borchert",
  username: "aborchert",
  email: "aborchert@gmail.com",
  password: "123456"
)
user.save

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

league = League.new(league_name: "Premier League")
league.save

league = League.new(league_name: "Women's Super League")
league.save

league = League.new(league_name: "Bundesliga")
league.save

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

(2..9).each do |id|
  member = Member.new(
    user_id: id,
    community_id: 1,
    overall_exact: 0,
    overall_fuzzy: 0,
    overall_points: 0
  )
  member.save
end

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

# premier league fixtures

fixture = Fixture.new(
  date: 2021 - 12 - 0o4,
  match_week: 15,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "West Ham"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Chelsea"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: 2021 - 12 - 0o4,
  match_week: 15,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Newcastle"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Burnley"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: 2021 - 12 - 0o4,
  match_week: 15,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Southampton"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Brighton"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: 2021 - 12 - 0o4,
  match_week: 15,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Wolves"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Liverpool"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: 2021 - 12 - 0o4,
  match_week: 15,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Watford"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Man City"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: 2021 - 12 - 0o5,
  match_week: 15,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Leeds"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Brentford"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: 2021 - 12 - 0o5,
  match_week: 15,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Man United"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Crystal Palace"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: 2021 - 12 - 0o5,
  match_week: 15,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Tottenham"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Norwich"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: 2021 - 12 - 0o5,
  match_week: 15,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Aston Villa"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Leicester"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

# WSL fixtures

fixture = Fixture.new(
  date: 2021 - 12 - 11,
  match_week: 9,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Reading"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Chelsea"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: 2021 - 12 - 12,
  match_week: 9,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Brighton"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Man United"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: 2021 - 12 - 12,
  match_week: 9,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Everton"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "West Ham"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: 2021 - 12 - 12,
  match_week: 9,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Birmingham"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Man City"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: 2021 - 12 - 12,
  match_week: 9,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Aston Villa"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Tottenham"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: 2021 - 12 - 12,
  match_week: 9,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Arsenal"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Leicester"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

# Bundesliga fixtures

fixture = Fixture.new(
  date: 2021 - 12 - 0o3,
  match_week: 15,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Union Berlin"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Leipzig"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: 2021 - 12 - 0o4,
  match_week: 15,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Leverkusen"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Fürth"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: 2021 - 12 - 0o4,
  match_week: 15,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Hoffenheim"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Frankfurt"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: 2021 - 12 - 0o4,
  match_week: 15,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Mainz"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Wolfsburg"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: 2021 - 12 - 0o4,
  match_week: 15,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Augsburg"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Bochum"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: 2021 - 12 - 0o4,
  match_week: 15,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Bielefeld"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Köln"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: 2021 - 12 - 0o4,
  match_week: 15,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Dortmund"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Bayern"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: 2021 - 12 - 0o5,
  match_week: 15,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Stuttgart"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Hertha Berlin"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: 2021 - 12 - 0o5,
  match_week: 15,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "M'gladbach"),
  away_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id,
                           team_name: "Freiburg"),
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save
