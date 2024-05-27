local MarketplaceService = game:GetService("MarketplaceService")

local id = game.PlaceId

local Ids = {
    ["❓ LUCKY BLOCKS Battlegrounds"] = 662417684,
    ["Arsenal"] = 286090429
}

function GameIsSupported()
    warn("Game is supported (" .. MarketplaceService:GetProductInfo(game.PlaceId).Name .. "). Loading script")
end

function GameIsNotSupported()
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Place is not supported",
        Text = "Place is not supported. Loading Universal script",
    })
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Farls-Xavier/UniversalScript/main/Main.lua"))()
end

local supported = false

for name, placeId in pairs(Ids) do
    if placeId == id then
        supported = true
        if placeId == Ids["❓ LUCKY BLOCKS Battlegrounds"]then
            GameIsSupported()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Farls-Xavier/LuckyBlocks/main/Main.lua"))()
        elseif placeId == Ids.Arsenal then
            game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "Not done yet!",
                Text = "Arsenal isn't quite yet done. Loading universal script",
            })
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Farls-Xavier/UniversalScript/main/Main.lua"))() -- loadstring(game:HttpGet("https://raw.githubusercontent.com/Farls-Xavier/Arsenal/main/Main.lua"))()
        end
        break 
    end
end

if not supported then
    GameIsNotSupported()
end
