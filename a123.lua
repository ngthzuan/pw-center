-- Kiểm tra nếu game đã tải
if not game:IsLoaded() then
    game.Loaded:Wait()
end

-- Tạo ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "FPSAndBanner"
screenGui.Parent = game:GetService("CoreGui")

-- Tạo TextLabel cho FPS
local fpsLabel = Instance.new("TextLabel")
fpsLabel.Name = "FPSLabel"
fpsLabel.Parent = screenGui
fpsLabel.Size = UDim2.new(0, 200, 0, 50) -- Kích thước
fpsLabel.Position = UDim2.new(0, 10, 0.5, -100) -- Vị trí (góc trái giữa màn hình, chỉnh theo nhu cầu)
fpsLabel.BackgroundTransparency = 0,25 -- Độ trong suốt nền
fpsLabel.BackgroundColor3 = Color3.new(0, 0, 0) -- Màu nền (đen)
fpsLabel.TextColor3 = Color3.new(1, 1, 1) -- Màu chữ (trắng)
fpsLabel.Font = Enum.Font.SourceSans -- Font chữ
fpsLabel.TextScaled = true -- Tự động co giãn chữ
fpsLabel.Text = "FPS: Calculating..."

-- Tạo TextLabel cho banner
local bannerLabel = Instance.new("TextLabel")
bannerLabel.Name = "BannerLabel"
bannerLabel.Parent = screenGui
bannerLabel.Size = UDim2.new(0, 300, 0, 50) -- Kích thước
bannerLabel.Position = UDim2.new(0, 50, 0.5, -50) -- Vị trí (góc trái giữa màn hình, chỉnh theo nhu cầu)
bannerLabel.BackgroundTransparency = 1 -- Nền trong suốt
bannerLabel.TextScaled = true -- Tự động co giãn chữ
bannerLabel.Font = Enum.Font.SourceSansBold -- Font chữ đậm
bannerLabel.Text = "W-azure Auto Bounty - discord.gg/w-azure"
bannerLabel.TextStrokeTransparency = 0 -- Đường viền chữ
bannerLabel.TextStrokeColor3 = Color3.new(0, 0, 0) -- Viền đen

-- Biến màu sắc để tạo hiệu ứng 7 màu
local rainbowColors = {
    Color3.fromRGB(255, 0, 0),   -- Đỏ
    Color3.fromRGB(255, 127, 0), -- Cam
    Color3.fromRGB(255, 255, 0), -- Vàng
    Color3.fromRGB(0, 255, 0),   -- Lục
    Color3.fromRGB(0, 255, 255), -- Lam nhạt
    Color3.fromRGB(0, 0, 255),   -- Lam
    Color3.fromRGB(139, 0, 255)  -- Tím
}

-- Hàm đổi màu gradient
local function updateRainbow()
    while true do
        for _, color in ipairs(rainbowColors) do
            bannerLabel.TextColor3 = color
            task.wait(0.1)
        end
    end
end

-- Chạy hàm đổi màu 7 màu
task.spawn(updateRainbow)

-- Biến đo FPS
local RunService = game:GetService("RunService")
local frameCount = 0
local lastUpdate = 0

-- Hàm cập nhật FPS
RunService.RenderStepped:Connect(function(deltaTime)
    frameCount = frameCount + 1
    lastUpdate = lastUpdate + deltaTime

    if lastUpdate >= 1 then
        local fps = math.floor(frameCount / lastUpdate)
        fpsLabel.Text = "FPS: " .. tostring(fps)
        lastUpdate = 0
        frameCount = 0
    end
end)
