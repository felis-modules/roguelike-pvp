scoreboard players set .slot invparse -1

# #Slots : get item's query tag value each slot.

execute store result score #Slot0 invparse run data get entity @s Inventory[{Slot:0b}].tag.invparse
execute store result score #Slot1 invparse run data get entity @s Inventory[{Slot:1b}].tag.invparse
execute store result score #Slot2 invparse run data get entity @s Inventory[{Slot:2b}].tag.invparse
execute store result score #Slot3 invparse run data get entity @s Inventory[{Slot:3b}].tag.invparse
execute store result score #Slot4 invparse run data get entity @s Inventory[{Slot:4b}].tag.invparse
execute store result score #Slot5 invparse run data get entity @s Inventory[{Slot:5b}].tag.invparse
execute store result score #Slot6 invparse run data get entity @s Inventory[{Slot:6b}].tag.invparse
execute store result score #Slot7 invparse run data get entity @s Inventory[{Slot:7b}].tag.invparse
execute store result score #Slot8 invparse run data get entity @s Inventory[{Slot:8b}].tag.invparse
execute store result score #Slot9 invparse run data get entity @s Inventory[{Slot:9b}].tag.invparse
execute store result score #Slot10 invparse run data get entity @s Inventory[{Slot:10b}].tag.invparse
execute store result score #Slot11 invparse run data get entity @s Inventory[{Slot:11b}].tag.invparse
execute store result score #Slot12 invparse run data get entity @s Inventory[{Slot:12b}].tag.invparse
execute store result score #Slot13 invparse run data get entity @s Inventory[{Slot:13b}].tag.invparse
execute store result score #Slot14 invparse run data get entity @s Inventory[{Slot:14b}].tag.invparse
execute store result score #Slot15 invparse run data get entity @s Inventory[{Slot:15b}].tag.invparse
execute store result score #Slot16 invparse run data get entity @s Inventory[{Slot:16b}].tag.invparse
execute store result score #Slot17 invparse run data get entity @s Inventory[{Slot:17b}].tag.invparse
execute store result score #Slot18 invparse run data get entity @s Inventory[{Slot:18b}].tag.invparse
execute store result score #Slot19 invparse run data get entity @s Inventory[{Slot:19b}].tag.invparse
execute store result score #Slot20 invparse run data get entity @s Inventory[{Slot:20b}].tag.invparse
execute store result score #Slot21 invparse run data get entity @s Inventory[{Slot:21b}].tag.invparse
execute store result score #Slot22 invparse run data get entity @s Inventory[{Slot:22b}].tag.invparse
execute store result score #Slot23 invparse run data get entity @s Inventory[{Slot:23b}].tag.invparse
execute store result score #Slot24 invparse run data get entity @s Inventory[{Slot:24b}].tag.invparse
execute store result score #Slot25 invparse run data get entity @s Inventory[{Slot:25b}].tag.invparse
execute store result score #Slot26 invparse run data get entity @s Inventory[{Slot:26b}].tag.invparse
execute store result score #Slot27 invparse run data get entity @s Inventory[{Slot:27b}].tag.invparse
execute store result score #Slot28 invparse run data get entity @s Inventory[{Slot:28b}].tag.invparse
execute store result score #Slot29 invparse run data get entity @s Inventory[{Slot:29b}].tag.invparse
execute store result score #Slot30 invparse run data get entity @s Inventory[{Slot:30b}].tag.invparse
execute store result score #Slot31 invparse run data get entity @s Inventory[{Slot:31b}].tag.invparse
execute store result score #Slot32 invparse run data get entity @s Inventory[{Slot:32b}].tag.invparse
execute store result score #Slot33 invparse run data get entity @s Inventory[{Slot:33b}].tag.invparse
execute store result score #Slot34 invparse run data get entity @s Inventory[{Slot:34b}].tag.invparse
execute store result score #Slot35 invparse run data get entity @s Inventory[{Slot:35b}].tag.invparse
execute store result score #Slot100 invparse run data get entity @s Inventory[{Slot:100b}].tag.invparse
execute store result score #Slot101 invparse run data get entity @s Inventory[{Slot:101b}].tag.invparse
execute store result score #Slot102 invparse run data get entity @s Inventory[{Slot:102b}].tag.invparse
execute store result score #Slot103 invparse run data get entity @s Inventory[{Slot:103b}].tag.invparse
execute store result score #Slotm106 invparse run data get entity @s Inventory[{Slot:-106b}].tag.invparse

# Parsing : parse each slot.
execute if score .query invparse = #Slot0 invparse run function invparse:updater/slot0
execute if score .query invparse = #Slot1 invparse run function invparse:updater/slot1
execute if score .query invparse = #Slot2 invparse run function invparse:updater/slot2
execute if score .query invparse = #Slot3 invparse run function invparse:updater/slot3
execute if score .query invparse = #Slot4 invparse run function invparse:updater/slot4
execute if score .query invparse = #Slot5 invparse run function invparse:updater/slot5
execute if score .query invparse = #Slot6 invparse run function invparse:updater/slot6
execute if score .query invparse = #Slot7 invparse run function invparse:updater/slot7
execute if score .query invparse = #Slot8 invparse run function invparse:updater/slot8
execute if score .query invparse = #Slot9 invparse run function invparse:updater/slot9
execute if score .query invparse = #Slot10 invparse run function invparse:updater/slot10
execute if score .query invparse = #Slot11 invparse run function invparse:updater/slot11
execute if score .query invparse = #Slot12 invparse run function invparse:updater/slot12
execute if score .query invparse = #Slot13 invparse run function invparse:updater/slot13
execute if score .query invparse = #Slot14 invparse run function invparse:updater/slot14
execute if score .query invparse = #Slot15 invparse run function invparse:updater/slot15
execute if score .query invparse = #Slot16 invparse run function invparse:updater/slot16
execute if score .query invparse = #Slot17 invparse run function invparse:updater/slot17
execute if score .query invparse = #Slot18 invparse run function invparse:updater/slot18
execute if score .query invparse = #Slot19 invparse run function invparse:updater/slot19
execute if score .query invparse = #Slot20 invparse run function invparse:updater/slot20
execute if score .query invparse = #Slot21 invparse run function invparse:updater/slot21
execute if score .query invparse = #Slot22 invparse run function invparse:updater/slot22
execute if score .query invparse = #Slot23 invparse run function invparse:updater/slot23
execute if score .query invparse = #Slot24 invparse run function invparse:updater/slot24
execute if score .query invparse = #Slot25 invparse run function invparse:updater/slot25
execute if score .query invparse = #Slot26 invparse run function invparse:updater/slot26
execute if score .query invparse = #Slot27 invparse run function invparse:updater/slot27
execute if score .query invparse = #Slot28 invparse run function invparse:updater/slot28
execute if score .query invparse = #Slot29 invparse run function invparse:updater/slot29
execute if score .query invparse = #Slot30 invparse run function invparse:updater/slot30
execute if score .query invparse = #Slot31 invparse run function invparse:updater/slot31
execute if score .query invparse = #Slot32 invparse run function invparse:updater/slot32
execute if score .query invparse = #Slot33 invparse run function invparse:updater/slot33
execute if score .query invparse = #Slot34 invparse run function invparse:updater/slot34
execute if score .query invparse = #Slot35 invparse run function invparse:updater/slot35
execute if score .query invparse = #Slot31 invparse run function invparse:updater/slot31
execute if score .query invparse = #Slot32 invparse run function invparse:updater/slot32
execute if score .query invparse = #Slot33 invparse run function invparse:updater/slot33
execute if score .query invparse = #Slot34 invparse run function invparse:updater/slot34
execute if score .query invparse = #Slot35 invparse run function invparse:updater/slot35
execute if score .query invparse = #Slot100 invparse run function invparse:updater/slot100
execute if score .query invparse = #Slot101 invparse run function invparse:updater/slot101
execute if score .query invparse = #Slot102 invparse run function invparse:updater/slot102
execute if score .query invparse = #Slot103 invparse run function invparse:updater/slot103
execute if score .query invparse = #Slotm106 invparse run function invparse:updater/slotm106

execute if score .slot invparse matches -1 run function invparse:error_update