# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110916022307) do

  create_table "products", :force => true do |t|
    t.string   "name",             :null => false
    t.decimal  "price",            :null => false
    t.integer  "quantity",         :null => false
    t.date     "released_at",      :null => false
    t.datetime "last_purchase_at", :null => false
    t.datetime "last_sale_at",     :null => false
  end

end
