
# execute as @s[type=!player] run say entity_hit 몹이 실행하는, 때린 몹이 버프 등을 위하여 "먼저" 실행하는 코드
execute if entity @s[type=!player] run scoreboard players set .isentityhit entityid 1
execute as @s[type=!player] run function roguelike:entity_ht_matching/entity_hit
# function roguelike:entity_hit