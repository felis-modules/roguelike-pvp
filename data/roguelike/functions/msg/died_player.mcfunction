
# entity hurt player
scoreboard players set @s msg_died 1
say hi
execute if entity @s[advancements={roguelike:on_died={target=true}}] run function roguelike:msg/find_entity1

execute if score .isentityhit entityid matches 1 as @s[type=player] run scoreboard players set @s msg_killer 1
scoreboard players set .isentityhit entityid 0

tellraw @a [{"text":"[클래스 PVP] "},{"selector":"@a[scores={}]"},{"text":" ⟾ "},{"nbt":"SelectedItem.tag.display.Name","entity":"@s","interpret":true,"bold":false,"italic":false},{"text":" ⟾ "},{"selector":"@a[scores={msg_deathcount=1..}]"}]

advancement revoke @s only roguelike:on_died

scoreboard players set @a msg_killer 0
scoreboard players set @a msg_deathcount 0