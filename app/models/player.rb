# frozen_string_literal: true

class Player < ApplicationRecord
  validates :name, presence: true
  validates :nickname, uniqueness: true, presence: true
  validates :status, presence: true
  validates :position, presence: true

  enum status: { titular: 0, reserva: 1 }
  enum position: { goleiro: 0, linha: 1 }

  ## helpfull commands
  # Player.where(status: 0, position: 1).map(&:linha?)
  # Player.where(status: 0, position: 1).map(&:nickname)

  # Player.where(status: 0, position: 0).map(&:goleiro?)
  # Player.where(status: 0, position: 0).map(&:nickname)
end
