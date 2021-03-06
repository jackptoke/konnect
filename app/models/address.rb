class Address < ApplicationRecord
    enum state: { NT: 0, NSW: 1, ACT: 2, VIC: 3, QLD: 4, SA: 5, WA: 6, TAS: 7}
    has_one :interpreter_detail
    accepts_nested_attributes_for :interpreter_detail, allow_destroy: true
end
