scoreboard players set .query invparse 200002

function invparse:query_hotbar
execute store result storage invparse:parsed Item.Count byte 1 run scoreboard players get @s as_stack
function invparse:update_hotbar