
# 테스트 끝나고 아래 셀렉터의 조건 지우기
scoreboard players remove @s am_tp 1

execute if score @s am_tp matches 1.. positioned ^ ^1 ^-1 if block ~ ~ ~ air positioned ~ ~-0.5 ~ rotated as @s run tp ^ ^ ^1
execute if score @s am_tp matches 1.. positioned ^ ^1 ^-1 if block ~ ~ ~ air positioned ~ ~-0.5 ~ at @s run particle minecraft:dust 1 0.851 0 1 ~ ~1 ~ 0.6 0.6 0.6 2 300 force
execute if score @s am_tp matches 1.. positioned ^ ^1 ^-1 unless block ~ ~ ~ air positioned ~ ~-0.5 ~ rotated as @s run function roguelike:armor/teleport/ray