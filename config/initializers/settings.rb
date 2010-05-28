if Settings.table_exists?
  Settings.admin_user = (ENV['admin_user'] ? ENV['admin_user'] : 'abc')
  Settings.admin_password = (ENV['admin_password'] ? ENV['admin_password'] : 'abc')
end