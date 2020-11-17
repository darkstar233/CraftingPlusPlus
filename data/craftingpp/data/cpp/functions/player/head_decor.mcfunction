setblock ~ 255 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:firework_star",Count:1b}]}
data modify block ~ 255 ~ Items[0].Count set from entity @s Inventory[{Slot:103b}].Count
data modify block ~ 255 ~ Items[0].tag set from entity @s Inventory[{Slot:103b}].tag
data modify block ~ 255 ~ Items[{Slot:0b}].tag merge value {Explosion:{Colors:[I;123456]}}
data modify block ~ 255 ~ Items[0].tag.Explosion.Colors[0] set from entity @s Inventory[{Slot:103b}].tag.display.color
loot replace entity @s armor.head 1 mine ~ 255 ~ shears{drop_content:1b}
setblock ~ 255 ~ air
