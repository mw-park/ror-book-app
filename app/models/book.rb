class Book < ApplicationRecord
    def check_out!
        # Don’t allow a book that’s already checked out to be checked out again.
        return false if checked_out?

        update(checked_out: true)
    end

    def return!
        update(checked_out: false)
    end
end