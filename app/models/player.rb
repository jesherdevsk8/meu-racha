# frozen_string_literal: true

class Player < ApplicationRecord
  validates :name, presence: true
  validates :nickname, uniqueness: true, presence: true
  validates :status, presence: true
  validates :position, presence: true

  enum status: { titular: 1, reserva: 0 }
  enum position: { goleiro: 1, linha: 0 }

  ## helpfull commands
  # Player.where(status: 1, position: 0).map(&:linha?)
  # Player.where(status: 1, position: 0).map(&:nickname)

  # Player.where(status: 1, position: 1).map(&:goleiro?)
  # Player.where(status: 0, position: 1).map(&:nickname)

  scope :filter_by_name_or_nickname, lambda { |search|
    where('name ILIKE :pattern OR nickname ILIKE :pattern', pattern: "%#{search}%") if search
  }
end
