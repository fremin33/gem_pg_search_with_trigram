class Article < ApplicationRecord
  include PgSearch
  pg_search_scope  :search_by_title,
                      :against => :title,
                      :using => {
                        :trigram => {
                          :threshold => 0.1
                        }
                      }
end
