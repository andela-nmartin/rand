json.array!(@timetracks) do |timetrack|
  json.extract! timetrack, :id, :date, :user_id, :project_id, :total_time
  json.url timetrack_url(timetrack, format: :json)
end
