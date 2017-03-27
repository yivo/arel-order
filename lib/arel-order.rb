# encoding: UTF-8
# frozen_string_literal: true

module ArelOrder
  module Extension
    def order_asc
      "#{to_sql} ASC"
    end

    def order_desc
      "#{to_sql} DESC"
    end
  end
end

require 'arel'
require 'arel-to-sql'

Arel::Attributes::Attribute.include ArelOrder::Extension
