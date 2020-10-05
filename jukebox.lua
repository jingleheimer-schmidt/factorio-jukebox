local hit_effects = require ("__base__.prototypes.entity.demo-hit-effects")
local sounds = require("__base__.prototypes.entity.demo-sounds")

local jukeboxItem = {
  type = "item",
  name = "jukebox-item",
  icon = "__factorio-jukebox__/graphics/Jukebox_JE2_BE2.png",
  icon_size = 300,
  subgroup = "storage",
  order = "a[items]-d[jukebox]",
  place_result = "jukebox-furnace",
  stack_size = 64
}

local jukeboxFurnace = {
  type = "furnace",
  name = "jukebox-furnace",
  icon = "__factorio-jukebox__/graphics/Jukebox_JE2_BE2.png",
  icon_size = 300,
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 0.1, result = "jukebox-item"},
  max_health = 100,
  corpse = "wooden-chest-remnants",
  dying_explosion = "wooden-chest-explosion",
  collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
  -- fast_replaceable_group = "container",
  selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
  damaged_trigger_effect = hit_effects.entity(),
  source_inventory_size = 1,
  result_inventory_size = 1,
  crafting_categories	= {"music-disks"},
  crafting_speed = 1,
  energy_source = {
    type = "electric",
    usage_priority = "secondary-input"
  },
  energy_usage = "2KW",
  allowed_effects = nil,
  -- open_sound = { filename = "__base__/sound/wooden-chest-open.ogg", volume = 0.6 },
  -- close_sound = { filename = "__base__/sound/wooden-chest-close.ogg", volume = 0.6 },
  vehicle_impact_sound = sounds.car_wood_impact(0.5),
  animation =
  {
    layers =
    {
      filename = "__factorio-jukebox__/graphics/jukebox.png",
      width = 32,
      height = 40,
      line_length = 1,
      frame_count = 1,
      -- shift = { -0.03125, -1.71875},
      animation_speed = 0.5,
      hr_version = {
        filename = "__factorio-jukebox__/graphics/hr-jukebox.png",
        width = 64,
        height = 80,
        line_length = 1,
        frame_count = 1,
        -- shift = { -0.03125, -1.71875},
        animation_speed = 0.5,
        scale = .5
      }
    },
      {
        filename = "__base__/graphics/entity/wooden-chest/wooden-chest-shadow.png",
        priority = "extra-high",
        width = 52,
        height = 20,
        line_length = 1,
        frame_count = 1,
        animation_speed = 0.5,
        shift = util.by_pixel(10, 6.5),
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/wooden-chest/hr-wooden-chest-shadow.png",
          priority = "extra-high",
          width = 104,
          height = 40,
          line_length = 1,
          frame_count = 1,
          animation_speed = 0.5,
          shift = util.by_pixel(10, 6.5),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  }
  -- picture =
  -- {
  --   layers =
  --   {
  --     {
  --       filename = "__factorio-jukebox__/graphics/jukebox.png",
  --       priority = "extra-high",
  --       width = 32,
  --       height = 36,
  --       shift = util.by_pixel(0.5, -2),
  --       hr_version =
  --       {
  --         filename = "__factorio-jukebox__/graphics/hr-jukebox.png",
  --         priority = "extra-high",
  --         width = 62,
  --         height = 72,
  --         shift = util.by_pixel(0.5, -2),
  --         scale = 0.5
  --       }
  --     },
  --     {
  --       filename = "__base__/graphics/entity/wooden-chest/wooden-chest-shadow.png",
  --       priority = "extra-high",
  --       width = 52,
  --       height = 20,
  --       shift = util.by_pixel(10, 6.5),
  --       draw_as_shadow = true,
  --       hr_version =
  --       {
  --         filename = "__base__/graphics/entity/wooden-chest/hr-wooden-chest-shadow.png",
  --         priority = "extra-high",
  --         width = 104,
  --         height = 40,
  --         shift = util.by_pixel(10, 6.5),
  --         draw_as_shadow = true,
  --         scale = 0.5
  --       }
  --     }
  --   }
  -- }--,
  -- circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
  -- circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
  -- circuit_wire_max_distance = default_circuit_wire_max_distance

data:extend({
  jukeboxItem,
  jukeboxFurnace
})
