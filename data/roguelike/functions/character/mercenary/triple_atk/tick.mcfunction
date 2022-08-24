
# attack 3 times.

execute if score @s mc_tattack matches 9 run function roguelike:character/mercenary/triple_atk/attack
execute if score @s mc_tattack matches 6 run function roguelike:character/mercenary/triple_atk/attack
execute if score @s mc_tattack matches 3 run function roguelike:character/mercenary/triple_atk/attack

execute if score @s mc_tattack matches 1 run function roguelike:character/mercenary/weapon/turn_off

execute if score @s mc_tattack matches 1 if score @s mc_tatk_success matches 1 run function roguelike:character/mercenary/token/give_token_score
execute if score @s mc_tattack matches 1 if score @s mc_tatk_success matches 1 run effect give @s regeneration 3 2

execute if score @s mc_tattack matches 1 run scoreboard players set @s mc_tatk_success 0

scoreboard players remove @s mc_tattack 1