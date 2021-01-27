class Race < ApplicationRecord
  validates :activity_id, :athlete_id, :race_distance_id, presence: true
  validates :activity_id, uniqueness: true

  belongs_to :activity, foreign_key: 'activity_id'
  belongs_to :athlete, foreign_key: 'athlete_id'
  belongs_to :race_distance, foreign_key: 'race_distance_id'

  after_save    :expire_cache
  after_destroy :expire_cache

  def expire_cache
    Rails.cache.delete(format(CacheKeys::META, athlete_id: athlete_id))
    Rails.cache.delete(format(CacheKeys::RACES_OVERVIEW, athlete_id: athlete_id))
    Rails.cache.delete(format(CacheKeys::RACES_RECENT, athlete_id: athlete_id))
    Rails.cache.delete(format(CacheKeys::RACES_YEAR, athlete_id: athlete_id, year: activity.start_date_local.year))
    Rails.cache.delete(format(CacheKeys::RACES_DISTANCE, athlete_id: athlete_id, race_distance_id: race_distance_id))
  end

  def self.find_all_by_athlete_id(athlete_id)
    results = includes(:race_distance, activity: [:workout_type, :gear])
                .where(athlete_id: athlete_id)
    results.empty? ? [] : results
  end

  def self.find_all_by_athlete_id_and_race_distance_id(athlete_id, race_distance_id)
    results = includes(:race_distance, activity: [:workout_type, :gear])
                .where(athlete_id: athlete_id, race_distance_id: race_distance_id)
    results.empty? ? [] : results
  end

  def self.find_all_by_athlete_id_and_year(athlete_id, year)
    results = includes(:race_distance, activity: [:workout_type, :gear])
                .select('races.*')
                .joins('JOIN activities a ON a.id = races.activity_id')
                .where('races.athlete_id = ? AND EXTRACT(year FROM a.start_date_local) = ?', athlete_id, year)
    results.empty? ? [] : results
  end

  def self.find_years_and_counts_by_athlete_id(athlete_id)
    sql = "SELECT EXTRACT(year FROM start_date_local) AS yyyy, COUNT(1)
FROM activities AS a
JOIN races AS r ON a.id = r.activity_id
WHERE r.athlete_id = #{athlete_id}
GROUP BY 1
ORDER BY 1 DESC"
    if ENV['DB_ENGINE'] == 'postgresql'
        ActiveRecord::Base.connection.execute(sql).values
    else
        ActiveRecord::Base.connection.execute(sql)
    end
  end
end
