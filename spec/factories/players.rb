FactoryGirl.define do
  factory :player, aliases: [:winner] do
    username "Dave"
    email "Dave@dave.com"
    password "12345678"
    games_played 5
    wins 2
  end
end
