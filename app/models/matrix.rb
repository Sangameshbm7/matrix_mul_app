class Matrix < ApplicationRecord
	validates :rows, :columns, numericality: { only_integer: true }
end
