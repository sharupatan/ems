require 'ransack'

Ransack.configure do |config|
    config.search_key = :q
    config.ignore_unknown_conditions = true
    config.hide_sort_order_indicators = true
end