# frozen_string_literal: true

require 'active_currency/migration'

class CreateActiveCurrencyRates < ActiveCurrency::Migration
  def change
    create_table :active_currency_rates do |t|
      t.string :from
      t.string :to
      t.float :value
      t.datetime :created_at
    end

    add_index :active_currency_rates,
              %i[from to created_at],
              name: 'index_active_currency_rates'
  end
end
