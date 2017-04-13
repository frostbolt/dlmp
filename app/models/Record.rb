class Record < ActiveRecord::Base
	validates :id_host, presence: true
	validates :block_expires, presence: true
end