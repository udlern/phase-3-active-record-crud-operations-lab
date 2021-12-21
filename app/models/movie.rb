class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        Movie.find_or_create_by(title: title)
    end
    def self.first_movie
        Movie.first
    end
    def self.last_movie
        self.last
    end
    def self.movie_count
        self.count
    end
    def self.find_movie_with_id(id)
        self.find(id)
    end
    def self.find_movie_with_attributes(title)
        self.find_by(title)
    end
def self.find_movies_after_2002
    self.where("release_date > ?", 2002)
end
def update_with_attributes(title)
    self.update(title)
end
def self.update_all_titles(title)
    self.update_all(title: title)
end
def self.delete_by_id(id)
    self.destroy(id)
end
def self.delete_all_movies
    self.destroy_all
end
end