
# entity hurt player

execute if entity @s[advancements={entity_hit_matching:on_hurt={target=true}}] run function entity_hit_matching:find_entity1

# execute if score .isentityhit entityid matches 1 as @s[type=player] run say entity_hurt : 몬스터에게 맞은 플레이어가 디버프 효과를 적용받기 위해 사용되는 코드뭉치.
execute if score .isentityhit entityid matches 1 as @s[type=player] run function roguelike:entity_hit_matching/entity_hurt
scoreboard players set .isentityhit entityid 0

advancement revoke @s only entity_hit_matching:on_hurt