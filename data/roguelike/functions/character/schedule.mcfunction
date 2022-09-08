scoreboard players remove @a[tag=!RP_spause1, scores={RP_COOL1=1..}] RP_COOL1 1
scoreboard players remove @a[tag=!RP_spause2, scores={RP_COOL2=1..}] RP_COOL2 1
scoreboard players remove @a[tag=!RP_spause3, scores={RP_COOL3=1..}] RP_COOL3 1

execute as @a[tag=slayer] run function roguelike:character/slayer/schedule
execute as @a[tag=archer] run function roguelike:character/archer/schedule

function roguelike:character/paladin/global_schedule
execute as @a[tag=paladin] run function roguelike:character/paladin/schedule

execute as @a[tag=mercenary] run function roguelike:character/mercenary/schedule

function roguelike:character/assassin/global_schedule
execute as @a[tag=assassin] run function roguelike:character/assassin/schedule

