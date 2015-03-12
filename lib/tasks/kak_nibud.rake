Rails.logger= Logger.new('log/tasks.log')
namespace :db do 
	desc "data transfer"
	task d2p: [:environment]  do
		highScore = HighScore.all
		highScore.each do |u|
			DstHighScore.new(game:u.game, score:u.score).save
		end
		Rails.logger.info "Complete"
	end
end
	desc "transfer"
	task :verbose do
		Rails.logger= Logger.new(STDOUT)
	end
class DstHighScore < ActiveRecord::Base
	establish_connection adapter: 'sqlite3', database: 'db/production.sqlite3'
	self.table_name = 'high_scores'
end