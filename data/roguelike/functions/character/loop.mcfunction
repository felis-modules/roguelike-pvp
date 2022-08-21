function roguelike:character/apply_base

execute as @a[tag=slayer] run function roguelike:character/slayer/loop
execute as @a[tag=archer] run function roguelike:character/archer/loop

function roguelike:character/paladin/global_loop
function roguelike:character/mercenary/global_loop
execute as @a[tag=mercenary] run function roguelike:character/mercenary/loop
execute as @a[tag=assassin] run function roguelike:character/assassin/loop

# function roguelike:character/paladin/loop