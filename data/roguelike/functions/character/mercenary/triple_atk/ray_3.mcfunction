particle minecraft:end_rod ~ ~ ~ 0.3 0.3 0.3 0 40 force

execute if entity @e[tag=!tattacker,distance=..3] run function roguelike:character/mercenary/triple_atk/cal_dmg
execute as @e[tag=!tattacker,distance=..3] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[distance=..2] run function roguelike:character/mercenary/triple_atk/hurt
execute if entity @e[tag=!tattacker,distance=..3] run scoreboard players set @s mc_tatk_success 1
# 테스트 끝나고 아래 셀렉터의 조건 지우기
scoreboard players remove @s mc_tattack_ray 1

execute positioned ^ ^ ^1 if block ~ ~ ~ air run function roguelike:character/mercenary/triple_atk/ray_2