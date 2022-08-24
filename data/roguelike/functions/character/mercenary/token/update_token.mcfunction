scoreboard players set .query invparse 200001

scoreboard players set @s[scores={mc_token=5..}] mc_token 4
function invparse:query_hotbar
execute store result storage invparse:parsed Item.Count byte 1 run scoreboard players get @s mc_token
function invparse:update_hotbar