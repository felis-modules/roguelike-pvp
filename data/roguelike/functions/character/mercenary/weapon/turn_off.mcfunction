
scoreboard players set .query invparse 200000

function invparse:query_hotbar
data modify storage invparse:parsed Item.tag.CustomModelData set value 102004
data modify storage invparse:parsed Item.tag.halburd set value 1b

function invparse:update_hotbar