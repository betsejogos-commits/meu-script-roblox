-- ==========================================
-- SCRIPT COMPLETO COM COMMAND LINE INCLUSO
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

-- [NOVO] Botão Command Line (Adicionado ao lado do Configurações de Visual)
local BtnCommandLine = Instance.new("TextButton")
BtnCommandLine.Name = "BtnCommandLine"
BtnCommandLine.Text = "Command Line"
BtnCommandLine.Size = UDim2.new(0, 120, 1, 0)
BtnCommandLine.Position = UDim2.new(0, 220, 0, 0) -- Posicionado logo após o primeiro botão
BtnCommandLine.TextColor3 = Color3.fromRGB(180, 180, 180)
BtnCommandLine.BackgroundTransparency = 1
BtnCommandLine.Font = Enum.Font.SourceSans
BtnCommandLine.TextSize = 14
BtnCommandLine.Parent = TopBar

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
LabelScript.Text = 'loadstring(game:HttpGet("https://rawscripts.net"))()\nScript Do Explorer Se caso não executar se nao for no seu caso nao execute'
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
-- [NOVO] POPUP INTERFACE DA COMMAND LINE
-- ==========================================
local FrameCommandLine = Instance.new("Frame")
FrameCommandLine.Name = "FrameCommandLine"
FrameCommandLine.Size = UDim2.new(0, 400, 0, 120)
FrameCommandLine.Position = UDim2.new(0.5, -200, 0.4, -60) -- Centralizado na tela
FrameCommandLine.BackgroundColor3 = Color3.fromRGB(33, 33, 33) -- Cor cinza escura do Studio
FrameCommandLine.BorderSizePixel = 1
FrameCommandLine.BorderColor3 = Color3.fromRGB(50, 50, 50)
FrameCommandLine.Visible = false -- Começa oculto até clicar no botão
FrameCommandLine.Parent = ScreenGui

-- Título do Painel de Comandos
local TituloCmd = Instance.new("TextLabel")
TituloCmd.Text = " Linha de Comando (Studio Style)"
TituloCmd.Size = UDim2.new(1, 0, 0, 25)
TituloCmd.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TituloCmd.TextColor3 = Color3.fromRGB(200, 200, 200)
TituloCmd.TextXAlignment = Enum.TextXAlignment.Left
TituloCmd.Font = Enum.Font.SourceSansBold
TituloCmd.TextSize = 14
TituloCmd.Parent = FrameCommandLine

-- Caixa de Entrada de Texto (TextBox)
local InputComando = Instance.new("TextBox")
InputComando.Name = "InputComando"
InputComando.Text = "Insira seu script aqui..."
InputComando.Size = UDim2.new(1, -65, 0, 50)
InputComando.Position = UDim2.new(0, 15, 0, 45)
InputComando.BackgroundColor3 = Color3.fromRGB(20, 20, 20) -- Fundo escuro idêntico ao Studio
InputComando.TextColor3 = Color3.fromRGB(255, 255, 255) -- Texto estritamente Branco
InputComando.ClearTextOnFocus = true
InputComando.TextXAlignment = Enum.TextXAlignment.Left
InputComando.TextYAlignment = Enum.TextYAlignment.Top
InputComando.Font = Enum.Font.Code
InputComando.TextSize = 13
InputComando.Parent = FrameCommandLine

-- Botão de Execução (TextButton com o emoji ✈️)
local BtnExecutarCmd = Instance.new("TextButton")
BtnExecutarCmd.Name = "BtnExecutarCmd"
BtnExecutarCmd.Text = "✈️"
BtnExecutarCmd.Size = UDim2.new(0, 40, 0, 50)
BtnExecutarCmd.Position = UDim2.new(1, -50, 0, 45)
BtnExecutarCmd.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
BtnExecutarCmd.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnExecutarCmd.Font = Enum.Font.SourceSans
BtnExecutarCmd.TextSize = 20
BtnExecutarCmd.Parent = FrameCommandLine

-- ==========================================
-- SISTEMA DE INTERAÇÕES E CLIQUES
-- ==========================================

-- Alternar visibilidade da Command Line ao clicar no botão superior
BtnCommandLine.MouseButton1Click:Connect(function()
    FrameCommandLine.Visible = not FrameCommandLine.Visible
end)

-- Executa o código digitado no TextBox ao clicar no aviãozinho ✈️
BtnExecutarCmd.MouseButton1Click:Connect(function()
    local codigo = InputComando.Text
    if codigo ~= "" and codigo ~= "Insira seu script aqui..." then
        local func, erro = loadstring(codigo)
        if func then
            task.spawn(func)
            TextoOutput.Text = "[CmdLine]: Comando executado com sucesso!"
            TextoOutput.TextColor3 = Color3.fromRGB(100, 255, 100)
        else
            TextoOutput.Text = "[CmdLine Erro]: " .. tostring(erro)
            TextoOutput.TextColor3 = Color3.fromRGB(255, 100, 100)
        end
    end
end)

-- ==========================================
-- EXECUÇÃO AUTOMÁTICA EM SEGUNDO PLANO
-- ==========================================
task.spawn(function()
    local sucesso, erro = pcall(function()
        loadstring(game:HttpGet("https://rawscripts.net"))()
    end)
    
    if not sucesso then
        TextoOutput.Text = "Erro na execução do Secure Dex: " .. tostring(erro)
        TextoOutput.TextColor3 = Color3.fromRGB(255, 100, 100)
    else
        TextoOutput.Text = "Saída de Erros (Output) - Secure Dex carregado com sucesso!"
        TextoOutput.TextColor3 = Color3.fromRGB(100, 255, 100)
    end
end)
