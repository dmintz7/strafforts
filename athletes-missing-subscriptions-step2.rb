#!/usr/bin/env ruby

ActiveRecord::Base.connection.exec_query("UPDATE subscription_plans SET name = 'Lifetime PRO' WHERE name = 'Lifetime'")