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
execute if score .query invparse = #Slotm106 invparse run function invparse:updater/slotm106

execute if score .slot invparse matches -1 run function invparse:error_update_hotbar