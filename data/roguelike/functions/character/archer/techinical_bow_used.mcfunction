scoreboard players set .query invparse 100030

function invparse:query
data modify storage invparse:parsed Item.tag.Enchantments[{id:"minecraft:quick_charge"}].lvl set value 10s

function invparse:update

scoreboard players set @s ar_techshot -1
execute store result score @s RP_COOL1 run data get storage roguelike:rp rp_ar_cool1