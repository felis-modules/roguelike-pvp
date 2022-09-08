# execute if score @s mc_token_cool matches 1.. run scoreboard players remove @s mc_token_cool 1
# execute if score @s mc_token_cool matches ..1 run function roguelike:character/mercenary/give_token_score

tellraw @s[scores={RP_COOL1=1}] {"text":"[클래스 PVP] 방패돌진 사용 가능","color":"gray","bold":false,"italic":false}
tellraw @s[scores={RP_COOL2=1}] {"text":"[클래스 PVP] 삼조격 사용 가능","color":"gray","bold":false,"italic":false}

# execute if score @s mc_mode matches 1 run function roguelike:character/mercenary/weapon/turn_off
# execute if score @s mc_mode matches 1.. run scoreboard players remove @s mc_mode 1