execute store result score #facing cppValue run data get entity @s Rotation[0]
scoreboard players add #facing cppValue 225
execute if score #facing cppValue matches ..-1 run scoreboard players add #facing cppValue 360
execute if score #facing cppValue matches 360.. run scoreboard players remove #facing cppValue 360
scoreboard players operation #facing cppValue /= #90 cppValue

execute if score #facing cppValue matches 0 run summon armor_stand ~ ~1 ~ {Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_temp","cpp_golem_herder"],HandItems:[{Count:1b,id:"minecraft:lead"},{Count:1b,id:"minecraft:shulker_box"}],ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:12970135}}],Pose:{RightArm:[-22.5f,0f,0f],LeftArm:[-22.5f,0f,0f]},Rotation:[0.0f,0.0f]}
execute if score #facing cppValue matches 1 run summon armor_stand ~ ~1 ~ {Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_temp","cpp_golem_herder"],HandItems:[{Count:1b,id:"minecraft:lead"},{Count:1b,id:"minecraft:shulker_box"}],ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:12970135}}],Pose:{RightArm:[-22.5f,0f,0f],LeftArm:[-22.5f,0f,0f]},Rotation:[90.0f,0.0f]}
execute if score #facing cppValue matches 2 run summon armor_stand ~ ~1 ~ {Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_temp","cpp_golem_herder"],HandItems:[{Count:1b,id:"minecraft:lead"},{Count:1b,id:"minecraft:shulker_box"}],ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:12970135}}],Pose:{RightArm:[-22.5f,0f,0f],LeftArm:[-22.5f,0f,0f]},Rotation:[180.0f,0.0f]}
execute if score #facing cppValue matches 3 run summon armor_stand ~ ~1 ~ {Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_temp","cpp_golem_herder"],HandItems:[{Count:1b,id:"minecraft:lead"},{Count:1b,id:"minecraft:shulker_box"}],ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:12970135}}],Pose:{RightArm:[-22.5f,0f,0f],LeftArm:[-22.5f,0f,0f]},Rotation:[270.0f,0.0f]}
data modify entity @e[type=armor_stand,tag=cpp_temp,sort=nearest,limit=1,distance=..2] HandItems[0].tag set from storage cpp:golem put
data modify entity @e[type=armor_stand,tag=cpp_temp,sort=nearest,limit=1,distance=..2] HandItems[1] set from storage cpp:golem put.storage
tag @e[type=armor_stand,tag=cpp_temp,distance=..2] remove cpp_temp
