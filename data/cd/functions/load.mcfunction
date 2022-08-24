scoreboard objectives add cd_dmg dummy
scoreboard objectives add cd_dmg2 dummy
scoreboard objectives add cd_hp health
scoreboard objectives add cd_hp_e dummy
scoreboard objectives add cd_hp_max dummy
scoreboard objectives add cd_armor dummy
scoreboard objectives add cd_armor_e dummy
scoreboard objectives add cd_tough dummy
scoreboard objectives add cd_abs dummy

## usage : scoreboard players set @s cd_attacker 1
scoreboard objectives add cd_attacker dummy
scoreboard objectives add cd_uuid0 dummy
scoreboard objectives add cd_uuid1 dummy
scoreboard objectives add cd_uuid2 dummy
scoreboard objectives add cd_uuid3 dummy

## used for armor calculation
scoreboard objectives add const dummy
scoreboard objectives add cd_var dummy

scoreboard players set 4 const 4
scoreboard players set 8 const 8
scoreboard players set 20 const 20
scoreboard players set 40 const 40
scoreboard players set 60 const 60
scoreboard players set 80 const 80
scoreboard players set 90 const 90
scoreboard players set 100 const 100
scoreboard players set 120 const 120
scoreboard players set 160 const 160
scoreboard players set 1000 const 1000

function cd:loop