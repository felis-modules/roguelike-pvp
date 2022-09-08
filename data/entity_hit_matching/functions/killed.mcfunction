# 실행순서 : 때린 플레이어 먼저 , 맞은 엔티티 나중

# say player_hit : 때린 플레이어가 먼저 실행하는 코드
# function roguelike:entity_hit_matching/player_killed

# execute if entity @s[advancements={entity_hit_matching:player_killed={target=true}}] run function entity_hit_matching:find_kill

# advancement revoke @s only entity_hit_matching:player_killed