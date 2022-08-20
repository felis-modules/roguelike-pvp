execute if score @s gl_token_cool matches 1.. run scoreboard players remove @s gl_token_cool 1
execute if score @s gl_token_cool matches 1 run function roguelike:character/gladiator/give_token

execute if score @s gl_mode matches 1 run function roguelike:character/gladiator/weapon/turn_off
execute if score @s gl_mode matches 1.. run scoreboard players remove @s gl_mode 1