task create_projects: :environment do
  20.times do |x|
    Project.create(name: "Project #{x}", description: "Dude man sup")
  end
end