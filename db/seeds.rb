Meetups = HashWithIndifferentAccess.new(JSON.parse(File.read(Rails.root.join('config', 'meetups.json'))))

Meetups[:meetups].each do |meetup|
  ActiveRecord::Base.transaction do
    m = Meetup.find_or_create_by!(meetup.slice(:title, :datetime))
    l = Location.find_or_create_by!(address: meetup[:location], meetup: m)

    meetup[:reports].each do |report|
      s = Speaker.find_or_create_by!(report[:speaker])
      r = Report.find_or_create_by!(theme: report[:theme], speaker: s, meetup: m)
    end
  end
end
