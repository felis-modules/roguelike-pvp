function roguelike:character/apply_base

execute as @a[tag=slayer] run function roguelike:character/slayer/loop
execute as @a[tag=archer] run function roguelike:character/archer/loop
# function roguelike:character/paladin/loop