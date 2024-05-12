local id = game.PlaceId

local Name = game:GetService("MarketplaceService"):GetProductInfo(id).Name

if id == 662417684 then -- Lucky blocks battlegrounds
    warn("Game is supported("..Name.."). Loading script")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Farls-Xavier/LuckyBlocks/main/Main.lua"))()
end
