# scoreboard players enable @a start
# scoreboard players enable @a help
# scoreboard players enable @a slayer
# scoreboard players enable @a tanker
# scoreboard players enable @a archer
# scoreboard players enable @a nuker
# scoreboard players enable @a lancer
# scoreboard players enable @a get_red
# scoreboard players enable @a get_blue

## system settings

# execute as @a[scores={show_cmdfeeback=1..}] run function roguelike:commands/toggle_cmdfeedback
# execute as @a[scores={show_deathmsg=1..}] run function roguelike:commands/toggle_deathmsg

## commands
execute as @a[scores={settier=1..}] run function roguelike:commands/tier_set
execute as @a[scores={get_red=1..}] run function roguelike:commands/set_armor
execute as @a[scores={get_blue=1..}] run function roguelike:commands/set_armor
execute as @a[scores={get_wolf=1..}] run function roguelike:commands/set_armor

execute as @a[scores={give_mana=1..}] run function roguelike:commands/give_mana

execute as @a[scores={mercenary=1..}] run function roguelike:commands/mercenary
execute as @a[scores={slayer=1..}] run function roguelike:commands/slayer
execute as @a[scores={paladin=1..}] run function roguelike:commands/paladin
execute as @a[scores={archer=1..}] run function roguelike:commands/archer
execute as @a[scores={assassin=1..}] run function roguelike:commands/assassin