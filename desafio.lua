--[[

Nome da Criatura
Descrição
Som que Faz
Atributos
    Ataque
    Defesa
    Vitalidade
    Velocidade
    Inteligencia
Habilidades
    Furtividade
    Explosão

=======================================

CREEPER
Um monstro furtivo com um temperamento explosivo.

SOM:
    Tsssssss

Atributos:
    Ataque: ########00
    Defesa: ###0000000

=======================================

]]
os.execute("chcp 65001")
os.execute("cls")

-- Criatura
local monsterName = "CREEPER"
local description = "Um monstro furtivo com um temperamento explosivo."
local emoji = "👾"
local sound = "Tsssssss"
local favoriteTime = "Noturno"

-- Atributos
local attackAttribute = 10
local defenseAttribute = 1
local lifeAttribute = 5
local speedAttribute = 7
local inteligennceAttribute = 2

--- Função que irá realizar a contagem em milisegundos
local function getSleep(miliseconds)
    local seconds = miliseconds / 1000 -- Converte milissegundos para segundos
    local start = os.clock()
    while os.clock() - start <= seconds do
        -- Espera até que o tempo passe
    end
end

--- Função que recebe um atributo e nos retorna uma barra de progresso em string / texto
local function getProgressBar(attribute)
    local fullChar = "💚"
    local emptyChar = "🖤"
    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
            -- Quadradinho cheio
            getSleep(100)
        else
            result = result .. emptyChar
            -- Quadradinho vazio
            getSleep(100)
        end
    end
    
    return result
end

--- Função que recebe um atributo titulo e irá realizar a contagem e retornar a quantidade exata do titulo para realizar a criação do cartão.
local function getTitle(title)
    local contagemDescricao = #description
    for i = 1, contagemDescricao + 2, 1 do
        io.write("=")
    end
end

-- Cartão
print(getTitle(description))
print("| ")
print("| " .. monsterName)
print("| " .. description)
print("| " .. sound)
print("| " .. favoriteTime)
print("| ")
print("| Emote Favorito: " .. emoji)
print("| ")
print("| Atributos")
print("|    Ataque:         " .. getProgressBar(attackAttribute))
print("|    Defesa:         " .. getProgressBar(defenseAttribute))
print("|    Vida:           " .. getProgressBar(lifeAttribute))
print("|    Velocidade:     " .. getProgressBar(speedAttribute))
print("|    Inteligencia:   " .. getProgressBar(inteligennceAttribute))
print("| ")
print(getTitle(description))