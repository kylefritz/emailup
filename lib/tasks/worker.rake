namespace :worker do

  task :bg => :environment do

    while true
      sleep 1
      puts "worker running"
      Email.where('sent=false').each do |email|
        User.all.each do |user|
          puts "sending #{email.subject} to #{user.email}"
          GroupMailer.group_email(email, user)
        end
        email.sent = true
        email.save
      end
    end

  end

end