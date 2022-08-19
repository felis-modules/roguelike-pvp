tellraw @s {"text":"[클래스 PVP] 테크니컬 활 사용 가능","color":"gray","bold":false,"italic":false}

## set query and update crossbow info
# function roguelike:character/archer/techinical_bow
scoreboard players set .query invparse 100030

function invparse:query
data modify storage invparse:parsed Item.tag.Enchantments[{id:"minecraft:quick_charge"}].lvl set value 5s
data modify storage invparse:parsed Item.tag.ChargedProjectiles set value [{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:80}],CustomPotionColor:16711680}},{id:"minecraft:spectral_arrow",Count:1b},{id:"minecraft:spectral_arrow",Count:1b}]
data modify storage invparse:parsed Item.tag.Charged set value 1b

function invparse:update

scoreboard players set @s ar_techshot 5