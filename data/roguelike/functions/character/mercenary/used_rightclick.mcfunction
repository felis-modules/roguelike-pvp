# 창모드 1일 경우 & 쿨타임 있을 경우
execute as @s[scores={mc_mode=0,RP_COOL3=..1}] run function roguelike:character/mercenary/bide
# scoreboard players remove @s[scores={mc_charge=6}] mc_token 2
# 창모드 2일 경우 & 쿨타임 있을 경우
scoreboard players set @s[scores={mc_tattack=0,mc_charge=0,mc_token=3..,mc_mode=1..}] mc_tattack 9
scoreboard players remove @s[scores={mc_tattack=9}] mc_token 3