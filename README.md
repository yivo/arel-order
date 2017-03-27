## Adds several methods which help to build `ORDER BY` statements.

[![Gem Version](https://badge.fury.io/rb/arel-order.svg)](https://badge.fury.io/rb/arel-order)
[![Build Status](https://travis-ci.org/yivo/arel-order.svg?branch=master)](https://travis-ci.org/yivo/arel-order)

## About
`Àrel::Attributes::Attribute` receives several methods which help to build `ORDER BY` statements.

## Usage
```ruby
# Query posts: posts with category get bigger priority.
t = Post.arel_table
Post.order("(#{t[:category_id]} > 0), #{t[:position].order_asc}")
# SELECT * FROM `posts` ORDER BY (`posts`.`category_id` IS NOT NULL), `posts`.`position` ASC
```

## Installing gem
Add to your Gemfile:
```ruby
gem 'arel-order', '~> 1.0'
```

## Running Tests
Install bundler:
```bash
gem install bundler
```

Install dependencies:
```bash
cd arel-order && bundle
```

Run tests:
```bash
cd arel-order && appraisal rake test
```
