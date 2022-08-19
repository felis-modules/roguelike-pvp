function roguelike:character/reset_player

item replace entity @s hotbar.0 with carrot_on_a_stick
item modify entity @s hotbar.0 roguelike
execute if entity @s[name="lees2541"] run function roguelike:character/slayer/tsumi_sword

function roguelike:character/slayer/dark_rune
function roguelike:character/slayer/blood_potion

function roguelike:character/reset_tag
tag @s add slayer