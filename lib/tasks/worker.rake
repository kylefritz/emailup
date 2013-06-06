namespace :worker do

  task :bg => :environment do

    while true
      sleep 1
      puts "worker running"
      Email.where('sent=false').each do |email|
        puts "sending #{email.subject}"
      end
    end

  end

end