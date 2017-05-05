FactoryGirl.define do
  factory :player, aliases: [:winner] do
    name "Dave"
    games 5
    wins 2
  end
end
