
scoreboard players set @s mc_mark1 5

execute if entity @s[scores={mc_mark2=1..}] run scoreboard players set .givetoken mc_token 2
execute if entity @s[scores={mc_mark2=1..}] run scoreboard players set @s mc_mark1 5

execute if score .givetoken mc_token matches 2 as @a[tag=mc_givemark1] run function roguelike:character/mercenary/give_token_score

scoreboard players set @s[scores={mc_mark2=1..}] mc_mark1 0
scoreboard players set @s[scores={mc_mark2=1..}] mc_mark2 0
tag @s remove mc_givemark1