# execute store result score @s mc_token_cool run data get storage roguelike:rp rp_mc_token
# say hi

execute if score .givetoken mc_token matches 2 run function roguelike:character/mercenary/give_token_score

tag @s add mc_givemark1
execute if score @s mc_used_rc matches 1.. run scoreboard players set .givetoken mc_token 1