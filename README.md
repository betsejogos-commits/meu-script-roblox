-- ==========================================
-- SCRIPT COMPLETO DA INTERFACE VISUAL
-- ==========================================

-- Limpa execuções anteriores para não bugar a tela
local telaAntiga = game:GetService("CoreGui"):FindFirstChild("InterfaceStudioOficial")
if telaAntiga then telaAntiga:Destroy() end

-- 1. BASE PRINCIPAL (ScreenGui)
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "InterfaceStudioOficial"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game:GetService("CoreGui")

-- 2. BARRA SUPERIOR (TopBar Negra)
local TopBar = Instance.new("Frame")
TopBar.Name = "TopBar"
TopBar.Size = UDim2.new(1, 0, 0, 40)
TopBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TopBar.BorderSizePixel = 0
TopBar.Parent = ScreenGui

-- Botão Configurações de Visual
local BtnVisual = Instance.new("TextButton")
BtnVisual.Name = "BtnVisual"
BtnVisual.Text = "Configurações de visual"
BtnVisual.Size = UDim2.new(0, 160, 1, 0)
BtnVisual.Position = UDim2.new(0, 50, 0, 0)
BtnVisual.TextColor3 = Color3.fromRGB(180, 180, 180)
BtnVisual.BackgroundTransparency = 1
BtnVisual.Font = Enum.Font.SourceSans
BtnVisual.TextSize = 14
BtnVisual.Parent = TopBar

-- 3. PAINEL ESQUERDO (Menu Lateral)
local MenuEsquerdo = Instance.new("Frame")
MenuEsquerdo.Name = "MenuEsquerdo"
MenuEsquerdo.Size = UDim2.new(0, 190, 1, -40)
MenuEsquerdo.Position = UDim2.new(0, 0, 0, 40)
MenuEsquerdo.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MenuEsquerdo.BorderSizePixel = 0
MenuEsquerdo.Parent = ScreenGui

-- Texto da Versão do Script
local TextoVersao = Instance.new("TextLabel")
TextoVersao.Name = "TextoVersao"
TextoVersao.Text = "V1.0 Do Studio Script"
TextoVersao.Size = UDim2.new(1, -20, 0, 30)
TextoVersao.Position = UDim2.new(0, 15, 0, 15)
TextoVersao.TextColor3 = Color3.fromRGB(130, 130, 130)
TextoVersao.BackgroundTransparency = 1
TextoVersao.TextXAlignment = Enum.TextXAlignment.Left
TextoVersao.Font = Enum.Font.SourceSans
TextoVersao.TextSize = 14
TextoVersao.Parent = MenuEsquerdo

-- 4. ÁREA CENTRAL DO SCRIPT (Caixa Cinza Superior)
local ContainerScript = Instance.new("Frame")
ContainerScript.Name = "ContainerScript"
ContainerScript.Size = UDim2.new(1, -220, 0, 100)
ContainerScript.Position = UDim2.new(0, 205, 0, 55)
ContainerScript.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
ContainerScript.BorderSizePixel = 0
ContainerScript.Parent = ScreenGui

-- Texto do Script Exibido na Imagem
local LabelScript = Instance.new("TextLabel")
LabelScript.Name = "LabelScript"
LabelScript.Text = 'loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-SECURE-DEX-AND-REMOTE-SPY-205256"))()\nScript Do Explorer Se caso não executar se nao for no seu caso nao execute'
LabelScript.Size = UDim2.new(1, -20, 1, -20)
LabelScript.Position = UDim2.new(0, 10, 0, 10)
LabelScript.TextColor3 = Color3.fromRGB(160, 160, 160)
LabelScript.BackgroundTransparency = 1
LabelScript.TextWrapped = true
LabelScript.TextXAlignment = Enum.TextXAlignment.Left
LabelScript.TextYAlignment = Enum.TextYAlignment.Top
LabelScript.Font = Enum.Font.Code
LabelScript.TextSize = 13
LabelScript.Parent = ContainerScript

-- 5. PAINEL INFERIOR (Aba de Logs/Erros)
local PainelOutput = Instance.new("Frame")
PainelOutput.Name = "PainelOutput"
PainelOutput.Size = UDim2.new(1, -220, 0, 180)
PainelOutput.Position = UDim2.new(0, 205, 1, -195)
PainelOutput.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
PainelOutput.BorderSizePixel = 0
PainelOutput.Parent = ScreenGui

-- Texto de Identificação da Saída
local TextoOutput = Instance.new("TextLabel")
TextoOutput.Name = "TextoOutput"
TextoOutput.Text = "Saída de Erros (Output)"
TextoOutput.Size = UDim2.new(1, -20, 0, 30)
TextoOutput.Position = UDim2.new(0, 15, 0, 5)
TextoOutput.TextColor3 = Color3.fromRGB(110, 110, 110)
TextoOutput.BackgroundTransparency = 1
TextoOutput.TextXAlignment = Enum.TextXAlignment.Left
TextoOutput.Font = Enum.Font.SourceSans
TextoOutput.TextSize = 14
TextoOutput.Parent = PainelOutput

-- Versão Beta no canto inferior direito da tela
local TextoBeta = Instance.new("TextLabel")
TextoBeta.Name = "TextoBeta"
TextoBeta.Text = "v0.3.4 (beta)"
TextoBeta.Size = UDim2.new(0, 100, 0, 20)
TextoBeta.Position = UDim2.new(1, -110, 1, -25)
TextoBeta.TextColor3 = Color3.fromRGB(90, 90, 90)
TextoBeta.BackgroundTransparency = 1
TextoBeta.TextXAlignment = Enum.TextXAlignment.Right
TextoBeta.Font = Enum.Font.SourceSans
TextoBeta.TextSize = 16
TextoBeta.Parent = ScreenGui

-- ==========================================
-- EXECUÇÃO AUTOMÁTICA EM SEGUNDO PLANO
-- ==========================================
task.spawn(function()
    local sucesso, erro = pcall(function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-SECURE-DEX-AND-REMOTE-SPY-205256"))()
    end)
    
    -- Se o script falhar, avisa no painel inferior que criamos
    if not sucesso then
        TextoOutput.Text = "Erro na execução do Secure Dex: " .. tostring(erro)
        TextoOutput.TextColor3 = Color3.fromRGB(255, 100, 100)
    else
        TextoOutput.Text = "Saída de Erros (Output) - Secure Dex carregado com sucesso!"
        TextoOutput.TextColor3 = Color3.fromRGB(100, 255, 100)
    end
end)
