scoreboard players set .query invparse 300001

function invparse:query_hotbar
execute store result storage invparse:parsed Item.Count byte 1 run scoreboard players get @s as_pearl

function invparse:update_hotbar