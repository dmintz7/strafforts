#!/usr/bin/env ruby
require 'rake'

results = ActiveRecord::Base.connection.exec_query("SELECT id from athletes where id not in (SELECT athlete_id from subscriptions where is_active =1)")
ids = ""
for id in results
        id_temp = id.values.to_s.delete_prefix("[").delete_suffix("]")
        ids=ids + "," + id_temp
end

puts "athletes:apply_pro PLAN=""Lifetime"" ID="+ids.delete_prefix(",")
ActiveRecord::Base.connection.exec_query("UPDATE subscription_plans SET name = 'Lifetime' WHERE name = 'Lifetime Pro'")