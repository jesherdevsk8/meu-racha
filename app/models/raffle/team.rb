# frozen_string_literal: true

module Raffle
  class Team
    def self.sortear
      goleiros = Player.where(status: 0, position: 0).map(&:nickname)

      jogadores_linha = Player.where(status: 0, position: 1).map(&:nickname)

      @time_azul = (goleiros.sample(goleiros.length - 1) + jogadores_linha.sample(jogadores_linha.length - 5))
      @time_preto = []
      goleiros.each { |nome| @time_preto << nome unless @time_azul.include?(nome) }

      jogadores_linha.each do |nome|
        next if @time_preto.length == 6

        @time_preto << nome unless @time_azul.include?(nome)
      end
      times = <<~TIMES
        Time Preto: #{@time_preto.join(', ')}
        Time Azul:  #{@time_azul.join(', ')}
      TIMES
      Rails.logger.debug times
      # send_message(times)
    end

    def send_message(times)
      api_key = ENV.fetch('TELEGRAM_API_KEY', nil)
      chat_id = ENV.fetch('TELEGRAM_CHAT_ID', nil)
      HTTParty.post("https://api.telegram.org/bot#{api_key}/sendMessage",
        headers: {
          'Content-Type' => 'application/json'
        },
        body: {
          chat_id:,
          text: times
        }.to_json)
    end
  end
end
