#!/usr/bin/env ruby
require 'rake'

if ENV['DB_ENGINE'] == 'postgresql'
	results = ActiveRecord::Base.connection.exec_query("SELECT id from athletes where id not in (SELECT athlete_id from subscriptions where is_active =true)")
else
	results = ActiveRecord::Base.connection.exec_query("SELECT id from athletes where id not in (SELECT athlete_id from subscriptions where is_active =1)")
end

ids = ""
for id in results
        id_temp = id.values.to_s.delete_prefix("[").delete_suffix("]")
        ids=ids + "," + id_temp
end

puts "athletes:apply_pro PLAN=""Lifetime"" ID="+ids.delete_prefix(",")

if ENV['DB_ENGINE'] == 'postgresql'
	ActiveRecord::Base.connection.exec_query("UPDATE athletes SET email_confirmed = true WHERE email_confirmed = false;")
else
	ActiveRecord::Base.connection.exec_query("UPDATE athletes SET email_confirmed = 1 WHERE email_confirmed = 0;")
end

ActiveRecord::Base.connection.exec_query("UPDATE subscription_plans SET name = 'Lifetime' WHERE name = 'Lifetime PRO';")