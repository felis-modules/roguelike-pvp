particle minecraft:dust 0.878 0.878 0.878 1 ~ ~ ~ 1 1 1 1 30 force

# 테스트 끝나고 아래 셀렉터의 조건 지우기
scoreboard players remove @s mc_tattack_ray 1

execute if score @s mc_tattack_ray matches 6.. positioned ^ ^ ^1 if block ~ ~ ~ air run function roguelike:character/mercenary/triple_atk/ray
execute if score @s mc_tattack_ray matches 5 positioned ^ ^ ^1 if block ~ ~ ~ air run function roguelike:character/mercenary/triple_atk/ray_5 