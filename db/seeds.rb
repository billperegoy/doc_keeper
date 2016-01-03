# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Section.delete_all
SubSection.delete_all
verification = Section.create({name: "Verification"})
SubSection.create({name: "sim_lsf", section_id: verification.id})
SubSection.create({name: "project setup", section_id: verification.id})
SubSection.create({name: "regression_tool", section_id: verification.id})

gvp = Section.create({name: "GVP"})
SubSection.create({name: "project setup", section_id: gvp.id})
SubSection.create({name: "fixing hung regression", section_id: gvp.id})

s2 = Section.create({name: "LSF Config"})
