# encoding: UTF-8
# frozen_string_literal: true

require 'bundler'
Bundler.require :default, :development, :test

class FakeRecord
  class Connection
    def quote_table_name(name)
      "`#{name}`"
    end

    def quote_column_name(name)
      "`#{name}`"
    end

    def quote(value)
      String === value ? "'#{value}'" : value
    end
  end

  class << self
    attr_accessor :connection
  end

  self.connection = Connection.new
end

class ArelToSQLTest < Test::Unit::TestCase
  def test_order
    table = Arel::Table.new(:users)
    assert_equal '`users`.`name` ASC', table[:name].order_asc
  end

  def setup
    super
    Arel::Table.engine = FakeRecord
  end
end
