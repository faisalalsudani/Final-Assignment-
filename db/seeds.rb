Student.destroy_all
Batch.destroy_all
Evaluation.destroy_all


batch1 = Batch.create!(name: "Batch #1", start_date: "28-08-2017", end_date: "08-11-2017")

student1 = Student.create!(
first_name: "KEYLOR",
last_name: "NAVAS",
photo: "http://www.realmadrid.com/img/vertical_220px/keylor.jpg",
batch: batch1)

student2 = Student.create!(
first_name: "SERGIO",
last_name: "RAMOS",
photo: "http://www.realmadrid.com/img/vertical_220px/ramos_4am5981.jpg" ,
batch: batch1)

student3 = Student.create!(
first_name: "MARCELO",
last_name: "R.",
photo: "http://www.realmadrid.com/img/vertical_220px/marcelo_4am6099.jpg" ,
batch: batch1)

student4 = Student.create!(
first_name: "LUCA",
last_name: "MODRIC",
photo: "http://www.realmadrid.com/img/vertical_220px/modric.jpg" ,
batch: batch1)

student5 = Student.create!(
first_name: "FRNASICO",
last_name: "ISCO",
photo: "http://www.realmadrid.com/img/vertical_220px/isco.jpg" ,
batch: batch1)

student6 = Student.create!(
first_name: "Cristiano",
last_name: "RONALDO",
photo: "http://www.realmadrid.com/img/vertical_220px/cristiano.jpg" ,
batch: batch1)

student7 = Student.create!(
first_name: "GARETH",
last_name: "BALE",
photo: "http://www.realmadrid.com/img/vertical_220px/bale.jpg" ,
batch: batch1)

student8 = Student.create!(
first_name: "ZINE",
last_name: "ZIDAN",
photo: "http://www.realmadrid.com/img/vertical_220px/zidane_4am5576.jpg" ,
batch: batch1)

eva1 = Evaluation.create!(remarks: "Good work", green: true, yellow:false, red:false, student: student1, created_at: (rand*10).days.ago)
eva2 = Evaluation.create!(remarks: "Good work", green: false, yellow:true, red:false, student: student2, created_at: (rand*10).days.ago)
eva3 = Evaluation.create!(remarks: "Good work", green: false, yellow:false, red:true, student: student3, created_at: (rand*10).days.ago)
eva4 = Evaluation.create!(remarks: "Good work", green: true, yellow:false, red:false, student: student4, created_at: (rand*10).days.ago)
eva5 = Evaluation.create!(remarks: "Good work", green: false, yellow:true, red:false, student: student5, created_at: (rand*10).days.ago)
eva6 = Evaluation.create!(remarks: "Good work", green: false, yellow:false, red:true, student: student6, created_at: (rand*10).days.ago)
eva7 = Evaluation.create!(remarks: "Good work", green: true, yellow:false, red:false, student: student7, created_at: (rand*10).days.ago)
eva8 = Evaluation.create!(remarks: "Good work", green: false, yellow:true, red:false, student: student8, created_at: (rand*10).days.ago)
