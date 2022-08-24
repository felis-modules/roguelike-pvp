#say ouch

# say player_hurt : 플레이어에게 맞은 플레이어가 실행하는 코드
execute as @s[type=player] run function roguelike:entity_hit_matching/player_hurt

# execute as @s[type=!player] run function roguelike:entity_hurt