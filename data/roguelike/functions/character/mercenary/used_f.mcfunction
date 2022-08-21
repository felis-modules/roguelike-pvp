# 창모드 1일 경우 & 쿨타임 있을 경우
scoreboard players set @s[scores={mc_mode=0,RP_COOL2=..1}] mc_charge 6
# scoreboard players remove @s[scores={mc_charge=6}] mc_token 2
# 창모드 2일 경우 & 쿨타임 있을 경우
scoreboard players set @s[scores={mc_rattack=0,mc_charge=0,mc_token=2..,mc_mode=1..}] mc_rattack 15
scoreboard players remove @s[scores={mc_rattack=15}] mc_token 2

function invparse:switch