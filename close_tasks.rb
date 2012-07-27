namespace :redmine do
  namespace :task do
    desc <<-END_DESC
Close tickets with status 'resolved' and not changed for more than a week.
END_DESC
    task :close => :environment do
      
    end
  end
end
