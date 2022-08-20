scoreboard players set .query invparse 200001

function invparse:query_hotbar
execute store result storage invparse:parsed Item.Count byte 1 run scoreboard players get @s gl_token
function invparse:update_hotbar