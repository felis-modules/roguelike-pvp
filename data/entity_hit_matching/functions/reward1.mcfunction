execute if entity @s[advancements={entity_hit_matching:on_hurt={target=true}}] run function entity_hit_matching:find_entity1

# entity hurt player
function roguelike:player_hurt

advancement revoke @s only entity_hit_matching:on_hurt