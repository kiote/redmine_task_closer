desc "Close tickets with status 'resolved' and not changed for more than a week."

namespace :redmine do
  namespace :task do
    task :close => :environment do
     issues = Issue.all(:conditions => ["status_id=3 and updated_on <= :a_week", {:a_week => 1.week.ago.to_s(:db)}])   
     issues.each do |issue|
      issue.update_attribute(:status, IssueStatus.find(5))
     end
    end
  end
end
