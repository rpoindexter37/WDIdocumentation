class Relationship < ActiveRecord::Base
  belongs_to :article
  belongs_to :ruby
end
