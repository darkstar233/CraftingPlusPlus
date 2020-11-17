execute store result score @s cppValue run data get entity @s ArmorItems[3].tag.CustomModelData
execute if entity @s[scores={cppValue=12975061..12975080}] run setblock ~ ~ ~ air
execute if entity @s[scores={cppValue=12975501..12975513}] run setblock ~ ~ ~ air
execute if block ~ ~ ~ air run function cpp:cst/element/red_force_flower_done
