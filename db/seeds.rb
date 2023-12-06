### CRIAÇÃO DOS GOLEIROS
[
  { name: 'Jesher Minelli', nickname: 'Jesher', shirt_number: 22, status: 0, score_goal: 2, position: 0 },
  { name: 'Paulo Golero', nickname: 'Paulão', shirt_number: 12, status: 0, score_goal: 0, position: 0 },
  { name: 'José Carlos', nickname: 'Zé Carlos', shirt_number: 44, status: 1, score_goal: 0, position: 0 },
  { name: 'Gustavo', nickname: 'Gustavo', shirt_number: 1, status: 1, score_goal: 0, position: 0 }
].each do |player|
  Player.create!(
    name: player[:name],
    nickname: player[:nickname],
    shirt_number: player[:shirt_number],
    status: player[:status],
    score_goal: player[:score_goal],
    position: player[:position]
  )
end

## CRIAÇÃO DOS JOGADORES DE LINHA
[
  { name: 'Ana Duarte', nickname: 'Ana', shirt_number: 11, status: 0, score_goal: 0, position: 1 },
  { name: 'Michele', nickname: 'Michele', shirt_number: 20, status: 0, score_goal: 0, position: 1 },
  { name: 'Paulo Duarte', nickname: 'Paulinho', shirt_number: 8, status: 0, score_goal: 0, position: 1 },
  { name: 'Daniel Duarte', nickname: 'Daniel', shirt_number: 7, status: 0, score_goal: 0, position: 1 },
  { name: 'Devair Alberto', nickname: 'Devinha', shirt_number: 10, status: 0, score_goal: 0, position: 1 },
  { name: 'Eduardo Duarte', nickname: 'Pê', shirt_number: 5, status: 0, score_goal: 0, position: 1 },
  { name: 'Fabio Silva', nickname: 'Fabim', shirt_number: 2, status: 1, score_goal: 0, position: 1 },
  { name: 'Leonardo', nickname: 'Léo', shirt_number: 0, status: 1, score_goal: 0, position: 1 },
  { name: 'Marcos Munari', nickname: 'Marcão', shirt_number: 9, status: 0, score_goal: 0, position: 1 },
  { name: 'Emerson Soares', nickname: 'Emerson', shirt_number: 17, status: 0, score_goal: 0, position: 1 },
  { name: 'Mateus Duarte', nickname: 'Mateus', shirt_number: 6, status: 0, score_goal: 0, position: 1 },
  { name: 'Lucas Duarte', nickname: 'Lucas', shirt_number: 4, status: 0, score_goal: 0, position: 1 },
  { name: 'Francisco Duarte', nickname: 'Gordo', shirt_number: 14, status: 1, score_goal: 0, position: 1 },
  { name: 'Ronaldo Duarte', nickname: 'Nardim', shirt_number: 28, status: 1, score_goal: 0, position: 1 },
  { name: 'Francisco', nickname: 'Francisco', shirt_number: 30, status: 1, score_goal: 0, position: 1 },
  { name: 'Fernando Duarte', nickname: 'Fernando', shirt_number: 3, status: 0, score_goal: 0, position: 1 },
  { name: 'Wilian', nickname: 'Wilian', shirt_number: 10, status: 1, score_goal: 0, position: 1 },
  { name: 'Lincoln Souza', nickname: 'Lincoln', shirt_number: 88, status: 1, score_goal: 0, position: 1 },
  { name: 'Luan Henrique', nickname: 'Luan', shirt_number: 99, status: 1, score_goal: 0, position: 1 },
  { name: 'João Gabriel', nickname: 'João', shirt_number: 20, status: 1, score_goal: 0, position: 1 },
  { name: 'Gabriel', nickname: 'Gabriel', shirt_number: 18, status: 1, score_goal: 0, position: 1 }
].each do |player|
  Player.create!(
    name: player[:name],
    nickname: player[:nickname],
    shirt_number: player[:shirt_number],
    status: player[:status],
    score_goal: player[:score_goal],
    position: player[:position]
  )
end

User.create!(name: 'Jesher Minelli', email: 'jesherdevsk8@gmail.com', password: 'senha@123')
