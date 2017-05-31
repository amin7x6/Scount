class Item < ApplicationRecord



belongs_to :category, optional: true
belongs_to :user, optional: true


validates(:barcode, { uniqueness: true })

# before_initialize :set_defaults
#
# def
#   self.set_defaults ||= 0
# end


end
