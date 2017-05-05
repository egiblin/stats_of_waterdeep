FactoryGirl.define do
  factory :game do
    winner
    player_number 5
    skullport false
    undermountain false
  end

  factory :skull, class: Game do
    winner
    player_number 5
    skullport true
    undermountain false
  end

  factory :mountain, class: Game do
    winner
    player_number 4
    skullport false
    undermountain true
  end

  factory :expansions, class: Game do
    winner
    player_number 6
    skullport true
    undermountain true
  end
end
