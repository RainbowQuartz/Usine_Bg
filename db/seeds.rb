require 'faker'

10.times do
  assembly = Assembly.create(name: Faker::Pokemon.name)
end

10.times do
  part = Part.create(part_number: Faker::Pokemon.move)
end

10.times do
  assembly_id = rand((Assembly.first.id)..(Assembly.last.id))
  part_id = rand((Part.first.id)..(Part.last.id))
  assembly = Assembly.find(assembly_id)
  part = Part.find(part_id)
  assembly.parts << part
end
