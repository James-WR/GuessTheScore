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
                        'Brighton & Hove Albion',
                        'Burnley',
                        'Chelsea',
                        'Crystal Palace',
                        'Everton',
                        'Leeds United',
                        'Leicester City',
                        'Liverpool',
                        'Manchester City',
                        'Manchester United',
                        'Newcastle United',
                        'Norwich City',
                        'Southampton',
                        'Tottenham Hotspur',
                        'Watford',
                        'West Ham United',
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
             'Birmingham City',
             'Brighton & Hove Albion',
             'Chelsea',
             'Everton',
             'Leicester City',
             'Manchester City',
             'Manchester United',
             'Reading',
             'Tottenham Hotspur',
             'West Ham United']

wsl_array.each do |team|
  team = Team.new(
    team_name: team,
    league_id: 2
  )
  team.save
end

bundesliga_array = ['1. FC Köln',
                    '1899 Hoffenheim',
                    'Bayer Leverkusen',
                    'Bayern Munich',
                    'Borussia Dortmund',
                    'Borussia Mönchengladbach',
                    'Eintracht Frankfurt',
                    'FC Augsburg',
                    'Hamburger SV',
                    'Hannover 96',
                    'Hertha BSC',
                    'Mainz 05',
                    'RB Leipzig',
                    'SC Freiburg',
                    'Schalke 04',
                    'VfB Stuttgart',
                    'VfL Wolfsburg',
                    'Werder Bremen']

bundesliga_array.each do |team|
  team = Team.new(
    team_name: team,
    league_id: 3
  )
  team.save
end

# premier league
fixture = Fixture.new(
  date: ,
  match_week: 15,
  home_team_id: Team.where(league_id: Community.find_by(community_name: "LeWagoneers").league_id, team_name: "West Ham United"),
  away_team_id: Team.where(league_id: community.league_id)["Chelsea"],
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: ,
  match_week: 15,
  home_team_id: premier_league_array["Newcastle United"] + 1,
  away_team_id: premier_league_array["Burnley"] + 1,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date: ,
  match_week: 15,
  home_team_id: premier_league_array["Southampton"] + 1,
  away_team_id: premier_league_array["Brighton & Hove Albion"] + 1,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date:
  match_week: 15,
  home_team_id: premier_league_array["Wolves"] + 1,
  away_team_id: premier_league_array["Liverpool"] + 1,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date:
  match_week: 15,
  home_team_id: premier_league_array["Watford"] + 1,
  away_team_id: premier_league_array["Manchester City"] + 1,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date:
  match_week: 15,
  home_team_id: premier_league_array["Leeds United"] + 1,
  away_team_id: premier_league_array["Brentford"] + 1,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date:
  match_week: 15,
  home_team_id: premier_league_array["Manchester United"] + 1,
  away_team_id: premier_league_array["Crystal Palace"] + 1,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date:
  match_week: 15,
  home_team_id: premier_league_array["Tottenham Hotspur"] + 1,
  away_team_id: premier_league_array["Norwich City"] + 1,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save

fixture = Fixture.new(
  date:
  match_week: 15,
  home_team_id: premier_league_array["Aston Villa"] + 1,
  away_team_id: premier_league_array["Leicester"] + 1,
  home_goals_result: nil,
  away_goals_result: nil
)
fixture.save
