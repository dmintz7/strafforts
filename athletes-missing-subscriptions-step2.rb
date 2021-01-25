#!/usr/bin/env ruby

ActiveRecord::Base.connection.exec_query("UPDATE subscription_plans SET name = 'Lifetime Pro' WHERE name = 'Lifetime'")