# scoreboard players set .query invparse 100031

# function invparse:query
# data modify storage invparse:parsed Item.tag.Enchantments[{id:"minecraft:quick_charge"}].lvl set value 10s

# function invparse:update

scoreboard players set @s ar_pdart -1
execute store result score @s RP_COOL2 run data get storage roguelike:rp rp_ar_cool2