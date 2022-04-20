#to create tags
$tags = @{}
$tags += @{tag_key1="Tag_value345"}
$tags += @{tag_key21="Tag_value21"}
$tags += @{tag_key3="Tag_value3"}

#Updates the tag.  -operation has three key words -"Merge, Replace, Delete"
Get-AzResource | Update-AzTag  -Operation Merge  -Tag $tags 

#creating of new tags, this will replace old one
Get-AzResource | new-AzTag  -Tag $tags 


