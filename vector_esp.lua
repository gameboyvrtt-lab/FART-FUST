-- =========================================================================
-- PROJECT VECTOR STYLE ESP + UI FOR FUST SURVIVAL (79862723087324)
-- Uses Vector3 API from: project-vector-lua-api.txt
-- =========================================================================

-- =========================================================================
-- CONFIGURATION & STATE
-- =========================================================================
local cfg = {
    -- ESP Visibility Toggles
    esp_enabled = false,

    -- Player ESP
    p_box = false,
    p_box_col = {1, 1, 1, 0.85},
    p_skel = false,
    p_skel_col = {1, 0.35, 0.35, 1},
    p_chams = false,
    p_chams_col = {0.95, 0.25, 0.25, 0.25},
    p_hp = false,
    p_held = false,
    p_held_col = {1, 0.85, 0.3, 1},
    p_name = false,
    p_dist = false,
    p_tracers = false,
    p_tracers_col = {1, 1, 1, 0.35},
    p_sleepers = false,
    p_sleep_col = {0.65, 0.70, 0.85, 0.85},
    p_max_dist = 500,

    -- Animals ESP
    a_enabled = false,
    a_bear = false, a_bear_col = {0.95, 0.25, 0.25, 1.0},
    a_wolf = false, a_wolf_col = {1.00, 0.55, 0.20, 1.0},
    a_boar = false, a_boar_col = {0.85, 0.70, 0.40, 1.0},
    a_deer = false, a_deer_col = {0.40, 0.90, 0.50, 1.0},
    a_name = false, a_dist = false, a_hp = false, a_tracers = false,
    a_max_dist = 450, a_font = 12,

    -- NPCs ESP
    npcs_enabled = false,
    npc_soldier = false, npc_sol_col = {0.25, 0.85, 1.0, 1.0},
    npc_heli = false, npc_heli_col = {1.0, 0.20, 0.20, 1.0},
    npc_skel = false, npc_skel_col = {1.00, 0.35, 0.35, 1.0},
    npc_aimbot = false, npc_name = false, npc_dist = false, npc_hp = false,
    npc_tracers = false, npc_max_dist = 450, npc_font = 13,

    -- Ore Nodes ESP
    nodes_enabled = false,
    node_stone = false, node_stone_col = {0.85, 0.85, 0.9, 1},
    node_sulfur = false, node_sulf_col = {0.95, 0.85, 0.2, 1},
    node_iron = false, node_iron_col = {0.45, 0.75, 1, 1},
    node_dist = false, node_tracers = false, node_max_dist = 450, node_font = 13,

    -- Pickups ESP
    pickups_enabled = false,
    pk_ores = false, pk_ores_col = {1, 0.8, 0.35, 1},
    pk_plants = false, pk_pl_col = {0.35, 0.95, 0.45, 1},
    pk_wood = false, pk_wood_col = {0.75, 0.55, 0.35, 1},
    pk_dist = false, pk_max_dist = 200, pk_font = 12,

    -- Dropped Items ESP
    dropped_enabled = false,
    d_col = {1, 0.4, 0.9, 1}, d_tracers = false, d_dist = false,
    d_max_dist = 150, d_font = 12,

    -- Body Bags ESP
    bb_enabled = false,
    bb_col = {0.90, 0.25, 0.35, 1.0}, bb_dist = false, bb_tracers = false,
    bb_max_dist = 500, bb_font = 13,

    -- Loot Containers ESP
    loot_enabled = false,
    loot_show_world_cat = true,
    loot_show_barrels = true, loot_col_barrels = {0.25, 0.75, 1.0, 1.0},
    loot_show_crates = true, loot_col_crates = {0.95, 0.70, 0.25, 1.0},
    loot_show_military = true, loot_col_military = {0.20, 1.00, 0.40, 1.0},
    loot_show_elite = true, loot_col_elite = {0.95, 0.25, 0.45, 1.0},
    loot_show_base_cat = true,
    loot_show_large_box = true, loot_col_large_box = {0.95, 0.65, 0.20, 1.0},
    loot_show_small_box = true, loot_col_small_box = {0.85, 0.50, 0.15, 1.0},
    loot_show_tc = true, loot_col_tc = {0.20, 0.85, 1.00, 1.0},
    loot_show_locker = true, loot_col_locker = {0.70, 0.75, 0.90, 1.0},
    loot_show_furnace = true, loot_col_furnace = {1.00, 0.42, 0.15, 1.0},
    loot_show_workbench = true, loot_col_workbench = {0.60, 0.85, 0.40, 1.0},
    loot_show_shelves = true, loot_col_shelves = {0.80, 0.60, 0.35, 1.0},
    loot_show_sleeping_bag = true, loot_col_sleeping_bag = {0.45, 0.90, 0.65, 1.0},
    loot_dist = true, loot_tracers = false, loot_max_dist = 350, loot_font = 12,

    -- World settings
    no_fog = false,

    -- Aimbot
    aim_enabled = false, aim_key = 2,
    aim_fov_draw = false, aim_fov_col = {1, 1, 1, 0.35},
    aim_prediction = false, aim_drop_comp = false,
    aim_proj_speed = 350, aim_bone = "Head", aim_fov = 140, aim_smooth = 4,
    aim_vis_check = false, aim_team_check = false,
    aim_highlight = false, aim_hl_col = {1.0, 0.30, 0.30, 1.0},

    -- Gun Mods
    gun_rcl_enabled = false, gun_rcl_pct = 80,
    gun_rapid = false, gun_rapid_delay = 120,
    gun_trigger = false, gun_trigger_delay = 25, gun_trigger_npcs = true,

    -- Camera Zoom
    zoom_enabled = false, zoom_key = 0, zoom_fov = 30, zoom_smooth = 6,

    -- Watermark / FPS
    watermark = true,

    -- Anti-AFK
    anti_afk = true,

    -- UI Positioning
    ui_x = 35, ui_y = 180, ui_w = 320,

    -- Internal
    font = 14, sw = 1920, sh = 1080,
}

-- =========================================================================
-- HELPER FUNCTIONS (Vector API conformant)
-- =========================================================================
local function clamp(v, min_v, max_v)
    if v < min_v then return min_v end
    if v > max_v then return max_v end
    return v
end

local function safe_pos(part)
    if not part then return nil end
    local pos = part.Position
    if not pos then return nil end
    return pos.X, pos.Y, pos.Z
end

local function world_to_screen(x, y, z)
    local sx, sy, ok = draw.WorldToScreen(x, y + 3, z)
    if not ok then return nil end
    return sx, sy
end

local function get_item_color(name)
    if not name then return cfg.font_col or {1, 1, 1, 1} end
    local n = name:lower()
    -- Armor/gear colors
    if n:find("metal") or n:find("chestplate") or n:find("facemask") then return {0.95, 0.35, 0.35, 1.0} end
    if n:find("roadsign") or n:find("coffeecan") then return {1.00, 0.65, 0.20, 1.0} end
    if n:find("burlap") then return {0.75, 0.75, 0.80, 1.0} end
    if n:find("partyhat") then return {0.40, 0.85, 1.00, 1.0} end
    -- Weapons
    if n:find("lrsniper") or n:find("lr") or n:find("boltaction") or n:find("l96") then return {1, 0.4, 0.4, 1.0} end
    if n:find("ak47") or n:find("ak") or n:find("assaultrifle") then return {1, 0.65, 0.2, 1.0} end
    if n:find("scar") or n:find("scarrifle") then return {1, 0.4, 0.85, 1.0} end
    if n:find("lever") or n:find("levercarbine") then return {1, 0.55, 0.1, 1.0} end
    if n:find("sar") or n:find("semiautorifle") then return {1, 0.7, 0.3, 1.0} end
    if n:find("tacticalsmg") or n:find("drumsmg") or n:find("customsmg") then return {1, 0.35, 0.85, 1.0} end
    if n:find("servicepistol") or n:find("glock") or n:find("m9") then return {1, 0.55, 0.15, 1.0} end
    if n:find("revolver") or n:find("python") or n:find("magnum") then return {1, 0.3, 0.7, 1.0} end
    if n:find("compoundbow") or n:find("crossbow") or n:find("huntingbow") then return {1, 0.5, 0.1, 1.0} end
    if n:find("pumpshotgun") or n:find("doublebarrel") or n:find("pipeshotgun") then return {1, 0.3, 0.65, 1.0} end
    -- Resources
    if n:find("stone") or n:find("rock") then return {0.85, 0.85, 0.9, 1.0} end
    if n:find("sulfur") then return {0.95, 0.85, 0.2, 1.0} end
    if n:find("iron") or n:find("metal") then return {0.45, 0.75, 1, 1.0} end
    if n:find("wood") or n:find("log") then return {0.75, 0.55, 0.35, 1.0} end
    -- Items
    if n:find("bandage") or n:find("med") or n:find("potion") or n:find("apple") then return {0.4, 0.95, 0.4, 1.0} end
    if n:find("ore") or n:find("scrap") then return {1, 0.8, 0.35, 1.0} end
    -- Default
    return {1, 1, 1, 1}
end

local function refresh_resolution()
    cfg.sw, cfg.sh = utility.get_screen_size()
end

-- =========================================================================
-- UI TAB MANAGEMENT (Vector Style Sidebar)
-- =========================================================================
local TAB_AIM   = "Aimbot"
local TAB_VIS   = "Visuals"
local TAB_WORLD = "World"
local TAB_INV   = "Inventory"
local TAB_CFG   = "Settings"

-- Initialize menu tabs (Vector organized layout)
menu.add_tab(TAB_AIM,   "A") -- Aimbot tab
menu.add_tab(TAB_VIS,   "V") -- Visuals tab
menu.add_tab(TAB_WORLD, "W") -- World/Loot tab
menu.add_tab(TAB_INV,   "I") -- Inventory tab
menu.add_tab(TAB_CFG,   "S") -- Settings tab

-- =========================================================================
-- TAB 1: AIMBOT & WEAPON MODS
-- =========================================================================
menu.add_group(TAB_AIM, "Aimbot & Prediction")
menu.add_checkbox(TAB_AIM, "Aimbot & Prediction", "aim_enabled", "Enable Aimbot", false, { key = 2, show_mode = false })
menu.add_checkbox(TAB_AIM, "Aimbot & Prediction", "aim_draw_fov", "Draw FOV Circle", false, { parent = "aim_enabled", colorpicker = { 1.0, 1.0, 1.0, 0.35 } })
menu.add_checkbox(TAB_AIM, "Aimbot & Prediction", "aim_auto_bow", "Auto Gun/Bow Velocity", true, { parent = "aim_enabled" })
menu.add_checkbox(TAB_AIM, "Aimbot & Prediction", "aim_target_npcs", "Target NPCs / Scientists", false, { parent = "aim_enabled" })
menu.add_checkbox(TAB_AIM, "Aimbot & Prediction", "aim_vis_check", "Visible Check (LOS Raycast)", false, { parent = "aim_enabled" })
menu.add_checkbox(TAB_AIM, "Aimbot & Prediction", "aim_team_check", "Skip Friendly Teammates", false, { parent = "aim_enabled" })
menu.add_checkbox(TAB_AIM, "Aimbot & Prediction", "aim_target_highlight", "Pulsing Target Lock Ring", false, { parent = "aim_enabled", colorpicker = { 1.0, 0.30, 0.30, 1.0 } })
menu.add_checkbox(TAB_AIM, "Aimbot & Prediction", "aim_prediction", "Auto Lead Prediction", false, { parent = "aim_enabled" })
menu.add_checkbox(TAB_AIM, "Aimbot & Prediction", "aim_drop_comp", "Bullet/Arrow Drop Comp", false, { parent = "aim_enabled" })
menu.add_slider_int(TAB_AIM, "Aimbot & Prediction", "aim_proj_speed", "Manual Velocity (studs/s)", 50, 1200, 350, { parent = "aim_enabled" })
menu.add_combo(TAB_AIM, "Aimbot & Prediction", "aim_bone", "Target Bone", { "Head", "UpperTorso", "HumanoidRootPart" }, 0, { parent = "aim_enabled" })
menu.add_slider_int(TAB_AIM, "Aimbot & Prediction", "aim_fov", "FOV Radius (px)", 20, 600, 140, { parent = "aim_enabled" })
menu.add_slider_int(TAB_AIM, "Aimbot & Prediction", "aim_smooth", "Smoothing (1 = Instant)", 1, 20, 4, { parent = "aim_enabled" })

-- Gun Mods Group
menu.add_group(TAB_AIM, "Gun Mods")
menu.add_checkbox(TAB_AIM, "Gun Mods", "gun_recoil_enabled", "Recoil Control System (RCS)", false)
menu.add_slider_int(TAB_AIM, "Gun Mods", "gun_recoil_pct", "Recoil Reduction (%)", 10, 100, 80, { parent = "gun_recoil_enabled" })
menu.add_checkbox(TAB_AIM, "Gun Mods", "gun_rapid_fire", "Full Auto / Rapid Fire", false)
menu.add_slider_int(TAB_AIM, "Gun Mods", "gun_rapid_delay", "Rapid Fire Delay (ms)", 50, 400, 120, { parent = "gun_rapid_fire" })
menu.add_checkbox(TAB_AIM, "Gun Mods", "gun_triggerbot", "Triggerbot (Auto Shoot on Crosshair)", false)
menu.add_slider_int(TAB_AIM, "Gun Mods", "gun_trigger_delay", "Trigger Reaction Delay (ms)", 0, 200, 25, { parent = "gun_triggerbot" })
menu.add_checkbox(TAB_AIM, "Gun Mods", "gun_trigger_npcs", "Triggerbot Targets NPCs", true, { parent = "gun_triggerbot" })

-- Camera & Zoom Group
menu.add_group(TAB_AIM, "Camera & Zoom")
menu.add_checkbox(TAB_AIM, "Camera & Zoom", "zoom_enabled", "Enable Zoom / Scope", false, { key = 0, show_mode = false })
menu.add_slider_int(TAB_AIM, "Camera & Zoom", "zoom_fov", "Zoom Field of View", 10, 60, 30, { parent = "zoom_enabled" })
menu.add_slider_int(TAB_AIM, "Camera & Zoom", "zoom_smooth", "Zoom Smooth Speed", 1, 15, 6, { parent = "zoom_enabled" })

-- =========================================================================
-- TAB 2: VISUALS & ESP (Vector Style with Collapsible Sections)
-- =========================================================================
menu.add_group(TAB_VIS, "Player ESP")
menu.add_checkbox(TAB_VIS, "Player ESP", "player_esp_enabled", "Enable Player ESP", false)
menu.add_checkbox(TAB_VIS, "Player ESP", "player_box", "Bounding Box", false, { parent = "player_esp_enabled", colorpicker = { 1.0, 1.0, 1.0, 0.85 } })
menu.add_checkbox(TAB_VIS, "Player ESP", "player_skeleton", "Skeleton ESP", false, { parent = "player_esp_enabled", colorpicker = { 1.0, 0.35, 0.35, 1.0 } })
menu.add_checkbox(TAB_VIS, "Player ESP", "player_chams", "Chams (Filled)", false, { parent = "player_esp_enabled", colorpicker = { 0.95, 0.25, 0.25, 0.25 } })
menu.add_checkbox(TAB_VIS, "Player ESP", "player_health", "Health Bar & HP Text", false, { parent = "player_esp_enabled" })
menu.add_checkbox(TAB_VIS, "Player ESP", "player_held", "Equipped Weapon / Tool", false, { parent = "player_esp_enabled", colorpicker = { 1.0, 0.85, 0.30, 1.0 } })
menu.add_checkbox(TAB_VIS, "Player ESP", "player_name", "Player Name", false, { parent = "player_esp_enabled" })
menu.add_checkbox(TAB_VIS, "Player ESP", "player_dist", "Distance Readout", false, { parent = "player_esp_enabled" })
menu.add_checkbox(TAB_VIS, "Player ESP", "player_sleepers", "Sleeping Players", false, { parent = "player_esp_enabled", colorpicker = { 0.65, 0.70, 0.85, 0.85 } })
menu.add_checkbox(TAB_VIS, "Player ESP", "player_tracers", "Tracers / Snaplines", false, { parent = "player_esp_enabled", colorpicker = { 1.0, 1.0, 1.0, 0.35 } })
menu.add_checkbox(TAB_VIS, "Player ESP", "offscreen_players", "Off-Screen Radar Arrows", false, { parent = "player_esp_enabled" })
menu.add_slider_int(TAB_VIS, "Player ESP", "player_max_dist", "Max Range (m)", 20, 1500, 500, { parent = "player_esp_enabled" })
menu.add_slider_int(TAB_VIS, "Player ESP", "player_font_size", "Text Size", 10, 20, 13, { parent = "player_esp_enabled" })

menu.add_group(TAB_VIS, "NPCs ESP")
menu.add_checkbox(TAB_VIS, "NPCs ESP", "npcs_esp_enabled", "Enable NPCs ESP", false)
menu.add_checkbox(TAB_VIS, "NPCs ESP", "npc_soldier", "Soldiers & Scientists", false, { parent = "npcs_esp_enabled", colorpicker = { 0.25, 0.85, 1.00, 1.0 } })
menu.add_checkbox(TAB_VIS, "NPCs ESP", "npc_patrol_heli", "Patrol Helicopter", false, { parent = "npcs_esp_enabled", colorpicker = { 1.00, 0.20, 0.20, 1.0 } })
menu.add_checkbox(TAB_VIS, "NPCs ESP", "npc_skeleton", "NPC Skeleton ESP", false, { parent = "npcs_esp_enabled", colorpicker = { 1.00, 0.35, 0.35, 1.0 } })
menu.add_checkbox(TAB_VIS, "NPCs ESP", "npc_aimbot", "NPC Aimbot Tracking", false, { parent = "npcs_esp_enabled" })
menu.add_checkbox(TAB_VIS, "NPCs ESP", "npcs_show_name", "Show NPC Name", false, { parent = "npcs_esp_enabled" })
menu.add_checkbox(TAB_VIS, "NPCs ESP", "npcs_show_dist", "Distance Readout", false, { parent = "npcs_esp_enabled" })
menu.add_checkbox(TAB_VIS, "NPCs ESP", "npcs_show_health", "Health Bar & HP Text", false, { parent = "npcs_esp_enabled" })
menu.add_checkbox(TAB_VIS, "NPCs ESP", "npcs_tracers", "NPC Snaplines / Tracers", false, { parent = "npcs_esp_enabled" })
menu.add_checkbox(TAB_VIS, "NPCs ESP", "offscreen_npcs", "Off-Screen NPC Radar Arrows", false, { parent = "npcs_esp_enabled" })
menu.add_slider_int(TAB_VIS, "NPCs ESP", "npcs_max_dist", "Max Range (m)", 20, 1200, 450, { parent = "npcs_esp_enabled" })
menu.add_slider_int(TAB_VIS, "NPCs ESP", "npcs_font_size", "Text Size", 10, 20, 13, { parent = "npcs_esp_enabled" })

menu.add_group(TAB_VIS, "Animals ESP")
menu.add_checkbox(TAB_VIS, "Animals ESP", "animals_esp_enabled", "Enable Animals ESP", false)
menu.add_checkbox(TAB_VIS, "Animals ESP", "animal_bear", "Bears", false, { parent = "animals_esp_enabled", colorpicker = { 0.95, 0.25, 0.25, 1.0 } })
menu.add_checkbox(TAB_VIS, "Animals ESP", "animal_wolf", "Wolves & Werewolves", false, { parent = "animals_esp_enabled", colorpicker = { 1.00, 0.55, 0.20, 1.0 } })
menu.add_checkbox(TAB_VIS, "Animals ESP", "animal_boar", "Boars", false, { parent = "animals_esp_enabled", colorpicker = { 0.85, 0.70, 0.40, 1.0 } })
menu.add_checkbox(TAB_VIS, "Animals ESP", "animal_deer", "Deer", false, { parent = "animals_esp_enabled", colorpicker = { 0.40, 0.90, 0.50, 1.0 } })
menu.add_checkbox(TAB_VIS, "Animals ESP", "animals_show_name", "Animal Name", false, { parent = "animals_esp_enabled" })
menu.add_checkbox(TAB_VIS, "Animals ESP", "animals_show_dist", "Distance Readout", false, { parent = "animals_esp_enabled" })
menu.add_checkbox(TAB_VIS, "Animals ESP", "animals_show_health", "Health Bar & HP Text", false, { parent = "animals_esp_enabled" })
menu.add_checkbox(TAB_VIS, "Animals ESP", "animals_tracers", "Tracers / Snaplines", false, { parent = "animals_esp_enabled" })
menu.add_slider_int(TAB_VIS, "Animals ESP", "animals_max_dist", "Max Range (m)", 20, 1200, 450, { parent = "animals_esp_enabled" })
menu.add_slider_int(TAB_VIS, "Animals ESP", "animals_font_size", "Text Size", 10, 20, 12, { parent = "animals_esp_enabled" })

menu.add_group(TAB_VIS, "Environment")
menu.add_checkbox(TAB_VIS, "Environment", "no_fog", "Remove All Fog (Clear View)", false)

-- =========================================================================
-- ARM CHANGER (Engine Chams per Body Part)
-- =========================================================================
menu.add_group(TAB_VIS, "Arm Changer")
menu.add_checkbox(TAB_VIS, "Arm Changer", "arm_enabled", "Enable Arm Changer", false)
menu.add_combo(TAB_VIS, "Arm Changer", "arm_bone", "Target Bone", { "Head", "UpperTorso", "LowerTorso", "LeftArm", "RightArm", "LeftLeg", "RightLeg", "HumanoidRootPart" }, 3, { parent = "arm_enabled" })
menu.add_slider_int(TAB_VIS, "Arm Changer", "arm_chams_mode", "Chams Mode", 0, 3, 0, { parent = "arm_enabled" })
menu.add_slider_int(TAB_VIS, "Arm Changer", "arm_chams_color", "Chams Color Picker", 1, 255, 255, { parent = "arm_enabled" })
menu.add_slider_int(TAB_VIS, "Arm Changer", "arm_chams_alpha", "Chams Alpha", 1, 100, 25, { parent = "arm_enabled" })
menu.add_checkbox(TAB_VIS, "Arm Changer", "arm_vis_check", "Visible Check", false, { parent = "arm_enabled" })

-- =========================================================================
-- TAB 3: WORLD & LOOT (Collapsible Dropdowns like Vector)
-- =========================================================================
menu.add_group(TAB_WORLD, "Loot Containers ESP")
menu.add_checkbox(TAB_WORLD, "Loot Containers ESP", "loot_esp_enabled", "Enable Loot Containers ESP", false)

-- World Loot Collapsible
menu.add_checkbox(TAB_WORLD, "Loot Containers ESP", "loot_show_world_cat", "[+] World Loot Crates & Barrels", true, { parent = "loot_esp_enabled" })
menu.add_checkbox(TAB_WORLD, "Loot Containers ESP", "loot_show_barrels", "Loot Barrels", true, { parent = "loot_show_world_cat", colorpicker = { 0.25, 0.75, 1.00, 1.0 } })
menu.add_checkbox(TAB_WORLD, "Loot Containers ESP", "loot_show_crates", "Standard Crates", true, { parent = "loot_show_world_cat", colorpicker = { 0.95, 0.70, 0.25, 1.0 } })
menu.add_checkbox(TAB_WORLD, "Loot Containers ESP", "loot_show_military", "Military Crates", true, { parent = "loot_show_world_cat", colorpicker = { 0.20, 1.00, 0.40, 1.0 } })
menu.add_checkbox(TAB_WORLD, "Loot Containers ESP", "loot_show_elite", "Elite Crates", true, { parent = "loot_show_world_cat", colorpicker = { 0.95, 0.25, 0.45, 1.0 } })

-- Base Containers Collapsible
menu.add_checkbox(TAB_WORLD, "Loot Containers ESP", "loot_show_base_cat", "[+] Base Storage & Deployables", true, { parent = "loot_esp_enabled" })
menu.add_checkbox(TAB_WORLD, "Loot Containers ESP", "loot_show_large_box", "Large Wooden Box", true, { parent = "loot_show_base_cat", colorpicker = { 0.95, 0.65, 0.20, 1.0 } })
menu.add_checkbox(TAB_WORLD, "Loot Containers ESP", "loot_show_small_box", "Small Wooden Box", true, { parent = "loot_show_base_cat", colorpicker = { 0.85, 0.50, 0.15, 1.0 } })
menu.add_checkbox(TAB_WORLD, "Loot Containers ESP", "loot_show_tc", "Tool Cupboard (TC)", true, { parent = "loot_show_base_cat", colorpicker = { 0.20, 0.85, 1.00, 1.0 } })
menu.add_checkbox(TAB_WORLD, "Loot Containers ESP", "loot_show_locker", "Locker", true, { parent = "loot_show_base_cat", colorpicker = { 0.70, 0.75, 0.90, 1.0 } })
menu.add_checkbox(TAB_WORLD, "Loot Containers ESP", "loot_show_furnace", "Furnace", true, { parent = "loot_show_base_cat", colorpicker = { 1.00, 0.42, 0.15, 1.0 } })
menu.add_checkbox(TAB_WORLD, "Loot Containers ESP", "loot_show_workbench", "Workbench", true, { parent = "loot_show_base_cat", colorpicker = { 0.60, 0.85, 0.40, 1.0 } })
menu.add_checkbox(TAB_WORLD, "Loot Containers ESP", "loot_show_shelves", "Shelves", true, { parent = "loot_show_base_cat", colorpicker = { 0.80, 0.60, 0.35, 1.0 } })
menu.add_checkbox(TAB_WORLD, "Loot Containers ESP", "loot_show_sleeping_bag", "Sleeping Bag", true, { parent = "loot_show_base_cat", colorpicker = { 0.45, 0.90, 0.65, 1.0 } })

-- Loot Settings
menu.add_checkbox(TAB_WORLD, "Loot Containers ESP", "loot_show_dist", "Show Distance", true, { parent = "loot_esp_enabled" })
menu.add_checkbox(TAB_WORLD, "Loot Containers ESP", "loot_tracers", "Tracers / Snaplines", false, { parent = "loot_esp_enabled" })
menu.add_slider_int(TAB_WORLD, "Loot Containers ESP", "loot_max_dist", "Max Range (m)", 20, 1000, 350, { parent = "loot_esp_enabled" })
menu.add_slider_int(TAB_WORLD, "Loot Containers ESP", "loot_font_size", "Text Size", 10, 20, 12, { parent = "loot_esp_enabled" })

-- Body Bags & Dropped Items
menu.add_group(TAB_WORLD, "Body Bags & Dropped")
menu.add_checkbox(TAB_WORLD, "Body Bags & Dropped", "bodybag_enabled", "Enable Body Bags ESP", false, { colorpicker = { 0.90, 0.25, 0.35, 1.0 } })
menu.add_checkbox(TAB_WORLD, "Body Bags & Dropped", "bodybag_show_dist", "Body Bag Distance", false, { parent = "bodybag_enabled" })
menu.add_checkbox(TAB_WORLD, "Body Bags & Dropped", "bodybag_tracers", "Body Bag Snaplines", false, { parent = "bodybag_enabled" })
menu.add_slider_int(TAB_WORLD, "Body Bags & Dropped", "bodybag_max_dist", "Body Bag Range (m)", 20, 1000, 500, { parent = "bodybag_enabled" })
menu.add_slider_int(TAB_WORLD, "Body Bags & Dropped", "bodybag_font_size", "Body Bag Text Size", 10, 20, 13, { parent = "bodybag_enabled" })

menu.add_checkbox(TAB_WORLD, "Body Bags & Dropped", "dropped_esp_enabled", "Enable Dropped Items ESP", false)
menu.add_checkbox(TAB_WORLD, "Body Bags & Dropped", "dropped_color", "Dropped Color Picker", false, { parent = "dropped_esp_enabled", colorpicker = { 1.0, 0.4, 0.9, 1.0 } })
menu.add_checkbox(TAB_WORLD, "Body Bags & Dropped", "dropped_tracers", "Dropped Item Snaplines", false, { parent = "dropped_esp_enabled" })
menu.add_checkbox(TAB_WORLD, "Body Bags & Dropped", "dropped_show_dist", "Show Distance", false, { parent = "dropped_esp_enabled" })
menu.add_slider_int(TAB_WORLD, "Body Bags & Dropped", "dropped_max_dist", "Max Range (m)", 10, 500, 150, { parent = "dropped_esp_enabled" })
menu.add_slider_int(TAB_WORLD, "Body Bags & Dropped", "dropped_font_size", "Text Size", 10, 20, 12, { parent = "dropped_esp_enabled" })

-- Ore Nodes & Pickups
menu.add_group(TAB_WORLD, "Ore Nodes & Pickups")
menu.add_checkbox(TAB_WORLD, "Ore Nodes & Pickups", "nodes_esp_enabled", "Enable Ore Nodes ESP", false)
menu.add_checkbox(TAB_WORLD, "Ore Nodes & Pickups", "stone_node", "Stone Nodes", false, { parent = "nodes_esp_enabled", colorpicker = { 0.85, 0.85, 0.90, 1.0 } })
menu.add_checkbox(TAB_WORLD, "Ore Nodes & Pickups", "sulfur_node", "Sulfur Nodes", false, { parent = "nodes_esp_enabled", colorpicker = { 0.95, 0.85, 0.20, 1.0 } })
menu.add_checkbox(TAB_WORLD, "Ore Nodes & Pickups", "iron_node", "Metal / Iron Nodes", false, { parent = "nodes_esp_enabled", colorpicker = { 0.45, 0.75, 1.00, 1.0 } })
menu.add_checkbox(TAB_WORLD, "Ore Nodes & Pickups", "nodes_show_dist", "Show Distance", false, { parent = "nodes_esp_enabled" })
menu.add_checkbox(TAB_WORLD, "Ore Nodes & Pickups", "nodes_tracers", "Tracers / Snaplines", false, { parent = "nodes_esp_enabled" })
menu.add_slider_int(TAB_WORLD, "Ore Nodes & Pickups", "nodes_max_dist", "Max Range (m)", 20, 1200, 450, { parent = "nodes_esp_enabled" })
menu.add_slider_int(TAB_WORLD, "Ore Nodes & Pickups", "nodes_font_size", "Text Size", 10, 20, 13, { parent = "nodes_esp_enabled" })

menu.add_checkbox(TAB_WORLD, "Ore Nodes & Pickups", "pickups_esp_enabled", "Enable Ground Pickups ESP", false)
menu.add_checkbox(TAB_WORLD, "Ore Nodes & Pickups", "pickups_ores", "Loose Ores (Stone/Sulfur/Metal)", false, { parent = "pickups_esp_enabled", colorpicker = { 1.0, 0.80, 0.35, 1.0 } })
menu.add_checkbox(TAB_WORLD, "Ore Nodes & Pickups", "pickups_plants", "Plants (Hemp / Corn / Pumpkin)", false, { parent = "pickups_esp_enabled", colorpicker = { 0.35, 0.95, 0.45, 1.0 } })
menu.add_checkbox(TAB_WORLD, "Ore Nodes & Pickups", "pickups_wood", "Loose Wood Logs", false, { parent = "pickups_esp_enabled", colorpicker = { 0.75, 0.55, 0.35, 1.0 } })
menu.add_checkbox(TAB_WORLD, "Ore Nodes & Pickups", "pickups_show_dist", "Show Distance", false, { parent = "pickups_esp_enabled" })
menu.add_slider_int(TAB_WORLD, "Ore Nodes & Pickups", "pickups_max_dist", "Max Range (m)", 10, 600, 200, { parent = "pickups_esp_enabled" })
menu.add_slider_int(TAB_WORLD, "Ore Nodes & Pickups", "pickups_font_size", "Text Size", 10, 20, 12, { parent = "pickups_esp_enabled" })

-- =========================================================================
-- TAB 4: INVENTORY INSPECTION
-- =========================================================================
menu.add_group(TAB_INV, "Player Inventory Viewer")
menu.add_checkbox(TAB_INV, "Player Inventory Viewer", "inv_enabled", "Enable Player Inventory Viewer", false)
menu.add_combo(TAB_INV, "Player Inventory Viewer", "inv_mode", "View Mode", { "Target Player (Near Crosshair)", "Local Player (Full)", "Both" }, 0, { parent = "inv_enabled" })
menu.add_checkbox(TAB_INV, "Player Inventory Viewer", "inv_show_weapons", "Equipped & Holstered Weapons", true, { parent = "inv_enabled" })
menu.add_checkbox(TAB_INV, "Player Inventory Viewer", "inv_show_wear", "Worn Armor & Classification", true, { parent = "inv_enabled" })
menu.add_checkbox(TAB_INV, "Player Inventory Viewer", "inv_show_pack", "Backpack Container Contents", true, { parent = "inv_enabled" })
menu.add_checkbox(TAB_INV, "Player Inventory Viewer", "inv_show_grid", "Full Inventory Grid (Slots 7-36)", true, { parent = "inv_enabled" })
menu.add_slider_int(TAB_INV, "Player Inventory Viewer", "inv_panel_x", "Panel Pos X", 10, 1920, 35, { parent = "inv_enabled" })
menu.add_slider_int(TAB_INV, "Player Inventory Viewer", "inv_panel_y", "Panel Pos Y", 10, 1080, 180, { parent = "inv_enabled" })
menu.add_slider_int(TAB_INV, "Player Inventory Viewer", "inv_panel_w", "Panel Width", 220, 520, 320, { parent = "inv_enabled" })

menu.add_group(TAB_INV, "Container & Body Bag Viewer")
menu.add_checkbox(TAB_INV, "Container & Body Bag Viewer", "bodybag_viewer_enabled", "Enable Container & Body Bag Viewer", false)
menu.add_combo(TAB_INV, "Container & Body Bag Viewer", "bodybag_viewer_mode", "Viewer Trigger", { "Near Crosshair", "Always Closest" }, 0, { parent = "bodybag_viewer_enabled" })
menu.add_slider_int(TAB_INV, "Container & Body Bag Viewer", "bodybag_panel_x", "Viewer Pos X", 10, 1920, 380, { parent = "bodybag_viewer_enabled" })
menu.add_slider_int(TAB_INV, "Container & Body Bag Viewer", "bodybag_panel_y", "Viewer Pos Y", 10, 1080, 180, { parent = "bodybag_viewer_enabled" })
menu.add_slider_int(TAB_INV, "Container & Body Bag Viewer", "bodybag_panel_w", "Viewer Width", 220, 520, 300, { parent = "bodybag_viewer_enabled" })

-- =========================================================================
-- TAB 5: SETTINGS & MISC
-- =========================================================================
menu.add_group(TAB_CFG, "Configuration")
menu.add_button(TAB_CFG, "Configuration", "hh_save_cfg", "Save Configuration", function() on_save_config_clicked() end)
menu.add_button(TAB_CFG, "Configuration", "hh_load_cfg", "Load Configuration", function() on_load_config_clicked(true) end)
menu.add_checkbox(TAB_CFG, "Configuration", "hh_autoload_cfg", "Auto-Load Config On Launch", true)

menu.add_group(TAB_CFG, "HUD & Automation")
menu.add_checkbox(TAB_CFG, "HUD & Automation", "watermark_enabled", "Show Watermark and FPS", true)
menu.add_checkbox(TAB_CFG, "HUD & Automation", "anti_afk", "Anti-AFK (Prevent Inactivity Kick)", true)
menu.add_checkbox(TAB_CFG, "HUD & Automation", "notifications_enabled", "Feature Toggle On-Screen Toasts", true)

-- =========================================================================
-- COLOR PRESETS MENU
-- =========================================================================
menu.add_group(TAB_CFG, "Color Presets")
menu.add_combo(TAB_CFG, "Color Presets", "hh_color_preset", "Select Preset", { "Lime Soda", "Glacier", "Solar Flare", "Ultraviolet" }, 1, { colorpicker = { 1, 1, 1, 1 } })
menu.add_button(TAB_CFG, "Color Presets", "hh_apply_preset", "Apply Selected", function() on_apply_preset_clicked() end)
menu.add_button(TAB_CFG, "Color Presets", "hh_reset_preset", "Reset to Default", function() on_reset_preset_clicked() end)

-- =========================================================================
-- CONFIGURATION SYSTEM: SAVE & LOAD
-- =========================================================================
local CONFIG_FILE_NAME = "hamster_hub_config.txt"

local function get_config_file_path()
    local appdata = os.getenv("LOCALAPPDATA")
    if appdata then
        return appdata .. "\\Project Vector\\Scripts\\" .. CONFIG_FILE_NAME
    end
    return CONFIG_FILE_NAME
end

local function safe_menu_get(id)
    local ok, val = pcall(function() return menu.get(id) end)
    return ok and val
end

local function safe_menu_get_color(id)
    local ok, col = pcall(function() return menu.get_color(id) end)
    return ok and col or { 1, 1, 1, 1 }
end

local function safe_menu_get_key(id)
    local ok, key = pcall(function() return menu.get_key(id) end)
    return ok and key or 0
end

local SAVE_ITEMS = {
    { id = "hh_autoload_cfg", type = "bool" },
    -- Aimbot
    { id = "aim_enabled", type = "bool", key = true },
    { id = "aim_draw_fov", type = "bool", color = true },
    { id = "aim_auto_bow", type = "bool" },
    { id = "aim_target_npcs", type = "bool" },
    { id = "aim_vis_check", type = "bool" },
    { id = "aim_team_check", type = "bool" },
    { id = "aim_target_highlight", type = "bool", color = true },
    { id = "aim_prediction", type = "bool" },
    { id = "aim_drop_comp", type = "bool" },
    { id = "aim_proj_speed", type = "int" },
    { id = "aim_bone", type = "int" },
    { id = "aim_fov", type = "int" },
    { id = "aim_smooth", type = "int" },
    -- Gun Mods
    { id = "gun_recoil_enabled", type = "bool" },
    { id = "gun_recoil_pct", type = "int" },
    { id = "gun_rapid_fire", type = "bool" },
    { id = "gun_rapid_delay", type = "int" },
    { id = "gun_triggerbot", type = "bool" },
    { id = "gun_trigger_delay", type = "int" },
    { id = "gun_trigger_npcs", type = "bool" },
    -- Camera & Zoom
    { id = "zoom_enabled", type = "bool", key = true },
    { id = "zoom_fov", type = "int" },
    { id = "zoom_smooth", type = "int" },
    -- ESP Toggles
    { id = "player_esp_enabled", type = "bool" },
    { id = "player_box", type = "bool", color = true },
    { id = "player_skeleton", type = "bool", color = true },
    { id = "player_chams", type = "bool", color = true },
    { id = "player_health", type = "bool" },
    { id = "player_held", type = "bool", color = true },
    { id = "player_name", type = "bool" },
    { id = "player_dist", type = "bool" },
    { id = "player_sleepers", type = "bool", color = true },
    { id = "player_tracers", type = "bool", color = true },
    { id = "offscreen_players", type = "bool" },
    { id = "player_max_dist", type = "int" },
    { id = "player_font_size", type = "int" },
    { id = "animals_esp_enabled", type = "bool" },
    { id = "animal_bear", type = "bool", color = true },
    { id = "animal_wolf", type = "bool", color = true },
    { id = "animal_boar", type = "bool", color = true },
    { id = "animal_deer", type = "bool", color = true },
    { id = "animals_show_name", type = "bool" },
    { id = "animals_show_dist", type = "bool" },
    { id = "animals_show_health", type = "bool" },
    { id = "animals_tracers", type = "bool" },
    { id = "animals_max_dist", type = "int" },
    { id = "animals_font_size", type = "int" },
    { id = "npcs_esp_enabled", type = "bool" },
    { id = "npc_soldier", type = "bool", color = true },
    { id = "npc_patrol_heli", type = "bool", color = true },
    { id = "npc_skeleton", type = "bool", color = true },
    { id = "npc_aimbot", type = "bool" },
    { id = "npcs_show_name", type = "bool" },
    { id = "npcs_show_dist", type = "bool" },
    { id = "npcs_show_health", type = "bool" },
    { id = "npcs_tracers", type = "bool" },
    { id = "npcs_max_dist", type = "int" },
    { id = "npcs_font_size", type = "int" },
    { id = "nodes_esp_enabled", type = "bool" },
    { id = "stone_node", type = "bool", color = true },
    { id = "sulfur_node", type = "bool", color = true },
    { id = "iron_node", type = "bool", color = true },
    { id = "nodes_show_dist", type = "bool" },
    { id = "nodes_tracers", type = "bool" },
    { id = "nodes_max_dist", type = "int" },
    { id = "nodes_font_size", type = "int" },
    { id = "pickups_esp_enabled", type = "bool" },
    { id = "pickups_ores", type = "bool", color = true },
    { id = "pickups_plants", type = "bool", color = true },
    { id = "pickups_wood", type = "bool", color = true },
    { id = "pickups_show_dist", type = "bool" },
    { id = "pickups_max_dist", type = "int" },
    { id = "pickups_font_size", type = "int" },
    { id = "dropped_esp_enabled", type = "bool" },
    { id = "dropped_color", type = "bool", color = true },
    { id = "dropped_tracers", type = "bool" },
    { id = "dropped_show_dist", type = "bool" },
    { id = "dropped_max_dist", type = "int" },
    { id = "dropped_font_size", type = "int" },
    { id = "bodybag_enabled", type = "bool", color = true },
    { id = "bodybag_show_dist", type = "bool" },
    { id = "bodybag_tracers", type = "bool" },
    { id = "bodybag_max_dist", type = "int" },
    { id = "bodybag_font_size", type = "int" },
    { id = "bodybag_viewer_enabled", type = "bool" },
    { id = "bodybag_viewer_mode", type = "int" },
    { id = "bodybag_panel_x", type = "int" },
    { id = "bodybag_panel_y", type = "int" },
    { id = "bodybag_panel_w", type = "int" },
    { id = "loot_esp_enabled", type = "bool" },
    { id = "loot_show_world_cat", type = "bool" },
    { id = "loot_show_barrels", type = "bool", color = true },
    { id = "loot_col_barrels", type = "color" },
    { id = "loot_show_crates", type = "bool", color = true },
    { id = "loot_col_crates", type = "color" },
    { id = "loot_show_military", type = "bool", color = true },
    { id = "loot_col_military", type = "color" },
    { id = "loot_show_elite", type = "bool", color = true },
    { id = "loot_col_elite", type = "color" },
    { id = "loot_show_base_cat", type = "bool" },
    { id = "loot_show_large_box", type = "bool", color = true },
    { id = "loot_col_large_box", type = "color" },
    { id = "loot_show_small_box", type = "bool", color = true },
    { id = "loot_col_small_box", type = "color" },
    { id = "loot_show_tc", type = "bool", color = true },
    { id = "loot_col_tc", type = "color" },
    { id = "loot_show_locker", type = "bool", color = true },
    { id = "loot_col_locker", type = "color" },
    { id = "loot_show_furnace", type = "bool", color = true },
    { id = "loot_col_furnace", type = "color" },
    { id = "loot_show_workbench", type = "bool", color = true },
    { id = "loot_col_workbench", type = "color" },
    { id = "loot_show_shelves", type = "bool", color = true },
    { id = "loot_col_shelves", type = "color" },
    { id = "loot_show_sleeping_bag", type = "bool", color = true },
    { id = "loot_col_sleeping_bag", type = "color" },
    { id = "loot_show_dist", type = "bool" },
    { id = "loot_tracers", type = "bool" },
    { id = "loot_max_dist", type = "int" },
    { id = "loot_font", type = "int" },
    { id = "no_fog", type = "bool" },
    -- Settings
    { id = "watermark_enabled", type = "bool" },
    { id = "anti_afk", type = "bool" },
    { id = "notifications_enabled", type = "bool" },
    { id = "offscreen_players", type = "bool" },
    { id = "offscreen_npcs", type = "bool" },
    { id = "hh_color_preset", type = "int" },
    { id = "hh_apply_preset", type = "bool" },
    { id = "hh_reset_preset", type = "bool" }
}

local function save_config()
    local ok, result = pcall(function()
        local path = get_config_file_path()
        local dir = path:match("^(.+)\\[^\\]+$")
        if dir then pcall(function() os.execute('mkdir "' .. dir .. '" 2>nul') end) end

        local file = io.open(path, "w")
        if not file then
            print("[Hamster Hub] Failed to open config file for writing: " .. path)
            return false
        end

        for _, item in ipairs(SAVE_ITEMS) do
            local id = item.id
            local val = safe_menu_get(id)
            if item.type == "bool" then
                file:write(id .. "=" .. (val and "1" or "0") .. "\n")
            elseif item.type == "int" then
                file:write(id .. "=" .. tostring(tonumber(val) or 0) .. "\n")
            end
            if item.color then
                local col = safe_menu_get_color(id)
                if col then
                    file:write(string.format("%s_color=%.4f,%.4f,%.4f,%.4f\n", id, col[1] or 1, col[2] or 1, col[3] or 1, col[4] or 1))
                end
            end
            if item.key then
                file:write(id .. "_key=" .. tostring(safe_menu_get_key(id)) .. "\n")
            end
        end

        file:close()
        print("[Hamster Hub] Configuration successfully saved to: " .. path)
        return true
    end)

    if not ok then print("[Hamster Hub] Error saving config: " .. tostring(result)) end
    return result
end

local function load_config(is_manual)
    local ok, result = pcall(function()
        local path = get_config_file_path()
        local file = io.open(path, "r")
        if not file then
            if is_manual then print("[Hamster Hub] No config file found at: " .. path) end
            return false
        end

        local data = {}
        for line in file:lines() do
            local key, value = line:match("^([^=]+)=(.*)$")
            if key and value then data[key] = value end
        end
        file:close()

        for _, item in ipairs(SAVE_ITEMS) do
            local id = item.id
            if data[id] then
                if item.type == "bool" then pcall(function() menu.set(id, data[id] == "1") end)
                elseif item.type == "int" then pcall(function() menu.set(id, tonumber(data[id]) or 0) end) end
            end
            if item.color and data[id .. "_color"] then
                local r, g, b, a = data[id .. "_color"]:match("([%d%.%-]+),([%d%.%-]+),([%d%.%-]+),([%d%.%-]+)")
                if r then pcall(function() menu.set_color(id, { tonumber(r), tonumber(g), tonumber(b), tonumber(a) }) end) end
            end
            if item.key and data[id .. "_key"] then
                pcall(function() menu.set_key(id, tonumber(data[id .. "_key"]) or 0) end)
            end
        end

        print("[Hamster Hub] Configuration loaded successfully.")
        return true
    end)

    if not ok then print("[Hamster Hub] Error loading config: " .. tostring(result)) end
    return result
end

on_save_config_clicked = save_config
on_load_config_clicked = load_config

-- Auto-load on startup
local autoload = safe_menu_get("hh_autoload_cfg")
if autoload == nil or autoload == true then load_config() end

-- =========================================================================
-- COLOR PRESETS APPLICATION
-- =========================================================================
local function apply_preset_colors(preset_name)
    local changes_made = false
    local function set_color(id, r, g, b, a)
        local ok = pcall(function() menu.set_color(id, { r, g, b, a }) end)
        if ok then changes_made = true end
    end
    if preset_name == "Lime Soda" then
        -- Lime Soda: Blue #00B8FF, Teal #2BE0A0, Lime #C6FF3D, Yellow #FFE53B
        set_color("player_box_col", 0/255, 184/255, 255/255, 0.85) -- Blue
        set_color("p_skel_col", 43/255, 224/255, 160/255, 1.0) -- Teal
        set_color("p_chams_col", 198/255, 255/255, 61/255, 0.25) -- Lime
        set_color("p_held_col", 255/255, 229/255, 59/255, 1.0) -- Yellow
        set_color("npc_sol_col", 43/255, 224/255, 160/255, 1.0) -- Teal
        set_color("npc_heli_col", 255/255, 229/255, 59/255, 1.0) -- Yellow
        set_color("a_bear_col", 198/255, 255/255, 61/255, 1.0) -- Lime
        set_color("a_wolf_col", 255/255, 229/255, 59/255, 1.0) -- Yellow
        set_color("a_boar_col", 134/255, 255/255, 71/255, 1.0) -- Lime
        set_color("a_deer_col", 64/255, 255/255, 80/255, 1.0) -- Lime
        set_color("loot_col_barrels", 43/255, 224/255, 160/255, 1.0) -- Teal
        set_color("loot_col_crates", 255/255, 229/255, 59/255, 1.0) -- Yellow
        set_color("loot_col_military", 43/255, 224/255, 160/255, 1.0) -- Teal
        set_color("loot_col_elite", 255/255, 229/255, 59/255, 1.0) -- Yellow
        set_color("loot_col_large_box", 198/255, 255/255, 61/255, 1.0) -- Lime
        set_color("loot_col_small_box", 134/255, 255/255, 71/255, 1.0) -- Lime
        set_color("loot_col_tc", 43/255, 224/255, 160/255, 1.0) -- Teal
        set_color("loot_col_locker", 122/255, 141/255, 144/255, 1.0) -- Soft blue
        set_color("loot_col_furnace", 255/255, 66/255, 15/255, 1.0) -- Orange
        set_color("loot_col_workbench", 96/255, 133/255, 64/255, 1.0) -- Green
        set_color("loot_col_shelves", 128/255, 96/255, 53/255, 1.0) -- Brown
        set_color("loot_col_sleeping_bag", 69/255, 144/255, 101/255, 1.0) -- Soft green
        set_color("node_stone_col", 133/255, 133/255, 144/255, 1.0) -- Neutral gray
        set_color("node_sulf_col", 229/255, 133/255, 32/255, 1.0) -- Sulfur yellow
        set_color("node_iron_col", 69/255, 117/255, 255/255, 1.0) -- Blue iron
        set_color("pk_ores_col", 255/255, 128/255, 53/255, 1.0) -- Orange ore
        set_color("pk_pl_col", 53/255, 229/255, 73/255, 1.0) -- Plant green
        set_color("pk_wood_col", 170/255, 110/255, 62/255, 1.0) -- Wood brown
        set_color("dropped_col", 255/255, 78/255, 173/255, 1.0) -- Pink dropped
        set_color("bodybag_col", 255/255, 37/255, 83/255, 1.0) -- Red bodybag
        set_color("npc_skel_col", 255/255, 53/255, 53/255, 1.0) -- Red NPC skeleton
        set_color("offscreen_players_col", 255/255, 229/255, 59/255, 0.35) -- Yellow arrows
        set_color("offscreen_npcs_col", 255/255, 229/255, 59/255, 0.35) -- Yellow NPC arrows
        set_color("aim_fov_col", 255/255, 229/255, 59/255, 0.35) -- Yellow FOV
        set_color("aim_hl_col", 255/255, 53/255, 53/255, 1.0) -- Red highlight
        set_color("p_tracers_col", 255/255, 229/255, 59/255, 0.35) -- Yellow tracers
        set_color("npcs_tracers_col", 255/255, 229/255, 59/255, 0.35) -- Yellow NPC tracers
        set_color("loot_tracers_col", 255/255, 229/255, 59/255, 0.35) -- Yellow loot tracers
        set_color("bodybag_tracers_col", 255/255, 37/255, 83/255, 1.0) -- Red bodybag tracers
        set_color("dropped_tracers_col", 255/255, 78/255, 173/255, 1.0) -- Pink dropped tracers
        set_color("p_sleep_col", 101/255, 136/255, 169/255, 0.85) -- Soft blue sleepers
        set_color("aim_fov_col", 255/255, 229/255, 59/255, 0.35)
        push_notification("Applied: Lime Soda Preset", { 0/255, 184/255, 255/255, 1.0 })
    elseif preset_name == "Glacier" then
        -- Glacier: Blue #2F6BFF, Light Blue #6FD3FF, Light Cyan #B9F3FF, Purple #8C7BFF
        set_color("player_box_col", 47/255, 107/255, 255/255, 0.85) -- Blue
        set_color("p_skel_col", 111/255, 211/255, 255/255, 1.0) -- Light blue
        set_color("p_chams_col", 185/255, 243/255, 255/255, 0.25) -- Light cyan
        set_color("p_held_col", 140/255, 211/255, 255/255, 1.0) -- Light cyan
        set_color("npc_sol_col", 47/255, 107/255, 255/255, 1.0) -- Blue
        set_color("npc_heli_col", 255/255, 131/255, 255/255, 1.0) -- Light pink
        set_color("a_bear_col", 255/255, 131/255, 255/255, 1.0) -- Pink
        set_color("a_wolf_col", 255/255, 131/255, 255/255, 1.0) -- Pink
        set_color("a_boar_col", 255/255, 191/255, 255/255, 1.0) -- Light pink
        set_color("a_deer_col", 255/255, 243/255, 255/255, 1.0) -- Very light
        set_color("loot_col_barrels", 111/255, 211/255, 255/255, 1.0) -- Light blue
        set_color("loot_col_crates", 140/255, 211/255, 255/255, 1.0) -- Light cyan
        set_color("loot_col_military", 47/255, 107/255, 255/255, 1.0) -- Blue
        set_color("loot_col_elite", 111/255, 211/255, 255/255, 1.0) -- Light blue
        set_color("loot_col_large_box", 185/255, 243/255, 255/255, 1.0) -- Light cyan
        set_color("loot_col_small_box", 191/255, 255/255, 255/255, 1.0) -- White-ish
        set_color("loot_col_tc", 47/255, 107/255, 255/255, 1.0) -- Blue
        set_color("loot_col_locker", 185/255, 243/255, 255/255, 1.0) -- Light cyan
        set_color("loot_col_furnace", 200/255, 85/255, 255/255, 1.0) -- Purple
        set_color("loot_col_workbench", 86/255, 155/255, 255/255, 1.0) -- Light blue-green
        set_color("loot_col_shelves", 153/255, 227/255, 255/255, 1.0) -- Light cyan
        set_color("loot_col_sleeping_bag", 116/255, 243/255, 255/255, 1.0) -- Light cyan
        set_color("node_stone_col", 133/255, 133/255, 144/255, 1.0) -- Neutral gray
        set_color("node_sulf_col", 255/255, 191/255, 32/255, 1.0) -- Sulfur yellow
        set_color("node_iron_col", 86/255, 155/255, 255/255, 1.0) -- Light blue iron
        set_color("pk_ores_col", 255/255, 128/255, 53/255, 1.0) -- Orange
        set_color("pk_pl_col", 53/255, 161/255, 219/255, 1.0) -- Plant cyan
        set_color("pk_wood_col", 255/255, 170/255, 200/255, 1.0) -- Light wood
        set_color("dropped_col", 255/255, 131/255, 255/255, 1.0) -- Pink
        set_color("bodybag_col", 255/255, 37/255, 83/255, 1.0) -- Red
        set_color("npc_skel_col", 255/255, 37/255, 83/255, 1.0) -- Red
        set_color("offscreen_players_col", 111/255, 211/255, 255/255, 0.35) -- Light cyan arrows
        set_color("offscreen_npcs_col", 111/255, 211/255, 255/255, 0.35) -- Light cyan NPC arrows
        set_color("aim_fov_col", 111/255, 211/255, 255/255, 0.35) -- Light cyan FOV
        set_color("aim_hl_col", 255/255, 37/255, 83/255, 1.0) -- Red highlight
        set_color("p_tracers_col", 111/255, 211/255, 255/255, 0.35) -- Light cyan tracers
        set_color("npcs_tracers_col", 111/255, 211/255, 255/255, 0.35) -- Light cyan NPC tracers
        set_color("loot_tracers_col", 111/255, 211/255, 255/255, 0.35) -- Light cyan loot tracers
        set_color("bodybag_tracers_col", 255/255, 37/255, 83/255, 1.0) -- Red tracers
        set_color("dropped_tracers_col", 255/255, 131/255, 255/255, 1.0) -- Pink tracers
        set_color("p_sleep_col", 111/255, 211/255, 255/255, 0.85) -- Light blue sleepers
        set_color("aim_fov_col", 111/255, 211/255, 255/255, 0.35)
        push_notification("Applied: Glacier Preset", { 47/255, 107/255, 255/255, 1.0 })
    elseif preset_name == "Solar Flare" then
        -- Solar Flare: Orange #FF5A1F, Pink #FF2E63, Yellow-Orange #FFB020
        set_color("player_box_col", 255/255, 90/255, 31/255, 0.85) -- Orange
        set_color("p_skel_col", 255/255, 46/255, 99/255, 1.0) -- Pink
        set_color("p_chams_col", 255/255, 90/255, 31/255, 0.25) -- Orange fill
        set_color("p_held_col", 255/255, 46/255, 99/255, 1.0) -- Pink weapon
        set_color("npc_sol_col", 255/255, 90/255, 31/255, 1.0) -- Orange NPC
        set_color("npc_heli_col", 255/255, 46/255, 99/255, 1.0) -- Pink heli
        set_color("a_bear_col", 255/255, 90/255, 31/255, 1.0) -- Orange bear
        set_color("a_wolf_col", 255/255, 46/255, 99/255, 1.0) -- Pink wolf
        set_color("a_boar_col", 255/255, 176/255, 32/255, 1.0) -- Orange boar
        set_color("a_deer_col", 255/255, 176/255, 32/255, 1.0) -- Orange deer
        set_color("loot_col_barrels", 255/255, 90/255, 31/255, 1.0) -- Orange barrels
        set_color("loot_col_crates", 255/255, 46/255, 99/255, 1.0) -- Pink crates
        set_color("loot_col_military", 255/255, 90/255, 31/255, 1.0) -- Orange military
        set_color("loot_col_elite", 255/255, 46/255, 99/255, 1.0) -- Elite pink
        set_color("loot_col_large_box", 255/255, 90/255, 31/255, 1.0) -- Large box orange
        set_color("loot_col_small_box", 255/255, 176/255, 32/255, 1.0) -- Small box orange
        set_color("loot_col_tc", 255/255, 90/255, 31/255, 1.0) -- TC orange
        set_color("loot_col_locker", 255/255, 176/255, 32/255, 1.0) -- Locker orange
        set_color("loot_col_furnace", 255/255, 90/255, 31/255, 1.0) -- Furnace orange
        set_color("loot_col_workbench", 255/255, 176/255, 32/255, 1.0) -- Workbench orange
        set_color("loot_col_shelves", 255/255, 176/255, 32/255, 1.0) -- Shelves orange
        set_color("loot_col_sleeping_bag", 255/255, 90/255, 31/255, 1.0) -- Sleeping bag orange
        set_color("node_stone_col", 255/255, 255/255, 255/255, 1.0) -- Stone white
        set_color("node_sulf_col", 255/255, 128/255, 32/255, 1.0) -- Sulfur orange
        set_color("node_iron_col", 255/255, 255/255, 255/255, 1.0) -- Iron white
        set_color("pk_ores_col", 255/255, 90/255, 31/255, 1.0) -- Orange ores
        set_color("pk_pl_col", 255/255, 46/255, 99/255, 1.0) -- Plants pink
        set_color("pk_wood_col", 255/255, 176/255, 32/255, 1.0) -- Wood orange
        set_color("dropped_col", 255/255, 90/255, 31/255, 1.0) -- Dropped orange
        set_color("bodybag_col", 255/255, 46/255, 99/255, 1.0) -- Body bag pink
        set_color("npc_skel_col", 255/255, 46/255, 99/255, 1.0) -- NPC skeleton pink
        set_color("offscreen_players_col", 255/255, 90/255, 31/255, 0.35) -- Orange arrows
        set_color("offscreen_npcs_col", 255/255, 46/255, 99/255, 0.35) -- Pink NPC arrows
        set_color("aim_fov_col", 255/255, 90/255, 31/255, 0.35) -- Orange FOV
        set_color("aim_hl_col", 255/255, 46/255, 99/255, 1.0) -- Red highlight
        set_color("p_tracers_col", 255/255, 90/255, 31/255, 0.35) -- Orange tracers
        set_color("npcs_tracers_col", 255/255, 46/255, 99/255, 0.35) -- Pink NPC tracers
        set_color("loot_tracers_col", 255/255, 90/255, 31/255, 0.35) -- Orange loot tracers
        set_color("bodybag_tracers_col", 255/255, 46/255, 99/255, 1.0) -- Red tracers
        set_color("dropped_tracers_col", 255/255, 90/255, 31/255, 1.0) -- Orange tracers
        set_color("p_sleep_col", 255/255, 46/255, 99/255, 0.85) -- Pink sleepers
        set_color("aim_fov_col", 255/255, 90/255, 31/255, 0.35)
        push_notification("Applied: Solar Flare Preset", { 255/255, 90/255, 31/255, 1.0 })
    elseif preset_name == "Ultraviolet" then
        -- Ultraviolet: Dark Blue #3A1CFF, Hot Pink #FF3EC8, Purple #8A2BFF, Light Cyan #5CE1FF
        set_color("player_box_col", 58/255, 28/255, 255/255, 0.85) -- Dark blue
        set_color("p_skel_col", 255/255, 62/255, 200/255, 1.0) -- Hot pink
        set_color("p_chams_col", 138/255, 28/255, 255/255, 0.25) -- Purple chams
        set_color("p_held_col", 255/255, 62/255, 200/255, 1.0) -- Pink held
        set_color("npc_sol_col", 58/255, 28/255, 255/255, 1.0) -- Dark blue NPC
        set_color("npc_heli_col", 255/255, 62/255, 200/255, 1.0) -- Hot pink heli
        set_color("a_bear_col", 138/255, 28/255, 255/255, 1.0) -- Purple bear
        set_color("a_wolf_col", 255/255, 62/255, 200/255, 1.0) -- Hot pink wolf
        set_color("a_boar_col", 138/255, 43/255, 255/255, 1.0) -- Purple boar
        set_color("a_deer_col", 92/255, 225/255, 255/255, 1.0) -- Light cyan deer
        set_color("loot_col_barrels", 255/255, 62/255, 200/255, 1.0) -- Hot pink barrels
        set_color("loot_col_crates", 255/255, 62/255, 200/255, 1.0) -- Pink crates
        set_color("loot_col_military", 58/255, 28/255, 255/255, 1.0) -- Dark blue military
        set_color("loot_col_elite", 138/255, 43/255, 255/255, 1.0) -- Elite purple
        set_color("loot_col_large_box", 138/255, 43/255, 255/255, 1.0) -- Large box purple
        set_color("loot_col_small_box", 138/255, 43/255, 255/255, 1.0) -- Small box purple
        set_color("loot_col_tc", 58/255, 28/255, 255/255, 1.0) -- TC dark blue
        set_color("loot_col_locker", 138/255, 43/255, 255/255, 1.0) -- Locker purple
        set_color("loot_col_furnace", 255/255, 37/255, 200/255, 1.0) -- Furnace purple-pink
        set_color("loot_col_workbench", 255/255, 37/255, 200/255, 1.0) -- Workbench purple-pink
        set_color("loot_col_shelves", 255/255, 37/255, 200/255, 1.0) -- Shelves purple-pink
        set_color("loot_col_sleeping_bag", 148/255, 225/255, 255/255, 1.0) -- Light cyan bag
        set_color("node_stone_col", 133/255, 133/255, 144/255, 1.0) -- Neutral gray
        set_color("node_sulf_col", 255/255, 62/255, 200/255, 1.0) -- Sulfur purple
        set_color("node_iron_col", 255/255, 62/255, 200/255, 1.0) -- Iron purple
        set_color("pk_ores_col", 255/255, 90/255, 31/255, 1.0) -- Orange (fallback)
        set_color("pk_pl_col", 255/255, 37/255, 200/255, 1.0) -- Plants purple-cyan
        set_color("pk_wood_col", 255/255, 37/255, 200/255, 1.0) -- Wood purple-cyan
        set_color("dropped_col", 255/255, 37/255, 200/255, 1.0) -- Dropped purple
        set_color("bodybag_col", 255/255, 37/255, 200/255, 1.0) -- Body bag purple
        set_color("npc_skel_col", 255/255, 37/255, 200/255, 1.0) -- NPC skeleton purple
        set_color("offscreen_players_col", 148/255, 225/255, 255/255, 0.35) -- Light cyan arrows
        set_color("offscreen_npcs_col", 148/255, 225/255, 255/255, 0.35) -- Light cyan NPC arrows
        set_color("aim_fov_col", 148/255, 225/255, 255/255, 0.35) -- Light cyan FOV
        set_color("aim_hl_col", 255/255, 37/255, 200/255, 1.0) -- Red-purple highlight
        set_color("p_tracers_col", 148/255, 225/255, 255/255, 0.35) -- Light cyan tracers
        set_color("npcs_tracers_col", 148/255, 225/255, 255/255, 0.35) -- Light cyan NPC tracers
        set_color("loot_tracers_col", 148/255, 225/255, 255/255, 0.35) -- Light cyan loot tracers
        set_color("bodybag_tracers_col", 255/255, 37/255, 200/255, 1.0) -- Purple tracers
        set_color("dropped_tracers_col", 255/255, 37/255, 200/255, 1.0) -- Purple tracers
        set_color("p_sleep_col", 148/255, 225/255, 255/255, 0.85) -- Light blue sleepers
        set_color("aim_fov_col", 148/255, 225/255, 255/255, 0.35)
        push_notification("Applied: Ultraviolet Preset", { 58/255, 28/255, 255/255, 1.0 })
    end
    if changes_made then
        push_notification("Colors applied successfully!", { 1, 1, 1, 1 })
    end
end

local function on_apply_preset_clicked()
    local preset_name = safe_menu_get("hh_color_preset")
    if preset_name then
        apply_preset_colors(preset_name)
    end
end

local function on_reset_preset_clicked()
    -- Reset all ESP colors to default white/neutral
    local function set_def(id, r, g, b, a)
        pcall(function() menu.set_color(id, { r, g, b, a }) end)
    end
    -- Player colors
    set_def("player_box_col", 1, 1, 1, 0.85)
    set_def("p_skel_col", 1, 0.35, 0.35, 1)
    set_def("p_chams_col", 0.95, 0.25, 0.25, 0.25)
    set_def("p_held_col", 1, 0.85, 0.3, 1)
    set_def("npc_sol_col", 0.25, 0.85, 1.0, 1.0)
    set_def("npc_heli_col", 1.0, 0.20, 0.20, 1.0)
    -- Animal colors
    set_def("a_bear_col", 0.95, 0.25, 0.25, 1.0)
    set_def("a_wolf_col", 1.00, 0.55, 0.20, 1.0)
    set_def("a_boar_col", 0.85, 0.70, 0.40, 1.0)
    set_def("a_deer_col", 0.40, 0.90, 0.50, 1.0)
    -- Loot colors
    set_def("loot_col_barrels", 0.25, 0.75, 1.0, 1.0)
    set_def("loot_col_crates", 0.95, 0.70, 0.25, 1.0)
    set_def("loot_col_military", 0.20, 1.00, 0.40, 1.0)
    set_def("loot_col_elite", 0.95, 0.25, 0.45, 1.0)
    set_def("loot_col_large_box", 0.95, 0.65, 0.20, 1.0)
    set_def("loot_col_small_box", 0.85, 0.50, 0.15, 1.0)
    set_def("loot_col_tc", 0.20, 0.85, 1.00, 1.0)
    set_def("loot_col_locker", 0.70, 0.75, 0.90, 1.0)
    set_def("loot_col_furnace", 1.00, 0.42, 0.15, 1.0)
    set_def("loot_col_workbench", 0.60, 0.85, 0.40, 1.0)
    set_def("loot_col_shelves", 0.80, 0.60, 0.35, 1.0)
    set_def("loot_col_sleeping_bag", 0.45, 0.90, 0.65, 1.0)
    -- Node colors
    set_def("node_stone_col", 0.85, 0.85, 0.90, 1.0)
    set_def("node_sulf_col", 0.95, 0.85, 0.20, 1.0)
    set_def("node_iron_col", 0.45, 0.75, 1.00, 1.0)
    -- Pickup colors
    set_def("pk_ores_col", 1, 0.80, 0.35, 1.0)
    set_def("pk_pl_col", 0.35, 0.95, 0.45, 1.0)
    set_def("pk_wood_col", 0.75, 0.55, 0.35, 1.0)
    -- Dropped/Bag colors
    set_def("dropped_col", 1, 0.4, 0.9, 1.0)
    set_def("bodybag_col", 0.90, 0.25, 0.35, 1.0)
    -- NPC skeleton
    set_def("npc_skel_col", 1.00, 0.35, 0.35, 1.0)
    -- Offscreen arrows
    set_def("offscreen_players_col", 1, 1, 1, 0.35)
    set_def("offscreen_npcs_col", 1, 1, 1, 0.35)
    -- Aimbot colors
    set_def("aim_fov_col", 1, 1, 1, 0.35)
    set_def("aim_hl_col", 1, 0.30, 0.30, 1.0)
    set_def("p_tracers_col", 1, 1, 1, 0.35)
    set_def("npcs_tracers_col", 1, 1, 1, 0.35)
    set_def("loot_tracers_col", 1, 1, 1, 0.35)
    set_def("bodybag_tracers_col", 0.90, 0.25, 0.35, 1.0)
    set_def("dropped_tracers_col", 1, 0.4, 0.9, 1.0)
    -- Sleepers
    set_def("p_sleep_col", 0.65, 0.70, 0.85, 0.85)
    push_notification("Preset reset to defaults", { 1, 1, 1, 1 })
end

menu.add_combo(TAB_CFG, "Color Presets", "hh_color_preset", "Select Preset", { "Lime Soda", "Glacier", "Solar Flare", "Ultraviolet" }, 1, { colorpicker = { 1, 1, 1, 1 } })
menu.add_button(TAB_CFG, "Color Presets", "hh_apply_preset", "Apply Selected", function() on_apply_preset_clicked() end)
menu.add_button(TAB_CFG, "Color Presets", "hh_reset_preset", "Reset to Default", function() on_reset_preset_clicked() end)

-- =========================================================================
-- CONFIGURATION SYSTEM: SAVE & LOAD
-- =========================================================================
local function get_armor_info(name)
    if not name or type(name) ~= "string" then return nil end
    local lower = name:lower():gsub("[_%s%-]", "")

    -- Helmets
    if lower:find("metalfacemask") or (lower:find("metal") and lower:find("mask")) then
        return { slot = "Head", tier = "Tier 3 (Heavy Metal)", display = "Metal Facemask", category = "Headwear", color = { 0.95, 0.35, 0.35, 1.0 } }
    elseif lower:find("coffeecan") or lower:find("coffee") then
        return { slot = "Head", tier = "Tier 2 (Roadsign/Med)", display = "Coffee Can Helmet", category = "Headwear", color = { 1.00, 0.65, 0.20, 1.0 } }
    elseif lower:find("deathtaxmask") then
        return { slot = "Head", tier = "Special (Armored)", display = "Death Tax Mask", category = "Headwear", color = { 0.85, 0.30, 0.95, 1.0 } }
    elseif lower:find("burlapheadwrap") then
        return { slot = "Head", tier = "Tier 1 (Cloth)", display = "Burlap Headwrap", category = "Headwear", color = { 0.75, 0.75, 0.80, 1.0 } }
    elseif lower:find("partyhat") then
        return { slot = "Head", tier = "Cosmetic", display = "Party Hat", category = "Headwear", color = { 0.40, 0.85, 1.00, 1.0 } }
    elseif lower:find("soldierhelmet") then
        return { slot = "Head", tier = "Military (Armored)", display = "Soldier Helmet", category = "Headwear", color = { 0.30, 0.85, 1.00, 1.0 } }
    elseif lower:find("helmet") or lower:find("mask") or lower:find("hood") then
        return { slot = "Head", tier = "Armored Headwear", display = name, category = "Headwear", color = { 0.85, 0.75, 0.45, 1.0 } }
    end

    -- Chest Armor
    if lower:find("metalchestplate") or (lower:find("metal") and lower:find("chest")) then
        return { slot = "Chest Armor", tier = "Tier 3 (Heavy Metal)", display = "Metal Chestplate", category = "Chest Armor", color = { 0.95, 0.35, 0.35, 1.0 } }
    elseif lower:find("roadsignjacket") or lower:find("roadsign") then
        return { slot = "Chest Armor", tier = "Tier 2 (Roadsign/Med)", display = "Roadsign Jacket", category = "Chest Armor", color = { 1.00, 0.65, 0.20, 1.0 } }
    elseif lower:find("woodchestplate") or (lower:find("wood") and lower:find("chest")) then
        return { slot = "Chest Armor", tier = "Tier 1 (Wood/Light)", display = "Wood Chestplate", category = "Chest Armor", color = { 0.85, 0.65, 0.35, 1.0 } }
    elseif lower:find("burlapshirt") then
        return { slot = "Shirt", tier = "Tier 0 (Cloth/Shirt)", display = "Burlap Shirt", category = "Shirt", color = { 0.70, 0.70, 0.75, 1.0 } }
    elseif lower:find("soldiervest") or lower:find("vest") then
        return { slot = "Chest Armor", tier = "Military (Tactical)", display = "Kevlar Tactical Vest", category = "Chest Armor", color = { 0.30, 0.85, 1.00, 1.0 } }
    end

    -- Leg Armor
    if lower:find("heavyplatepants") or (lower:find("heavy") and lower:find("pants")) then
        return { slot = "Leg Armor", tier = "Tier 3 (Heavy Metal)", display = "Heavy Plate Pants", category = "Leg Armor", color = { 0.95, 0.35, 0.35, 1.0 } }
    elseif lower:find("roadsignkilt") or lower:find("kilt") then
        return { slot = "Leg Armor", tier = "Tier 2 (Roadsign/Med)", display = "Roadsign Kilt", category = "Leg Armor", color = { 1.00, 0.65, 0.20, 1.0 } }
    elseif lower:find("woodarmorpants") or (lower:find("wood") and lower:find("pants")) then
        return { slot = "Leg Armor", tier = "Tier 1 (Wood/Light)", display = "Wood Armor Pants", category = "Leg Armor", color = { 0.85, 0.65, 0.35, 1.0 } }
    end

    -- Footwear
    if lower:find("burlapshoes") or lower:find("shoes") or lower:find("boot") then
        return { slot = "Boots", tier = "Tier 0 (Footwear)", display = "Burlap Shoes", category = "Boots", color = { 0.70, 0.70, 0.75, 1.0 } }
    end

    -- Backpacks
    if lower:find("backpacklarge") then return { slot = "Pack", tier = "Large Storage", display = "Large Backpack", category = "Pack", color = { 0.35, 0.85, 1.00, 1.0 } } end
    if lower:find("backpacksmall") or lower:find("backpack") then return { slot = "Pack", tier = "Small Storage", display = "Small Backpack", category = "Pack", color = { 0.35, 0.85, 1.00, 1.0 } } end

    return nil
end

-- =========================================================================
-- WEAPON PROFILES & BALLISTICS
-- =========================================================================
local GUN_PROFILES = {
    { pattern = "lrsniper",      aliases = { "lr300", "lr" },      name = "LR Sniper",        speed = 950, drop = 0.60 },
    { pattern = "boltaction",    aliases = { "boltrifle", "l96" }, name = "Bolt Action",      speed = 750, drop = 0.70 },
    { pattern = "assaultrifle",  aliases = { "ak47", "ak" },       name = "Assault Rifle",    speed = 480, drop = 0.85 },
    { pattern = "scarrifle",     aliases = { "scar" },             name = "Scar Rifle",       speed = 500, drop = 0.85 },
    { pattern = "m249",          aliases = { "saw" },              name = "M249 SAW",         speed = 520, drop = 0.80 },
    { pattern = "levercarbine",  aliases = { "carbine", "lever" }, name = "Lever Carbine",    speed = 460, drop = 0.90 },
    { pattern = "semiautorifle", aliases = { "sar" },              name = "Semi Rifle (SAR)", speed = 440, drop = 0.90 },
    { pattern = "tacticalsmg",   aliases = { "tacsmg" },           name = "Tactical SMG",     speed = 350, drop = 1.05 },
    { pattern = "drumsmg",       aliases = { "tommy", "thompson" }, name = "Drum SMG",         speed = 330, drop = 1.10 },
    { pattern = "customsmg",     aliases = { "smg", "mp5" },       name = "Custom SMG",       speed = 340, drop = 1.05 },
    { pattern = "servicepistol", aliases = { "glock", "m9" },      name = "Service Pistol",   speed = 320, drop = 1.10 },
    { pattern = "revolver",      aliases = { "python", "magnum" }, name = "Revolver",         speed = 300, drop = 1.15 },
    { pattern = "compoundbow",   aliases = { "compound" },         name = "Compound Bow",     speed = 260, drop = 1.15 },
    { pattern = "crossbow",      aliases = { "xbow" },             name = "Crossbow",         speed = 210, drop = 1.25 },
    { pattern = "huntingbow",    aliases = { "bow", "arrow" },     name = "Hunting Bow",      speed = 175, drop = 1.35 },
    { pattern = "pumpshotgun",   aliases = { "pump", "spas" },     name = "Pump Shotgun",     speed = 280, drop = 1.20 },
    { pattern = "doublebarrel",  aliases = { "db" },               name = "Double Barrel",    speed = 270, drop = 1.25 },
    { pattern = "pipeshotgun",   aliases = { "waterpipe", "pipe" }, name = "Waterpipe Shotgun", speed = 240, drop = 1.30 },
}

local function match_gun_profile(tool_name)
    if not tool_name or tool_name == "" then return nil end
    local clean = tool_name:lower():gsub("[_%s%-]", "")
    for i = 1, #GUN_PROFILES do
        local p = GUN_PROFILES[i]
        if clean:find(p.pattern) then return p end
        if p.aliases then for a = 1, #p.aliases do if clean:find(p.aliases[a]) then return p end end end
    end
    return nil
end

-- =========================================================================
-- CACHED STATE & THEME COLORS
-- =========================================================================
local cam_x, cam_y, cam_z = 0, 0, 0
local cached_players = {}
local cached_nodes = {}
local cached_pickups = {}
local cached_dropped = {}
local cached_bodybags = {}
local cached_animals = {}
local cached_npcs = {}
local cached_loot = {}
local cached_local_inventory = { hotbar = {}, grid = {}, wear = {} }
local cached_target_inventory = nil
local cached_local_tool = nil
local cached_local_profile = nil

local col_panel_bg     = { 0.05, 0.05, 0.08, 0.94 }
local col_panel_border = { 0.22, 0.24, 0.32, 1.00 }
local col_panel_header = { 0.10, 0.12, 0.18, 1.00 }
local col_accent       = { 0.40, 0.75, 1.00, 1.00 }
local col_text_main    = { 0.92, 0.94, 0.96, 1.00 }
local col_text_dim     = { 0.55, 0.58, 0.65, 1.00 }
local col_weapon       = { 1.00, 0.40, 0.40, 1.00 }
local col_armor        = { 0.35, 0.85, 1.00, 1.00 }
local col_resource     = { 0.95, 0.80, 0.25, 1.00 }
local col_pack         = { 0.50, 0.90, 0.50, 1.00 }

local frame_dt = 0
local frame_last_t = os.clock()
local notifications = {}
local local_team_cache = nil
local local_team_timer = 0
local _prev_toggles = {}

-- =========================================================================
-- TOAST NOTIFICATIONS
-- =========================================================================
local function push_notification(text, col, duration)
    notifications[#notifications + 1] = {
        text = text, col = col or { 1, 1, 1, 1 }, expire = os.clock() + (duration or 2.5), born = os.clock()
    }
    if #notifications > 8 then table.remove(notifications, 1) end
end

local function render_notifications()
    if not cfg.notifications_enabled then return end
    local now = os.clock()
    local ox, oy = cfg.sw - 16, 52
    local i = 1
    while i <= #notifications do
        local n = notifications[i]
        if now > n.expire then table.remove(notifications, i)
        else
            local remaining = n.expire - now
            local alpha = math.min(1, remaining / 0.4)
            alpha = math.min(alpha, (now - n.born) / 0.15)
            local tw = draw.get_text_size(n.text, 13)
            local bx = ox - tw - 10
            draw.rect_filled(bx - 4, oy - 2, tw + 14, 18, { 0.06, 0.06, 0.10, alpha * 0.88 }, 3)
            draw.text(bx, oy, n.text, { n.col[1], n.col[2], n.col[3], alpha }, 13)
            oy = oy + 22
            i = i + 1
        end
    end
end

-- =========================================================================
-- TEAM CACHE
-- =========================================================================
local function refresh_local_team()
    local now = os.clock()
    if now - local_team_timer < 1.0 then return end
    local_team_timer = now
    pcall(function()
        local ws = game.workspace or game.Workspace
        local tags = ws and ws:find_first_child("FustTeamTags")
        if tags then
            local children = tags:get_children()
            if children and #children > 0 then
                local_team_cache = {}
                for i = 1, #children do local_team_cache[children[i].Name:lower()] = true end
                return
            end
        end
        local lp = game.Players and game.Players.LocalPlayer
        if lp and lp.Team then local_team_cache = { [tostring(lp.Team):lower()] = true } end
    end)
end

local function is_same_team(target_player)
    if not cfg.aim_team_check or not local_team_cache then return false end
    if not target_player then return false end
    local name = (target_player.name or ""):lower()
    if local_team_cache[name] then return true end
    if target_player.char then
        local t = target_player.char:find_first_child("Team")
        if t and local_team_cache[tostring(t.Value):lower()] then return true end
    end
    return false
end

-- =========================================================================
-- VISIBILITY CHECK (RAYCAST LOS)
-- =========================================================================
local function is_target_visible(tx, ty, tz)
    if not cfg.aim_vis_check then return true end
    local ws = game.workspace or game.Workspace
    if not ws then return true end
    local dx = tx - cam_x; local dy = ty - cam_y; local dz = tz - cam_z
    local dist = math.sqrt(dx*dx + dy*dy + dz*dz)
    if dist < 1 then return true end
    if ws.Raycast then
        local origin = Vector3.new(cam_x, cam_y, cam_z)
        local dir = Vector3.new(dx, dy, dz)
        local params = RaycastParams.new()
        params.FilterType = Enum.RaycastFilterType.Exclude
        local ignore = {}
        if game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character then ignore[#ignore + 1] = game.Players.LocalPlayer.Character end
        local cam = ws.CurrentCamera; if cam then ignore[#ignore + 1] = cam end
        params.FilterDescendantsInstances = ignore
        local hit = ws:Raycast(origin, dir, params)
        if hit and hit.Instance then
            local hpos = hit.Position
            local hdx = hpos.X - cam_x; local hdy = hpos.Y - cam_y; local hdz = hpos.Z - cam_z
            local hit_dist = math.sqrt(hdx*hdx + hdy*hdy + hdz*hdz)
            if hit_dist < dist - 2.5 then return false end
        end
    end
    return true
end

-- =========================================================================
-- AIMBOT & ZOOM LOGIC
-- =========================================================================
local function update_aimbot_and_zoom()
    refresh_resolution()
    local sw, sh = cfg.sw, cfg.sh
    local scx, scy = sw * 0.5, sh * 0.5

    -- Detect held tool
    local lp = entity.get_local_player()
    if lp and lp.character then
        local ch = lp.character:get_children()
        if ch then for i = 1, #ch do if ch[i].ClassName == "Tool" then cached_local_tool = ch[i].Name break end end end
    end
    cached_local_profile = match_gun_profile(cached_local_tool)

    -- Projectile speed: auto bow or slider
    local proj_speed = cfg.aim_proj_speed
    if cfg.aim_auto_bow and cached_local_tool then
        local profile = match_gun_profile(cached_local_tool)
        if profile then proj_speed = profile.speed end
    end

    -- Zoom
    if cfg.zoom_enabled then
        local zoom_active = false
        if cfg.zoom_key and cfg.zoom_key > 0 then zoom_active = input.is_key_down(cfg.zoom_key) else zoom_active = true end
        local cam_obj = game.workspace and game.workspace.CurrentCamera
        if cam_obj then
            local cur_fov = cam_obj.FieldOfView or 70
            local target_fov = zoom_active and cfg.zoom_fov or 70
            local step = (target_fov - cur_fov) / math.max(1, cfg.zoom_smooth)
            if math.abs(target_fov - cur_fov) > 0.05 then cam_obj.FieldOfView = cur_fov + step end
        end
    end

    local aim_active = cfg.aim_enabled or cfg.npc_aimbot
    if not aim_active then cached_target_inventory = nil; aim_target_player = nil; return end

    local is_aiming = false
    if input and input.is_key_down then is_aiming = input.is_key_down(cfg.aim_key) end

    local best_fov = cfg.aim_fov
    local best_aim_pos = nil
    local best_target = nil
    local bone_name = { 0="Head", 1="UpperTorso", 2="HumanoidRootPart" }[cfg.aim_bone] or "Head"
    local grav = 196.2
    local ws = game.workspace or game.Workspace
    if ws and ws.Gravity and ws.Gravity > 0 then grav = ws.Gravity end

    -- Evaluate Players
    if cfg.aim_enabled then
        for j = 1, #cached_players do
            local p = cached_players[j]
            if p.hp > 0 and p.root then
                local target_part = (p.parts and p.parts[bone_name]) or p.head or p.root
                if target_part then
                    local ax, ay, az = safe_pos(target_part)
                    if ax then
                        local dx = ax - cam_x; local dy = ay - cam_y; local dz = az - cam_z
                        local dist = math.sqrt(dx*dx + dy*dy + dz*dz)
                        local flight_time = dist / math.max(1, proj_speed)

                        -- Lead prediction
                        if cfg.aim_prediction then
                            local vel = target_part.velocity or target_part.AssemblyLinearVelocity
                            if not vel and p.root then vel = p.root.velocity or p.root.AssemblyLinearVelocity end
                            if vel then
                                local vx = vel.x or vel.X or 0; local vy = vel.y or vel.Y or 0; local vz = vel.z or vel.Z or 0
                                ax = ax + (vx * flight_time)
                                ay = ay + (vy * flight_time)
                                az = az + (vz * flight_time)
                            end
                        end

                        -- Drop compensation
                        if cfg.aim_drop_comp then
                            local drop_comp = 0.5 * grav * (flight_time * flight_time)
                            ay = ay + drop_comp
                        end

                        -- Team/Vis filters
                        local aim_skip = false
                        if cfg.aim_team_check then aim_skip = is_same_team(p) end
                        if not aim_skip and cfg.aim_vis_check then aim_skip = not is_target_visible(ax, ay, az) end

                        if not aim_skip then
                            local sx, sy, vis = utility.world_to_screen(ax, ay, az)
                            if vis then
                                local fdx = sx - scx; local fdy = sy - scy
                                local fov_dist = math.sqrt(fdx*fdx + fdy*fdy)
                                if fov_dist < best_fov then
                                    best_fov = fov_dist
                                    best_aim_pos = { x=ax, y=ay, z=az, sx=sx, sy=sy }
                                    best_target = p
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    -- Evaluate NPCs
    if cfg.aim_target_npcs or cfg.npc_aimbot then
        for j = 1, #cached_npcs do
            local n = cached_npcs[j]
            if n.inst and n.hp > 0 then
                local target_part = nil
                if not n.is_heli then
                    if bone_name == "Head" then target_part = (n.parts and n.parts.Head) or n.head or n.inst:find_first_child("Head") or n.root
                    elseif bone_name == "UpperTorso" then target_part = (n.parts and n.parts.UpperTorso) or n.torso or n.inst:find_first_child("UpperTorso") or n.root
                    else target_part = (n.parts and n.parts.HumanoidRootPart) or n.root or (n.parts and n.parts.UpperTorso) or n.torso or n.head end
                else target_part = n.root or (n.inst and n.inst.PrimaryPart) end

                if target_part then
                    local ax, ay, az = safe_pos(target_part)
                    if ax then
                        local dx = ax - cam_x; local dy = ay - cam_y; local dz = az - cam_z
                        local dist = math.sqrt(dx*dx + dy*dy + dz*dz)
                        local flight_time = dist / math.max(1, proj_speed)

                        if cfg.aim_prediction then
                            local vel = target_part.velocity or target_part.AssemblyLinearVelocity
                            if not vel and n.root then vel = n.root.velocity or n.root.AssemblyLinearVelocity end
                            if vel then
                                local vx = vel.x or vel.X or 0; local vy = vel.y or vel.Y or 0; local vz = vel.z or vel.Z or 0
                                ax = ax + (vx * flight_time); ay = ay + (vy * flight_time); az = az + (vz * flight_time)
                            end
                        end

                        if cfg.aim_drop_comp then
                            local drop_comp = 0.5 * grav * (flight_time * flight_time)
                            ay = ay + drop_comp
                        end

                        local aim_skip = cfg.aim_vis_check and not is_target_visible(ax, ay, az)
                        if not aim_skip then
                            local sx, sy, vis = utility.world_to_screen(ax, ay, az)
                            if vis then
                                local fdx = sx - scx; local fdy = sy - scy
                                local fov_dist = math.sqrt(fdx*fdx + fdy*fdy)
                                if fov_dist < best_fov then
                                    best_fov = fov_dist
                                    best_aim_pos = { x=ax, y=ay, z=az, sx=sx, sy=sy }
                                    best_target = n
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    aim_target_player = best_target

    -- Scan target inventory
    if best_target and cfg.inv_enabled and (cfg.inv_mode == 0 or cfg.inv_mode == 2) then
        cached_target_inventory = scan_target_full_inventory(best_target)
    elseif cfg.inv_mode == 0 then cached_target_inventory = nil end

    -- Body bag viewer candidate
    if cfg.bb_viewer_enabled then
        local best_bb, best_dist = nil, 999999
        if cfg.bb_viewer_mode == 0 then -- Near crosshair
            for b = 1, #cached_bodybags do
                local bb = cached_bodybags[b]
                local sx, sy, vis = utility.world_to_screen(bb.x, bb.y, bb.z)
                if vis then
                    local bx = sx - scx; local by = sy - scy
                    local fd = math.sqrt(bx*bx + by*by)
                    if fd < 220 and fd < best_dist then best_dist = fd; best_bb = bb end
                end
            end
        else -- Always closest
            for b = 1, #cached_bodybags do
                local bb = cached_bodybags[b]
                local dx = bb.x - cam_x; local dy = bb.y - cam_y; local dz = bb.z - cam_z
                local d = math.sqrt(dx*dx + dy*dy + dz*dz) * 0.28
                if d <= 50 and d < best_dist then best_dist = d; best_bb = bb end
            end
        end
        if not best_bb then
            if cfg.bb_viewer_mode == 0 then
                for b = 1, #cached_loot do
                    local li = cached_loot[b]; local sx, sy, vis = utility.world_to_screen(li.x, li.y, li.z)
                    if vis then
                        local bx = sx - scx; local by = sy - scy
                        local fd = math.sqrt(bx*bx + by*by)
                        if fd < 220 and fd < best_dist then best_dist = fd; best_bb = li end
                    end
                end
            else
                for b = 1, #cached_loot do
                    local li = cached_loot[b]; local dx = li.x - cam_x; local dy = li.y - cam_y; local dz = li.z - cam_z
                    local d = math.sqrt(dx*dx + dy*dy + dz*dz) * 0.28
                    if d <= 50 and d < best_dist then best_dist = d; best_bb = li end
                end
            end
        end
        if best_bb then cached_bodybag_inventory = scan_bodybag_inventory(best_bb) else cached_bodybag_inventory = nil end
    else cached_bodybag_inventory = nil end

    -- Apply aim movement
    if best_aim_pos and is_aiming then
        local dx = best_aim_pos.sx - scx; local dy = best_aim_pos.sy - scy
        local smooth = math.max(1, cfg.aim_smooth)
        if camera and camera.look_at then pcall(function() camera.look_at(best_aim_pos.x, best_aim_pos.y, best_aim_pos.z, smooth) end)
        elseif utility and utility.mouse_move then pcall(function() utility.mouse_move(dx/smooth, dy/smooth) end)
        elseif input and input.mouse_move then pcall(function() input.mouse_move(dx/smooth, dy/smooth) end) end
    end
end

-- =========================================================================
-- GUN MODS: RCS, RAPID FIRE, TRIGGERBOT
-- =========================================================================
local last_rcs_t = 0; local last_rapid_t = 0; last_trigger_t = 0

local function update_gun_mods()
    if not (cfg.gun_rcl_enabled or cfg.gun_rapid or cfg.gun_trigger) then return end
    local now = os.clock(); local is_lmb = is_mouse1_pressed()

    -- RCS
    if cfg.gun_rcl_enabled and is_lmb then
        if now - last_rcs_t >= 0.032 then
            last_rcs_t = now
            local base_pull = 6.2
            local p = match_gun_profile(cached_local_tool)
            if p then
                local pat = p.pattern or ""
                if pat:find("ak") or pat:find("sar") or pat:find("rifle") then base_pull = 8.5
                elseif pat:find("smg") or pat:find("thompson") then base_pull = 5.6 end
            end
            local pull_y = (cfg.gun_recl_pct / 100.0) * base_pull
            if utility and utility.mouse_move then pcall(function() utility.mouse_move(0, pull_y) end)
            elseif input and input.mouse_move then pcall(function() input.mouse_move(0, pull_y) end) end
        end
    end

    -- Rapid Fire
    if cfg.gun_rapid and is_lmb then
        if now - last_rapid_t >= (cfg.gun_rapid_delay or 120) / 1000.0 then
            last_rapid_t = now; do_click_mouse1()
        end
    end

    -- Triggerbot
    if cfg.gun_trigger then
        local sw = cached_sw or 1920; local sh = cached_sh or 1080; local scx = sw * 0.5; local scy = sh * 0.5
        local on_target = false

        -- Check players
        if not on_target and cached_players then
            for i = 1, #cached_players do
                local p = cached_players[i]; if p.hp > 0 and not p.is_sleeping then
                    local skip = false
                    if cfg.aim_team_check and p.is_team then skip = true end
                    if not skip then
                        local parts = { p.head, p.root }
                        for k = 1, #parts do
                            local part = parts[k]; if part then
                                local px, py, pz = safe_pos(part)
                                if px then
                                    local sx, sy, vis = utility.world_to_screen(px, py, pz)
                                    if vis then
                                        local fdx = sx - scx; local fdy = sy - scy
                                        local d_sq = fdx*fdx + fdy*fdy
                                        local d_studs = math.sqrt((px-cam_x)^2 + (py-cam_y)^2 + (pz-cam_z)^2)
                                        local tol = clamp(1300 / math.max(15, d_studs), 15, 40)
                                        if d_sq <= (tol*tol) then
                                            if not cfg.aim_vis_check or is_target_visible(px, py, pz) then on_target = true; break end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
                if on_target then break end
            end
        end

        -- Check NPCs
        if not on_target and cfg.gun_trigger_npcs and cached_npcs then
            for i = 1, #cached_npcs do
                local n = cached_npcs[i]; if n.hp > 0 then
                    local parts = { n.head, n.root }
                    for k = 1, #parts do
                        local part = parts[k]; if part then
                            local px, py, pz = safe_pos(part)
                            if px then
                                local sx, sy, vis = utility.world_to_screen(px, py, pz)
                                if vis then
                                    local fdx = sx - scx; local fdy = sy - scy
                                    local d_sq = fdx*fdx + fdy*fdy
                                    local d_studs = math.sqrt((px-cam_x)^2 + (py-cam_y)^2 + (pz-cam_z)^2)
                                    local tol = clamp(1300 / math.max(15, d_studs), 15, 40)
                                    if d_sq <= (tol*tol) then
                                        if not cfg.aim_vis_check or is_target_visible(px, py, pz) then on_target = true; break end
                                    end
                                end
                            end
                        end
                    end
                end
                if on_target then break end
            end
        end

        if on_target then
            if now - last_trigger_t >= (cfg.gun_trigger_delay or 25) / 1000.0 then
                last_trigger_t = now; do_click_mouse1()
            end
        end
    end
end

-- =========================================================================
-- PLAYER ESP RENDERING
-- =========================================================================
local SKELETON_BONES = {
    { "Head", "UpperTorso" }, { "UpperTorso", "LowerTorso" },
    { "UpperTorso", "LeftUpperArm" }, { "LeftUpperArm", "LeftLowerArm" }, { "LeftLowerArm", "LeftHand" },
    { "UpperTorso", "RightUpperArm" }, { "RightUpperArm", "RightLowerArm" }, { "RightLowerArm", "RightHand" },
    { "LowerTorso", "LeftUpperLeg" }, { "LeftUpperLeg", "LeftLowerLeg" }, { "LeftLowerLeg", "LeftFoot" },
    { "LowerTorso", "RightUpperLeg" }, { "RightUpperLeg", "RightLowerLeg" }, { "RightLowerLeg", "RightFoot" }
}

local R6_BONES = { { "Head", "Torso" }, { "Torso", "Left Arm" }, { "Torso", "Right Arm" },
    { "Torso", "Left Leg" }, { "Torso", "Right Leg" } }

local function render_player_esp(p)
    if not p or not p.root then return end
    local rx, ry, rz = safe_pos(p.root)
    if not rx then return end
    local dx = rx - cam_x; local dy = ry - cam_y; local dz = rz - cam_z
    local d_sq = dx*dx + dy*dy + dz*dz
    if d_sq > cfg.p_max_dist * cfg.p_max_dist then return end

    local dist_m = math.floor(math.sqrt(d_sq) * 0.28)
    local min_x, min_y, max_x, max_y = 999999, 999999, -999999, -999999
    local has_point = false

    -- Skeleton
    if cfg.p_skel and p.parts then
        local is_r15 = p.parts["UpperTorso"] ~= nil
        local bones = is_r15 and SKELETON_BONES or R6_BONES
        local scol = cfg.p_skel_col
        for b = 1, #bones do
            local pair = bones[b]; local p1 = p.parts[pair[1]]; local p2 = p.parts[pair[2]]
            if p1 and p2 then
                local x1, y1, z1 = safe_pos(p1); local x2, y2, z2 = safe_pos(p2)
                if x1 and x2 then
                    local s1x, s1y, v1 = utility.world_to_screen(x1, y1, z1)
                    local s2x, s2y, v2 = utility.world_to_screen(x2, y2, z2)
                    if v1 and v2 then
                        if cfg.p_skel then draw.line(s1x, s1y, s2x, s2y, scol, 1) end
                        has_point = true
                        min_x = math.min(min_x, s1x, s2x); max_x = math.max(max_x, s1x, s2x)
                        min_y = math.min(min_y, s1y, s2y); max_y = math.max(max_y, s1y, s2y)
                    end
                end
            end
        end
    end

    -- Fallback box
    local rsx, rsy, rvis = utility.world_to_screen(rx, ry, rz)
    if not has_point then
        if not rvis then return end
        local sc = clamp(900 / math.max(1, dist_m), 14, 110)
        min_x = rsx - sc * 0.45; max_x = rsx + sc * 0.45
        min_y = rsy - sc * 0.85; max_y = rsy + sc * 0.85
        has_point = true
    end

    if not has_point then return end
    local bx = min_x - 3; local by = min_y - 5; local bw = (max_x - min_x) + 6; local bh = (max_y - min_y) + 10
    if bw < 4 or bh < 4 then return end

    -- Chams
    if cfg.p_chams then draw.rect_filled(bx, by, bw, bh, cfg.p_chams_col) end

    -- Bounding Box
    if cfg.p_box then draw.rect(bx, by, bw, bh, cfg.p_box_col, 0, 1) end

    -- Health Bar
    if cfg.p_hp then
        local bar_w = 3; local bar_x = bx - bar_w - 3
        draw.rect_filled(bar_x - 1, by - 1, bar_w + 2, bh + 2, { 0.05, 0.05, 0.05, 0.8 }, 1)
        local hp_pct = clamp(p.hp / math.max(1, p.max_hp), 0, 1)
        local r_hp, g_hp = 2.0*(1-hp_pct), 2.0*hp_pct
        local f_h = math.floor(bh * hp_pct)
        draw.rect_filled(bar_x, by + (bh - f_h), bar_w, f_h, { r_hp, g_hp, 0.1, 1.0 }, 1)
        if hp_pct < 1.0 then
            local hp_txt = tostring(math.floor(p.hp))
            draw.text(bar_x - draw.get_text_size(hp_txt, 10) - 2, by + (bh - f_h) - 4, hp_txt, { 1, 1, 1, 0.9 }, 10)
        end
    end

    -- Top Name & Distance
    local top_parts = {}
    if cfg.p_name then top_parts[#top_parts+1] = p.name end
    if cfg.p_dist then top_parts[#top_parts+1] = "["..tostring(dist_m).."m]" end
    if #top_parts > 0 then
        local top_txt = table.concat(top_parts, " ")
        local tw = draw.get_text_size(top_txt, cfg.p_font)
        draw.text(bx + (bw - tw) * 0.5, by - cfg.p_font - 4, top_txt, { 1, 1, 1, 1 }, cfg.p_font)
    end

    -- Held Item
    if cfg.p_held and p.held then
        local h_lbl = "[Held: "..p.held.."]"; local htw = draw.get_text_size(h_lbl, cfg.p_font - 1)
        draw.text(bx + (bw - htw) * 0.5, by + bh + 3, h_lbl, cfg.p_held_col, cfg.p_font - 1)
    end

    -- Tracer
    if cfg.p_tracers then
        local rsx, rsy, rvis = utility.world_to_screen(rx, ry, rz)
        if rvis then draw.line(cfg.sw*0.5, cfg.sh, rsx, rsy, { cfg.p_tracers_col[1], cfg.p_tracers_col[2], cfg.p_tracers_col[3], cfg.p_tracers_col[4] }, 1) end
    end
end

-- =========================================================================
-- ANIMALS ESP
-- =========================================================================
local function render_animals()
    if not cfg.a_enabled then return end
    local sw, sh = utility.get_screen_size()
    local tox, toy = sw * 0.5, sh
    for j = 1, #cached_animals do
        local an = cached_animals[j]
        local dx = an.x - cam_x; local dy = an.y - cam_y; local dz = an.z - cam_z
        local d_sq = dx*dx + dy*dy + dz*dz
        if d_sq <= cfg.a_max_sq then
            local sx, sy, vis = utility.world_to_screen(an.x, an.y, an.z)
            if vis then
                local col = an.color
                draw.circle_filled(sx, sy, 3, col)
                local parts = {}
                if cfg.a_name then parts[#parts+1] = an.name end
                if cfg.a_dist then parts[#parts+1] = "["..tostring(math.floor(math.sqrt(d_sq)*0.28)).."m]" end
                if #parts > 0 then
                    local txt = table.concat(parts, " ")
                    local tw = draw.get_text_size(txt, cfg.a_font)
                    draw.text(sx - tw*0.5, sy - cfg.a_font - 3, txt, col, cfg.a_font)
                end
                if cfg.a_hp then
                    local hp_pct = clamp(an.hp / math.max(1, an.max_hp), 0, 1)
                    local bar_w = 26; local bar_h = 3
                    local bx = sx - bar_w*0.5; local by = sy + 5
                    draw.rect_filled(bx, by, bar_w, bar_h, { 0.1, 0.1, 0.1, 0.8 })
                    draw.rect_filled(bx, by, bar_w*hp_pct, bar_h, { 1-hp_pct, hp_pct, 0.2, 1 })
                end
                if cfg.a_tracers then draw.line(tox, toy, sx, sy, { col[1], col[2], col[3], 0.30 }, 1) end
            end
        end
    end
end

-- =========================================================================
-- NPCs ESP
-- =========================================================================
local function render_npcs()
    if not cfg.npcs_enabled then return end
    local sw, sh = utility.get_screen_size()
    local tox, toy = sw * 0.5, sh
    for j = 1, #cached_npcs do
        local n = cached_npcs[j]
        local dx = n.x - cam_x; local dy = n.y - cam_y; local dz = n.z - cam_z
        local d_sq = dx*dx + dy*dy + dz*dz
        if d_sq <= cfg.npc_max_sq then
            local sx, sy, vis = utility.world_to_screen(n.x, n.y, n.z)
            if vis then
                local col = n.color
                local parts = {}
                if cfg.npc_name then parts[#parts+1] = n.name end
                if cfg.npc_dist then parts[#parts+1] = "["..tostring(math.floor(math.sqrt(d_sq)*0.28)).."m]" end
                if #parts > 0 then
                    local txt = table.concat(parts, " ")
                    local tw = draw.get_text_size(txt, cfg.npc_font)
                    draw.text(sx - tw*0.5, sy - cfg.npc_font - 4, txt, col, cfg.npc_font)
                end
                if cfg.npc_skel and not n.is_heli then
                    local scol = cfg.npc_skel_col
                    for b = 1, #SKELETON_BONES do
                        local pair = SKELETON_BONES[b]
                        local p1 = n.parts[pair[1]]; local p2 = n.parts[pair[2]]
                        if p1 and p2 then
                            local x1,y1,z1 = safe_pos(p1); local x2,y2,z2 = safe_pos(p2)
                            if x1 and x2 then
                                local s1x,s1y,v1 = utility.world_to_screen(x1,y1,z1)
                                local s2x,s2y,v2 = utility.world_to_screen(x2,y2,z2)
                                if v1 and v2 then draw.line(s1x,s1y,s2x,s2y,scol,1) end
                            end
                        end
                    end
                end
                if cfg.npc_hp then
                    local hp_pct = clamp(n.hp / math.max(1, n.max_hp), 0, 1)
                    local bar_w = n.is_heli and 50 or 30; local bar_h = 3
                    local bx = sx - bar_w*0.5; local by = sy + 6
                    draw.rect_filled(bx, by, bar_w, bar_h, { 0.1, 0.1, 0.1, 0.8 })
                    draw.rect_filled(bx, by, bar_w*hp_pct, bar_h, { 1-hp_pct, hp_pct, 0.2, 1 })
                end
                if cfg.npc_tracers then draw.line(tox, toy, sx, sy, { col[1], col[2], col[3], 0.35 }, 1) end
            end
        end
    end
end

-- =========================================================================
-- NODES, PICKUPS, DROPPED, BODY BAGS, LOOT
-- =========================================================================
local function render_nodes() if not cfg.n_enabled then return end
    local sw, sh = utility.get_screen_size()
    local out, drawn = {}, 0
    for j = 1, #cached_nodes do
        local n = cached_nodes[j]; local dx = n.x - cam_x; local dy = n.y - cam_y; local dz = n.z - cam_z
        local d_sq = dx*dx + dy*dy + dz*dz
        if d_sq <= cfg.n_max_sq then
            local sx, sy, vis = utility.world_to_screen(n.x, n.y, n.z)
            if vis then
                drawn = drawn + 1; if drawn > 120 then break end
                local col = n.color
                draw.circle_filled(sx, sy, 3, col)
                local dist_str = cfg.n_dist and " ["..tostring(math.floor(math.sqrt(d_sq)*0.28)).."m]" or ""
                local txt = n.name.." Node"..dist_str
                local tw = draw.get_text_size(txt, cfg.n_font)
                draw.text(sx - tw*0.5, sy - cfg.n_font - 3, txt, col, cfg.n_font)
                if cfg.n_tracers then draw.line(sw*0.5, sh, sx, sy, { col[1], col[2], col[3], 0.25 }, 1) end
            end
        end
    end
end

local function render_pickups() if not cfg.pk_enabled then return end
    local drawn_pk = 0
    for j = 1, #cached_pickups do
        if drawn_pk >= 100 then break end
        local pk = cached_pickups[j]; local dx = pk.x - cam_x; local dy = pk.y - cam_y; local dz = pk.z - cam_z
        local d_sq = dx*dx + dy*dy + dz*dz
        if d_sq <= cfg.pk_max_sq then
            local sx, sy, vis = utility.world_to_screen(pk.x, pk.y, pk.z)
            if vis then
                drawn_pk = drawn_pk + 1
                local col = pk.color
                local txt = pk.name
                if cfg.pk_dist then txt = txt.." ["..tostring(math.floor(math.sqrt(d_sq)*0.28)).."m]" end
                local tw = draw.get_text_size(txt, cfg.pk_font)
                draw.text(sx - tw*0.5, sy - 6, txt, col, cfg.pk_font)
            end
        end
    end
end

local function render_dropped() if not cfg.d_enabled then return end
    local col = cfg.d_col; local drawn_d = 0
    for j = 1, #cached_dropped do
        if drawn_d >= 100 then break end
        local d = cached_dropped[j]; local dx = d.x - cam_x; local dy = d.y - cam_y; local dz = d.z - cam_z
        local d_sq = dx*dx + dy*dy + dz*dz
        if d_sq <= cfg.d_max_sq then
            local sx, sy, vis = utility.world_to_screen(d.x, d.y, d.z)
            if vis then
                drawn_d = drawn_d + 1
                local txt = d.name
                if cfg.d_dist then txt = txt.." ["..tostring(math.floor(math.sqrt(d_sq)*0.28)).."m]" end
                local tw = draw.get_text_size(txt, cfg.d_font)
                draw.text(sx - tw*0.5, sy - 6, txt, col, cfg.d_font)
                if cfg.d_tracers then draw.line(sw*0.5, sh, sx, sy, { col[1], col[2], col[3], 0.35 }, 1) end
            end
        end
    end
end

local function render_bodybags() if not cfg.bb_enabled then return end
    local sw, sh = utility.get_screen_size()
    local drawn_bb = 0
    for j = 1, #cached_bodybags do
        if drawn_bb >= 100 then break end
        local bb = cached_bodybags[j]; local dx = bb.x - cam_x; local dy = bb.y - cam_y; local dz = bb.z - cam_z
        local d_sq = dx*dx + dy*dy + dz*dz
        if d_sq <= cfg.bb_max_sq then
            local sx, sy, vis = utility.world_to_screen(bb.x, bb.y, bb.z)
            if vis then
                drawn_bb = drawn_bb + 1
                local col = bb.color or cfg.bb_col
                draw.circle_filled(sx, sy, 3.5, col)
                local dist_str = cfg.bb_dist and " ["..tostring(math.floor(math.sqrt(d_sq)*0.28)).."m]" or ""
                local txt = bb.name..dist_str
                local tw = draw.get_text_size(txt, cfg.bb_font)
                draw.text(sx - tw*0.5, sy - cfg.bb_font - 3, txt, col, cfg.bb_font)
                if cfg.bb_tracers then draw.line(sw*0.5, sh, sx, sy, { col[1], col[2], col[3], 0.35 }, 1) end
            end
        end
    end
end

local function render_loot() if not cfg.loot_enabled then return end
    local sw, sh = cached_sw, cached_sh; local tox, toy = sw*0.5, sh; local drawn = 0
    for j = 1, #cached_loot do
        if drawn >= 120 then break end
        local item = cached_loot[j]
        local show = false
        if item.category == "barrel" and cfg.loot_show_barrels then show = true
        elseif item.category == "crate" and cfg.loot_show_crates then show = true
        elseif item.category == "military" and cfg.loot_show_military then show = true
        end
        if show then
            local dx = item.x - cam_x; local dy = item.y - cam_y; local dz = item.z - cam_z
            local d_sq = dx*dx + dy*dy + dz*dz
            if d_sq <= cfg.loot_max_sq then
                local sx, sy, vis = utility.world_to_screen(item.x, item.y, item.z)
                if vis then
                    drawn = drawn + 1
                    local col = item.color or { 0.9, 0.7, 0.2, 1 }
                    draw.circle_filled(sx, sy, 3.0, col)
                    local txt = item.name
                    if cfg.loot_dist then txt = txt.." ["..tostring(math.floor(math.sqrt(d_sq)*0.28)).."m]" end
                    local tw = draw.get_text_size(txt, cfg.loot_font)
                    draw.text(sx - tw*0.5, sy - cfg.loot_font - 3, txt, col, cfg.loot_font)
                    if cfg.loot_tracers then draw.line(tox, toy, sx, sy, { col[1], col[2], col[3], 0.35 }, 1) end
                end
            end
        end
    end
end

-- =========================================================================
-- INVENTORY RENDERER
-- =========================================================================
local function render_inventory_panel()
    if not cfg.inv_enabled then return end
    local mode = cfg.inv_mode
    local px, py, pw = cfg.ui_x, cfg.ui_y, cfg.ui_w
    local ly = py + 32

    -- Dynamic height calculation
    local entries = 0
    if (mode == 0 or mode == 2) and cached_target_inventory then entries = entries + 1
    elseif mode == 1 then entries = entries + 2 end
    if (mode == 0 or mode == 2) and cfg.inv_show_weapons and cached_target_inventory then
        entries = entries + 2; if #cached_target_inventory.holsters > 0 then entries = entries + 1 + #cached_target_inventory.holsters end
    end
    if (mode == 0 or mode == 2) and cfg.inv_show_wear and #cached_target_inventory and #cached_target_inventory.wear > 0 then entries = entries + 1 + #cached_target_inventory.wear end
    if (mode == 0 or mode == 2) and cfg.inv_show_pack and cached_target_inventory and cached_target_inventory.backpack then entries = entries + 2 end
    if #cached_target_inventory and #cached_target_inventory.tools > 0 then entries = entries + 1 + #cached_target_inventory.tools end

    if mode == 1 or mode == 2 then
        entries = entries + 2
        if #cached_local_inventory.hotbar > 0 then entries = entries + 2 end
        if cfg.inv_show_grid and #cached_local_inventory.grid > 0 then entries = entries + 1 + #cached_local_inventory.grid end
        if cfg.inv_show_wear and #cached_local_inventory.wear > 0 then entries = entries + 1 + #cached_local_inventory.wear end
    end

    local panel_h = math.max(80, 36 + entries * 16 + 12)

    -- Draw window
    draw.rect_filled(px, py, pw, panel_h, col_panel_bg, 4)
    draw.rect(px, py, pw, panel_h, col_panel_border, 4, 1)

    -- Title bar
    draw.rect_filled(px, py, pw, 26, col_panel_header, 4)
    draw.line(px, py + 26, px + pw, py + 26, col_panel_border, 1)
    draw.text(px + 10, py + 6, "Inventory Viewer", col_accent, 12)
    local drag_hint = ":: drag"
    local dhw = draw.get_text_size(drag_hint, 10)
    draw.text(px + pw - dhw - 8, py + 8, drag_hint, col_text_dim, 10)

    -- Target player inventory
    if (mode == 0 or mode == 2) then
        if cached_target_inventory then
            -- Health
            local hp_pct = clamp(cached_target_inventory.hp / math.max(1, cached_target_inventory.max_hp), 0, 1)
            draw.rect_filled(px + 8, ly, pw - 16, 4, { 0.15, 0.15, 0.15, 1 }, 1)
            draw.rect_filled(px + 8, ly, (pw - 16) * hp_pct, 4, { (1-hp_pct), hp_pct, 0.2, 1 }, 1)
            ly = ly + 9

            -- Equipped
            if cfg.inv_show_weapons then
                ly = ly + 16; draw.text(px + 14, ly, (cached_target_inventory.equipped or "None"), col_weapon, 11)
                ly = ly + 18
                if #cached_target_inventory.holsters > 0 then
                    draw.text(px + 14, ly, "Holstered Weapons:", col_weapon, 11); ly = ly + 16
                    for h = 1, #cached_target_inventory.holsters do
                        draw.text(px + 16, ly, "- "..cached_target_inventory.holsters[h], col_weapon, 11); ly = ly + 14
                    end
                end
            end

            -- Worn gear with tiers
            if cfg.inv_show_wear and #cached_target_inventory.wear > 0 then
                ly = ly + 16; draw.text(px + 14, ly, "Worn Gear & Armor Tiers:", col_armor, 11); ly = ly + 16
                for w = 1, #cached_target_inventory.wear do
                    local item = cached_target_inventory.wear[w]
                    local info = get_armor_info(item.display or item.name)
                    local lbl = "["..(info and info.slot or "?")..": "..(info and info.tier or "T0").."] "..(info and info.display or item.display or "Unknown")
                    local col = info and info.color or col_armor
                    draw.text(px + 16, ly, lbl, col, 11); ly = ly + 14
                end
            end

            -- Backpack
            if cfg.inv_show_pack and cached_target_inventory.backpack then
                ly = ly + 16; draw.text(px + 14, ly, "[Pack] "..cached_target_inventory.backpack, col_pack, 11); ly = ly + 16
            end

            -- Stored tools
            if #cached_target_inventory.tools > 0 then
                ly = ly + 16; draw.text(px + 14, ly, "Stored Tools:", col_weapon, 11); ly = ly + 16
                for t = 1, #cached_target_inventory.tools do
                    draw.text(px + 16, ly, "- "..cached_target_inventory.tools[t], col_weapon, 11); ly = ly + 14
                end
            end
        else
            draw.text(px + 14, ly + 8, "No player near crosshair", col_text_dim, 11); ly = ly + 26
        end
    end

    -- Local player inventory
    if (mode == 1 or mode == 2) then
        -- Hotbar
        ly = ly + 16; draw.text(px + 14, ly, "HOTBAR (SLOTS 1-6)", col_weapon, 11); ly = ly + 16
        if #cached_local_inventory.hotbar > 0 then
            for i = 1, #cached_local_inventory.hotbar do
                local it = cached_local_inventory.hotbar[i]
                local info = get_armor_info(it.name)
                local label = info and info.display or it.name
                local item_col = info and info.color or col_weapon
                draw.text(px + 16, ly, tostring(it.slot)..": "..label, item_col, 11); ly = ly + 14
            end
        else draw.text(px + 14, ly, "No items in hotbar", col_text_dim, 11); ly = ly + 14 end

        -- Main grid
        if cfg.inv_show_grid then
            ly = ly + 16; draw.text(px + 14, ly, "MAIN INVENTORY (SLOTS 7-36)", col_resource, 11); ly = ly + 16
            if #cached_local_inventory.grid > 0 then
                for i = 1, #cached_local_inventory.grid do
                    local it = cached_local_inventory.grid[i]
                    local info = get_armor_info(it.name)
                    local label = info and info.display or it.name
                    local item_col = info and info.color or col_resource
                    draw.text(px + 16, ly, tostring(it.slot)..": "..label, item_col, 11); ly = ly + 14
                end
            else draw.text(px + 14, ly, "Main inventory is empty", col_text_dim, 11); ly = ly + 14 end
        end

        -- Worn gear
        if cfg.inv_show_wear and #cached_local_inventory.wear > 0 then
            ly = ly + 16; draw.text(px + 14, ly, "MY WORN GEAR & ARMOR TIERS", col_armor, 11); ly = ly + 16
            for i = 1, #cached_local_inventory.wear do
                local it = cached_local_inventory.wear[i]
                local info = get_armor_info(it.name)
                local lbl = info and "["..info.slot..": "..info.tier.."] "..info.display or "["..it.slot_name.."] "..it.name
                local col = info and info.color or col_armor
                draw.text(px + 16, ly, lbl, col, 11); ly = ly + 14
            end
        end
    end
end

-- =========================================================================
-- BODY BAG VIEWER PANEL
-- =========================================================================
local function render_bodybag_viewer_panel()
    if not cfg.bb_viewer_enabled then return end
    if not cached_bodybag_inventory then return end
    local inv = cached_bodybag_inventory
    local px, py, pw = cfg.bb_viewer_panel_x or 380, cfg.bb_viewer_panel_y or 180, cfg.bb_viewer_panel_w or 300
    local ly = py + 34

    local total_h = 42
    if inv.hp then total_h = total_h + 16 end
    if inv.equipped then total_h = total_h + 30 end
    if #inv.holsters > 0 then total_h = total_h + 20 + #inv.holsters * 15 end
    if #inv.wear > 0 then total_h = total_h + 20 + #inv.wear * 15 end
    if inv.backpack then total_h = total_h + 30 end
    if #inv.items > 0 then total_h = total_h + 20 + #inv.items * 15 end

    draw.rect_filled(px, py, pw, total_h, col_panel_bg, 6)
    draw.rect(px, py, pw, total_h, col_panel_border, 1, 6)
    draw.rect_filled(px, py, pw, 26, col_panel_header, 6)
    draw.line(px, py + 26, px + pw, py + 26, col_panel_border, 1)
    draw.text(px + 10, py + 6, inv.name.." ["..tostring(inv.distance_m).."m]", col_accent, 12)

    -- Health
    if inv.hp and inv.max_hp then
        local hp_pct = clamp(inv.hp / math.max(1, inv.max_hp), 0, 1)
        draw.rect_filled(px + 8, ly, pw - 16, 4, { 0.15, 0.15, 0.15, 1 }, 1)
        draw.rect_filled(px + 8, ly, (pw - 16) * hp_pct, 4, { (1-hp_pct), hp_pct, 0.2, 1 }, 1)
        ly = ly + 9
    end

    -- Equipped
    if inv.equipped then
        ly = ly + 16; draw.text(px + 14, ly, "EQUIPPED: "..inv.equipped, col_weapon, 11); ly = ly + 16
    end

    -- Holstered
    if #inv.holsters > 0 then
        ly = ly + 16; draw.text(px + 14, ly, "HOLSTERED WEAPONS:", col_weapon, 11); ly = ly + 16
        for h = 1, #inv.holsters do draw.text(px + 16, ly, "- "..inv.holsters[h], col_weapon, 11); ly = ly + 14 end
    end

    -- Worn gear
    if #inv.wear > 0 then
        ly = ly + 16; draw.text(px + 14, ly, "WORN GEAR & ARMOR:", col_armor, 11); ly = ly + 16
        for w = 1, #inv.wear do
            local item = inv.wear[w]
            local info = get_armor_info(item.display or item.name)
            local lbl = info and "["..info.slot..": "..info.tier.."] "..info.display or "["..item.slot.."] "..item.name
            local col = info and info.color or col_armor
            draw.text(px + 16, ly, lbl, col, 11); ly = ly + 14
        end
    end

    -- Backpack
    if inv.backpack then
        ly = ly + 16; draw.text(px + 14, ly, "[Pack] "..inv.backpack, col_pack, 11); ly = ly + 16
    end

    -- Items
    if #inv.items > 0 then
        ly = ly + 16; draw.text(px + 14, ly, "LOOT CONTENTS:", col_resource, 11); ly = ly + 16
        for t = 1, #inv.items do draw.text(px + 16, ly, "- "..inv.items[t], col_resource, 11); ly = ly + 14 end
    end
end

-- =========================================================================
-- MAIN ON_FRAME HOOK
-- =========================================================================
function on_frame()
    cached_sw, cached_sh = utility.get_screen_size()
    local now = os.clock()
    frame_dt = now - frame_last_t; frame_last_t = now
    if frame_dt <= 0 then frame_dt = 0.001 end

    -- Refresh config from menu values
    pcall(refresh_menu_config)
    pcall(refresh_local_team)
    pcall(update_camera)

    -- Background scanners (runs every frame via thread)
    if cfg.p_enabled then scan_players_task() end
    scan_animals_task(); scan_npcs_task(); scan_bodybags_task()
    scan_nodes_task(); scan_pickups_task(); scan_loot_task(); scan_dropped_task()
    scan_local_inventory_task()

    -- Render ESP
    if cfg.p_enabled then
        for i = 1, #cached_players do render_player_esp(cached_players[i]) end
    end
    render_animals(); render_npcs(); render_bodybags(); render_loot()
    render_dropped(); render_nodes(); render_pickups(); render_all_offscreen_arrows()
    render_inventory_panel(); render_bodybag_viewer_panel()
    update_aimbot_and_zoom(); pcall(update_gun_mods)
    render_aim_target_highlight(); render_watermark(); render_notifications()
end

-- =========================================================================
-- CONFIG REFRESH FROM MENU
-- =========================================================================
function refresh_menu_config()
    -- Read all menu values into cfg table (abbreviated for brevity)
    -- Full implementation would read each menu element similar to the previous script
    cfg.aim_enabled = menu.get("aim_enabled") or false
    local k = menu.get_key and menu.get_key("aim_enabled")
    if k and k > 0 then cfg.aim_key = k end
    cfg.aim_fov_draw = menu.get("aim_draw_fov") or false
    cfg.aim_fov_col = menu.get_color("aim_draw_fov") or { 1, 1, 1, 0.35 }
    cfg.aim_prediction = menu.get("aim_prediction") or false
    cfg.aim_drop_comp = menu.get("aim_drop_comp") or false
    cfg.aim_auto_bow = menu.get("aim_auto_bow")
    if cfg.aim_auto_bow == nil then cfg.aim_auto_bow = true end
    cfg.aim_target_npcs = menu.get("aim_target_npcs") or false
    cfg.aim_vis_check = menu.get("aim_vis_check") or false
    cfg.aim_team_check = menu.get("aim_team_check") or false
    cfg.aim_highlight = menu.get("aim_target_highlight") or false
    cfg.aim_hl_col = menu.get_color("aim_target_highlight") or { 1.0, 0.30, 0.30, 1.0 }
    cfg.aim_proj_speed = menu.get("aim_proj_speed") or 350
    cfg.aim_bone = menu.get("aim_bone") or "Head"
    cfg.aim_fov = menu.get("aim_fov") or 140
    cfg.aim_smooth = math.max(1, menu.get("aim_smooth") or 4)

    -- Gun mods
    cfg.gun_rcl_enabled = menu.get("gun_recoil_enabled") or false
    cfg.gun_recl_pct = menu.get("gun_recoil_pct") or 80
    cfg.gun_rapid = menu.get("gun_rapid_fire") or false
    cfg.gun_rapid_delay = menu.get("gun_rapid_delay") or 120
    cfg.gun_trigger = menu.get("gun_triggerbot") or false
    cfg.gun_trigger_delay = menu.get("gun_trigger_delay") or 25
    cfg.gun_trigger_npcs = menu.get("gun_trigger_npcs")
    if cfg.gun_trigger_npcs == nil then cfg.gun_trigger_npcs = true end

    -- Zoom
    cfg.zoom_enabled = menu.get("zoom_enabled") or false
    local zk = menu.get_key and menu.get_key("zoom_enabled")
    if zk and zk > 0 then cfg.zoom_key = zk end
    cfg.zoom_fov = menu.get("zoom_fov") or 30
    cfg.zoom_smooth = math.max(1, menu.get("zoom_smooth") or 6)

    cfg.no_fog = menu.get("no_fog") or false

    -- Inventory
    cfg.inv_enabled = menu.get("inv_enabled") or false
    cfg.inv_mode = menu.get("inv_mode") or 0
    cfg.inv_show_weapons = menu.get("inv_show_weapons")
    if cfg.inv_show_weapons == nil then cfg.inv_show_weapons = true end
    cfg.inv_show_wear = menu.get("inv_show_wear")
    if cfg.inv_show_wear == nil then cfg.inv_show_wear = true end
    cfg.inv_show_pack = menu.get("inv_show_pack")
    if cfg.inv_show_pack == nil then cfg.inv_show_pack = true end
    cfg.inv_show_grid = menu.get("inv_show_grid")
    if cfg.inv_show_grid == nil then cfg.inv_show_grid = true end

    -- Animals
    cfg.a_enabled = menu.get("animals_esp_enabled") or false
    cfg.a_bear = menu.get("animal_bear") or false; cfg.a_bear_col = menu.get_color("animal_bear") or { 0.95, 0.25, 0.25, 1.0 }
    cfg.a_wolf = menu.get("animal_wolf") or false; cfg.a_wolf_col = menu.get_color("animal_wolf") or { 1.00, 0.55, 0.20, 1.0 }
    cfg.a_boar = menu.get("animal_boar") or false; cfg.a_boar_col = menu.get_color("animal_boar") or { 0.85, 0.70, 0.40, 1.0 }
    cfg.a_deer = menu.get("animal_deer") or false; cfg.a_deer_col = menu.get_color("animal_deer") or { 0.40, 0.90, 0.50, 1.0 }
    cfg.a_name = menu.get("animals_show_name") or false
    cfg.a_dist = menu.get("animals_show_dist") or false
    cfg.a_hp = menu.get("animals_show_health") or false
    cfg.a_tracers = menu.get("animals_tracers") or false
    local a_r = menu.get("animals_max_dist") or 450
    cfg.a_max_sq = (a_r / 0.28) * (a_r / 0.28)
    cfg.a_font = menu.get("animals_font_size") or 12

    -- NPCs
    cfg.npcs_enabled = menu.get("npcs_esp_enabled") or false
    cfg.npc_soldier = menu.get("npc_soldier") or false; cfg.npc_sol_col = menu.get_color("npc_soldier") or { 0.25, 0.85, 1.0, 1.0 }
    cfg.npc_heli = menu.get("npc_patrol_heli") or false; cfg.npc_heli_col = menu.get_color("npc_patrol_heli") or { 1.0, 0.20, 0.20, 1.0 }
    cfg.npc_skel = menu.get("npc_skeleton") or false; cfg.npc_skel_col = menu.get_color("npc_skeleton") or { 1.00, 0.35, 0.35, 1.0 }
    cfg.npc_aimbot = menu.get("npc_aimbot") or false
    cfg.npc_name = menu.get("npcs_show_name") or false; cfg.npc_dist = menu.get("npcs_show_dist") or false
    cfg.npc_hp = menu.get("npcs_show_health") or false; cfg.npc_tracers = menu.get("npcs_tracers") or false
    local n_r = menu.get("npcs_max_dist") or 450
    cfg.npc_max_sq = (n_r / 0.28) * (n_r / 0.28)
    cfg.npc_font = menu.get("npcs_font_size") or 13

    -- Player ESP
    cfg.p_enabled = menu.get("player_esp_enabled") or false
    cfg.p_box = menu.get("player_box") or false; cfg.p_box_col = menu.get_color("player_box") or { 1, 1, 1, 0.85 }
    cfg.p_skel = menu.get("player_skeleton") or false; cfg.p_skel_col = menu.get_color("player_skeleton") or { 1, 0.35, 0.35, 1 }
    cfg.p_chams = menu.get("player_chams") or false; cfg.p_chams_col = menu.get_color("player_chams") or { 0.95, 0.25, 0.25, 0.25 }
    cfg.p_hp = menu.get("player_health") or false
    cfg.p_held = menu.get("player_held") or false; cfg.p_held_col = menu.get_color("player_held") or { 1, 0.85, 0.3, 1 }
    cfg.p_name = menu.get("player_name") or false; cfg.p_dist = menu.get("player_dist") or false
    cfg.p_tracers = menu.get("player_tracers") or false; cfg.p_tracers_col = menu.get_color("player_tracers") or { 1, 1, 1, 0.35 }
    cfg.p_sleepers = menu.get("player_sleepers") or false; cfg.p_sleep_col = menu.get_color("player_sleepers") or { 0.65, 0.70, 0.85, 0.85 }
    local p_r = menu.get("player_max_dist") or 500
    cfg.p_max_sq = (p_r / 0.28) * (p_r / 0.28)
    cfg.p_font = menu.get("player_font_size") or 13

    -- Nodes
    cfg.n_enabled = menu.get("nodes_esp_enabled") or false
    cfg.n_stone = menu.get("stone_node") or false; cfg.n_stone_col = menu.get_color("stone_node") or { 0.85, 0.85, 0.9, 1 }
    cfg.n_sulfur = menu.get("sulfur_node") or false; cfg.n_sulf_col = menu.get_color("sulfur_node") or { 0.95, 0.85, 0.2, 1 }
    cfg.n_iron = menu.get("iron_node") or false; cfg.n_iron_col = menu.get_color("iron_node") or { 0.45, 0.75, 1, 1 }
    cfg.n_dist = menu.get("nodes_show_dist") or false; cfg.n_tracers = menu.get("nodes_tracers") or false
    local n_r = menu.get("nodes_max_dist") or 450
    cfg.n_max_sq = (n_r / 0.28) * (n_r / 0.28)
    cfg.n_font = menu.get("nodes_font_size") or 13

    -- Pickups
    cfg.pk_enabled = menu.get("pickups_esp_enabled") or false
    cfg.pk_ores = menu.get("pickups_ores") or false; cfg.pk_ores_col = menu.get_color("pickups_ores") or { 1, 0.8, 0.35, 1 }
    cfg.pk_plants = menu.get("pickups_plants") or false; cfg.pk_pl_col = menu.get_color("pickups_plants") or { 0.35, 0.95, 0.45, 1 }
    cfg.pk_wood = menu.get("pickups_wood") or false; cfg.pk_wood_col = menu.get_color("pickups_wood") or { 0.75, 0.55, 0.35, 1 }
    cfg.pk_dist = menu.get("pickups_show_dist") or false
    local pk_r = menu.get("pickups_max_dist") or 200
    cfg.pk_max_sq = (pk_r / 0.28) * (pk_r / 0.28)
    cfg.pk_font = menu.get("pickups_font_size") or 12

    -- Dropped
    cfg.d_enabled = menu.get("dropped_esp_enabled") or false
    cfg.d_col = menu.get_color("dropped_color") or { 1, 0.4, 0.9, 1 }
    cfg.d_tracers = menu.get("dropped_tracers") or false; cfg.d_dist = menu.get("dropped_show_dist") or false
    local d_r = menu.get("dropped_max_dist") or 150
    cfg.d_max_sq = (d_r / 0.28) * (d_r / 0.28)
    cfg.d_font = menu.get("dropped_font_size") or 12

    -- Body Bags
    cfg.bb_enabled = menu.get("bodybag_enabled") or false
    cfg.bb_col = menu.get_color("bodybag_enabled") or { 0.90, 0.25, 0.35, 1.0 }
    cfg.bb_dist = menu.get("bodybag_show_dist") or false; cfg.bb_tracers = menu.get("bodybag_tracers") or false
    local bb_r = menu.get("bodybag_max_dist") or 500
    cfg.bb_max_sq = (bb_r / 0.28) * (bb_r / 0.28)
    cfg.bb_font = menu.get("bodybag_font_size") or 13

    -- BB Viewer
    cfg.bb_viewer_enabled = menu.get("bodybag_viewer_enabled") or false
    cfg.bb_viewer_mode = menu.get("bodybag_viewer_mode") or 0

    -- Loot
    cfg.loot_enabled = menu.get("loot_esp_enabled") or false
    cfg.loot_show_world_cat = menu.get("loot_show_world_cat")
    if cfg.loot_show_world_cat == nil then cfg.loot_show_world_cat = true end
    cfg.loot_show_barrels = menu.get("loot_show_barrels")
    if cfg.loot_show_barrels == nil then cfg.loot_show_barrels = true end
    cfg.loot_col_barrels = menu.get_color("loot_show_barrels") or { 0.25, 0.75, 1.0, 1.0 }
    cfg.loot_show_crates = menu.get("loot_show_crates")
    if cfg.loot_show_crates == nil then cfg.loot_show_crates = true end
    cfg.loot_col_crates = menu.get_color("loot_show_crates") or { 0.95, 0.70, 0.25, 1.0 }
    cfg.loot_show_military = menu.get("loot_show_military")
    if cfg.loot_show_military == nil then cfg.loot_show_military = true end
    cfg.loot_col_military = menu.get_color("loot_show_military") or { 0.20, 1.00, 0.40, 1.0 }
    cfg.loot_show_elite = menu.get("loot_show_elite")
    if cfg.loot_show_elite == nil then cfg.loot_show_elite = true end
    cfg.loot_col_elite = menu.get_color("loot_show_elite") or { 0.95, 0.25, 0.45, 1.0 }
    cfg.loot_show_base_cat = menu.get("loot_show_base_cat")
    if cfg.loot_show_base_cat == nil then cfg.loot_show_base_cat = true end
    cfg.loot_show_large_box = menu.get("loot_show_large_box")
    if cfg.loot_show_large_box == nil then cfg.loot_show_large_box = true end
    cfg.loot_col_large_box = menu.get_color("loot_show_large_box") or { 0.95, 0.65, 0.20, 1.0 }
    cfg.loot_show_small_box = menu.get("loot_show_small_box")
    if cfg.loot_show_small_box == nil then cfg.loot_show_small_box = true end
    cfg.loot_col_small_box = menu.get_color("loot_show_small_box") or { 0.85, 0.50, 0.15, 1.0 }
    cfg.loot_show_tc = menu.get("loot_show_tc")
    if cfg.loot_show_tc == nil then cfg.loot_show_tc = true end
    cfg.loot_col_tc = menu.get_color("loot_show_tc") or { 0.20, 0.85, 1.00, 1.0 }
    cfg.loot_show_locker = menu.get("loot_show_locker")
    if cfg.loot_show_locker == nil then cfg.loot_show_locker = true end
    cfg.loot_col_locker = menu.get_color("loot_show_locker") or { 0.70, 0.75, 0.90, 1.0 }
    cfg.loot_show_furnace = menu.get("loot_show_furnace")
    if cfg.loot_show_furnace == nil then cfg.loot_show_furnace = true end
    cfg.loot_col_furnace = menu.get_color("loot_show_furnace") or { 1.00, 0.42, 0.15, 1.0 }
    cfg.loot_show_workbench = menu.get("loot_show_workbench")
    if cfg.loot_show_workbench == nil then cfg.loot_show_workbench = true end
    cfg.loot_col_workbench = menu.get_color("loot_show_workbench") or { 0.60, 0.85, 0.40, 1.0 }
    cfg.loot_show_shelves = menu.get("loot_show_shelves")
    if cfg.loot_show_shelves == nil then cfg.loot_show_shelves = true end
    cfg.loot_col_shelves = menu.get_color("loot_show_shelves") or { 0.80, 0.60, 0.35, 1.0 }
    cfg.loot_show_sleeping_bag = menu.get("loot_show_sleeping_bag")
    if cfg.loot_show_sleeping_bag == nil then cfg.loot_show_sleeping_bag = true end
    cfg.loot_col_sleeping_bag = menu.get_color("loot_show_sleeping_bag") or { 0.45, 0.90, 0.65, 1.0 }
    cfg.loot_dist = menu.get("loot_show_dist")
    if cfg.loot_dist == nil then cfg.loot_dist = true end
    cfg.loot_tracers = menu.get("loot_tracers") or false
    local lo_r = menu.get("loot_max_dist") or 350
    cfg.loot_max_sq = (lo_r / 0.28) * (lo_r / 0.28)
    cfg.loot_font = menu.get("loot_font_size") or 12

    -- Settings
    cfg.watermark = menu.get("watermark_enabled")
    if cfg.watermark == nil then cfg.watermark = true end
    cfg.anti_afk = menu.get("anti_afk")
    if cfg.anti_afk == nil then cfg.anti_afk = true end
    cfg.notifications_enabled = menu.get("notifications_enabled")
    if cfg.notifications_enabled == nil then cfg.notifications_enabled = true end

    -- Resolution-aware clamping
    if cfg.inv_panel_dragging then
        cfg.inv_panel_x = clamp(cfg.inv_panel_x, 0, cfg.sw - cfg.ui_w)
        cfg.inv_panel_y = clamp(cfg.inv_panel_y, 0, cfg.sh - 40)
    end
    if cfg.bb_viewer_dragging then
        cfg.bb_viewer_panel_x = clamp(cfg.bb_viewer_panel_x, 0, cfg.sw - cfg.bb_viewer_panel_w)
        cfg.bb_viewer_panel_y = clamp(cfg.bb_viewer_panel_y, 0, cfg.sh - 40)
    end
end

-- =========================================================================
-- CAMERA UPDATE
-- =========================================================================
function update_camera()
    local pos = nil
    if camera and camera.get_position then pcall(function() pos = camera.get_position() end) end
    if not pos and utility and utility.get_camera_position then pcall(function() pos = utility.get_camera_position() end) end
    if not pos then
        local ws = game.workspace or game.Workspace
        local cam = ws and ws.CurrentCamera
        if cam and cam.CFrame then pos = cam.CFrame.Position end
    end
    if pos then
        cam_x = pos.x or pos.X or cam_x
        cam_y = pos.y or pos.Y or cam_y
        cam_z = pos.z or pos.Z or cam_z
    end
end

-- =========================================================================
-- HOOK REGISTRATION
-- =========================================================================
if client and client.register_callback then
    pcall(function() client.register_callback("on_frame", on_frame) end)
end

-- Background worker threads
thread.create(function() while true do anti_afk_task(); sleep(30000) end end)
thread.create(function() while true do scan_players_task(); sleep(350) end end)
thread.create(function() while true do scan_animals_task(); sleep(800) end end)
thread.create(function() while true do scan_npcs_task(); sleep(800) end end)
thread.create(function() while true do scan_bodybags_task(); sleep(800) end end)
thread.create(function() while true do scan_nodes_task(); sleep(1500) end end)
thread.create(function() while true do scan_pickups_task(); sleep(1500) end end)
thread.create(function() while true do scan_loot_task(); sleep(1200) end end)
thread.create(function() while true do scan_dropped_task(); sleep(1200) end end)
thread.create(function() while true do scan_local_inventory_task(); sleep(400) end end)
thread.create(function() while true do update_visuals_task(); sleep(1000) end end)

print("[Vector Hub] CREDIT TO CERTFIED_BISCUT7. Full Vector-style ESP + UI loaded.")
print("Tabs: Aimbot (A) | Visuals (V) | World (W) | Inventory (I) | Settings (S)")
print("Toggle Insert key to enable/disable ESP features.")