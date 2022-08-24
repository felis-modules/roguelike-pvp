# execute store result score @s mc_token_cool run data get storage roguelike:rp rp_mc_token
# say hi

execute if score @s mc_bide matches 1.. run function roguelike:character/mercenary/token/give_token_score
execute if score @s mc_bide matches 1.. run scoreboard players set @s mc_bide 0