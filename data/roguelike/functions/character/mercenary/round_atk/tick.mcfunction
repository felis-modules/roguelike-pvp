
# attack 3 times.

execute if score @s mc_rattack matches 15 run function roguelike:character/mercenary/round_atk/attack
execute if score @s mc_rattack matches 10 run function roguelike:character/mercenary/round_atk/attack
execute if score @s mc_rattack matches 5 run function roguelike:character/mercenary/round_atk/attack

execute if score @s mc_rattack matches 1 if score @s mc_ratk_success matches 1 run function roguelike:character/mercenary/token/give_token_score
execute if score @s mc_rattack matches 1 if score @s mc_ratk_success matches 1 run effect give @s regeneration 3 2
execute if score @s mc_rattack matches 1 run function roguelike:character/mercenary/weapon/turn_off
execute if score @s mc_rattack matches 1 run scoreboard players set @s mc_ratk_success 0
execute if score @s mc_rattack matches 1.. run scoreboard players remove @s mc_rattack 1