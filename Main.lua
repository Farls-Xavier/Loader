local id = game.PlaceId

local MarketPlaceService = game:GetService("MarketplaceService")

if id == 662417684 then -- Lucky blocks battlegrounds
    warn("Game is supported("..MarketPlaceService:GetProductInfo(game.PlaceId)["Name"]"). Loading script")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Farls-Xavier/LuckyBlocks/main/Main.lua"))()
end
