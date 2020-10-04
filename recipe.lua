local jukeboxRecipe = {
    type = "recipe",
    name = "jukebox-recipe",
    subgroup = "storage",
    order = "a[items]-d[jukebox]",
    ingredients = {
        {"programmable-speaker",1},
        {"wood",8},
        {"electronic-circuit",2}
    },
    energy_required = .5,
    result = "jukebox-item",
    enabled = "true"
}

local musicDiskCategory = {
    type = "recipe-category",
    name = "music-disks"
}

data:extend({
  jukeboxRecipe,
  musicDiskCategory
})
