# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
factions = [
  ["Gray Hands", image_url, silver,
  "Although Waterdeep is ably defended by the City Guard and City Watch,
  some threats require more extreme solutions. The Gray Hands are an elite
  force of high-powered adventurers who answer directly to the Lords of Waterdeep."],
  ["Silverstars", image_url, blue,
  "These devoted champions of the moon goddess, Selûne, tirelessly work for freedom
  and peace, even between longstanding enemies. They despise slavery and abhor the undead."],
  ["Red Sashes", image_url, red,
  "Vigilantes who protect the poorest parts of Waterdeep, the Red Sashes are masters of intrigue.
  They hide those who need to escape and find those who wish to stay hidden."],
  ["Harpers", image_url, green,
  "The Harpers were founded ages ago by elven leaders, with the council of the legendary wizard Elminster.
  This secret society fights for individual freedom while balancing the needs of civilization and nature."],
  ["Knights of the Shield", image_url, yellow,
  "Posing as a consortium of merchants and nobles, the Knights of the Shield in fact deal in information.
  The organization's influence stretches along the Sword Coast and far inland."],
  ["City Guard", image_url, black,
  "Waterdeep is defended by its own army of soldiers, who patrol the city and the surrounding countryside.
  The City Guard also provides bodyguards for Piergeiron the Paldinson and for visiting dignitaries."]
]

lords = [
  ["Brianne Byndraeth", base, quests, ["Arcana", "Skullduggery"],
"The widow of a crime boss who was also a Lord of Waterdeep, Brianne has
close ties to the wizard Randulaith, a member of the city's social elite."],
  ["Caladorn Cassalanter", base, quests, ["Skullduggery", "Warfare"],
"Seen by many as the layabout son fo a noble family, Caladorn has quietly taken control
of the ships that protect Waterdeep's coast."],
  ["Durnan the Wanderer", base, quests, ["Commerce", "Warfare"],
"A retired adventurer, Durnan owns the Yawning Portal, a tavern that
stands above an entrance to Undermountain."],
  ["Kyriani Agrivar", base, quests, ["Arcana", "Piety"],
"A mischievous half-drow, Kyriani is a master of manipulation who has
come to terms with her dual heritage of good and evil."],
  ["Khelben Arunsun, The Blackstaff", base, quests, ["Arcana", "Warfare"],
"The master of Blackstaff Tower, the accomplished wizard Khelben is famous
for founding and then abandoning numerous organizations."],
  ["Mirt the Moneylender", base, quests, ["Commerce", "Piety"],
"To outsiders, Mirt appears to be little more than a drunk and a braggart.
This disguise hides his true cunning and wit."],
  ["Nindil Jalbuck", base, quests, ["Piety", "Skullduggery"],
"The real Nindil was a good-natured halfing and man of the people,
who has since been replaced by a doppelganger named Hlaavin."],
  ["Nymara Scheiron", base, quests, ["Commerce", "Skullduggery"],
"Aggressive and fearless, teh one-time thief known as \"Kitten\" brings pragmatism
and a knowledge of the common citizen to the Lords of Waterdeep."],
  ["Piergeiron the Paladinson", base, quests, ["Piety", "Warfare"],
"A deliberate and honorable man, Piergeiron often pretends to be slow of wit
to lull his enemies into underestimating him."],
  ["Sammereza Sulphontis", base, quests, ["Arcana", "Commerce"],
"Known as Sammer to his friends, Sammereza is a master trade lord
whose sharp eyes never miss a detail."],
  ["Larissa Neathal", base, buildings,
"Known for her extravagant court parties and her ability to blend in anywhere,
Larissa uses a courtesan facade to hide her skill at information gathering."],
  ["Danilo Thann", undermountain, small_quests, ],
  [, undermountain, large_quests],
  [, undermountain, undermountain_quests],
  ["The Xanathar", skullport, corruption, ],
  [, skullport, certain_quests, ],
  [, skullport, skullport_quests]
]

lords.each do |lord|
  name, game_box, bonus_type, bonus_description, description = lord
  Lord.create!(name: name, game_box: game_box, bonus_type: bonus_type,
  bonus_description: bonus_description, description: description)
end

factions.each do |faction|
  name, image_url, color, description = faction
  Faction.create!(name: name, image_url: image_url, color: color, description: description)
end
