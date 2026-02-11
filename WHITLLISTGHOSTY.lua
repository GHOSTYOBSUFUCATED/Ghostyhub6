
-- ============================================
-- GHOSTY HUB - PROTECTION BLACKLIST + WHITELIST
-- Code complet prêt à l'emploi
-- ============================================

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

-- ============================================
-- BLACKLIST - Joueurs BANNIS (vérifiée en premier)
-- Ces joueurs seront KICK même s'ils sont dans la whitelist
-- ============================================
local BLACKLIST = {
    "JoueurBanni1",
    "JoueurBanni2",
    "Trolleur",
    "Cheateur",
    -- Ajoute ici les pseudos à bannir
    -- Exemple: "PseudoABannir",
}

-- ============================================
-- WHITELIST - Joueurs AUTORISÉS
-- Seuls ces joueurs peuvent utiliser le script
-- ============================================
local WHITELIST = {        -- TOI (ne supprime JAMAIS cette ligne!)
    -- Ajoute tes amis ici:
    "meknanibadis00",
    "uasko_dz",
    "Noka9740",
    "UrStarsOfBloxFruits",
    -- Exemple: "PseudoDeMonAmi",
}

-- ============================================
-- FONCTION DE VÉRIFICATION
-- ============================================
local function estDansListe(liste, pseudo)
    for _, nom in pairs(liste) do
        if nom:lower() == pseudo:lower() then
            return true
        end
    end
    return false
end

-- ============================================
-- ÉTAPE 1: VÉRIFICATION BLACKLIST
-- ============================================
if estDansListe(BLACKLIST, Player.Name) or estDansListe(BLACKLIST, Player.DisplayName) then
    Player:Kick("❌ BANNI\n\nTu es blacklisté de ce script.\n\nTon pseudo: " .. Player.Name)
    return
end

-- ============================================
-- ÉTAPE 2: VÉRIFICATION WHITELIST
-- ============================================
if not (estDansListe(WHITELIST, Player.Name) or estDansListe(WHITELIST, Player.DisplayName)) then
    Player:Kick("🚫 ACCÈS REFUSÉ\n\nCe script est privé.\n\nTon pseudo: " .. Player.Name .. "\n\nContacte le propriétaire pour obtenir l'accès.")
    return
end

-- ============================================
-- ÉTAPE 3: CHARGEMENT DU SCRIPT PRINCIPAL
-- ============================================
print("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
print("👑 GHOSTY HUB - PROTECTION ACTIVÉE")
print("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
print("✅ Accès autorisé!")
print("👤 Bienvenue " .. Player.DisplayName .. " (@" .. Player.Name .. ")")
print("🔄 Chargement du script principal...")
print("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")

-- Charger le script Ghosty Hub
loadstring(game:HttpGet("https://pastefy.app/BKyELduS/raw"))()

print("✅ Ghosty Hub chargé avec succès!")
print("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")