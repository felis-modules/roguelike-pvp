
scoreboard players set .query invparse 200000

function invparse:query_hotbar
data modify storage invparse:parsed Item.tag.CustomModelData set value 102003
data modify storage invparse:parsed Item.tag.halburd set value 2b

function invparse:update_hotbar

scoreboard players set @s mc_mode 5