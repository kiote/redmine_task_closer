namespace :redmine do
  namespace :task do
    desc <<-END_DESC
Close tickets with status 'resolved' and not changed for more than a week.
END_DESC
    task :close => :environment do
     issues = Issue.all(:conditions => ["status_id=3 and updated_on <= :a_week", {:a_week => 1.week.ago.to_s(:db)}])   
     issues.each do |issue|
      issue.update_attribute(:status, 5)
     end
    end
  end
end
