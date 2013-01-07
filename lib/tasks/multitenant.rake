#db_tasks = %w[db:migrate db:migrate:up db:migrate:down db:rollback db:forward db:seed_fu]

#namespace :multitenant do
#  db_tasks.each do |task_name|
#    desc "Run #{task_name} for each account"
#    task task_name => %w[environment db:load_config] do
#      Account.find_each do |account|
#        puts "Running #{task_name} for account#{account.id} (#{account.subdomain})"
#        account.scope_schema { Rake::Task[task_name].execute }
#      end
#    end
#  end
#end

#db_tasks.each do |task_name|
#  Rake::Task[task_name].enhance(["multitenant:#{task_name}"])
#end