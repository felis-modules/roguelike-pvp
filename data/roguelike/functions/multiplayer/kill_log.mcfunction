tellraw @a [{"text":"[클래스 PVP] "},{"selector":"@a[scores={mp_killer=1..}]"},{"text":" ⟾ "},{"nbt":"SelectedItem.tag.display.Name","entity":"@a[scores={mp_killer=1..}]","interpret":true,"bold":false,"italic":false},{"text":" ⟾ "},{"selector":"@a[scores={mp_dead=1..}]"}]
scoreboard players set @a mp_killer 0
scoreboard players set @a mp_dead 0
execute if score .toggle mp_elo matches 1 run function roguelike:multiplayer/cal_elo