RAND = {}
RAND.C = {}

RAND.compat = {
    partners = (SMODS.Mods['partner'] or {}).can_load or false
}

if RAND.compat.partners then
SMODS.load_file("Items/partner.lua")()
end

if RAND.compat.partners then
--Partner Mod atlas
SMODS.Atlas{
    key = "minijoke",
    px = 46,
    py = 58,
    path = "partners.png"
}
end

SMODS.Atlas({
    key = "modicon",
    path = "modicon.png",
    px = 34,
    py = 34
})
