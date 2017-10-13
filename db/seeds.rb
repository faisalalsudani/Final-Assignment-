Student.destroy_all
Batch.destroy_all
Evaluation.destroy_all


batch1 = Batch.create!(name: "Batch #10", startdate: "28-08-2017", enddate: "08-11-2017")

student1 = Student.create!(
  first_name: "KEYLOR",
  last_name: "NAVAS",
  label: "Green",
  photo: "http://www.realmadrid.com/img/vertical_220px/keylor.jpg",
  batch: batch1
)
student2 = Student.create!(
  first_name: "DANIEL",
  last_name: "CARVAJAL",
  label: "Green",
  photo: "http://www.realmadrid.com/img/vertical_220px/carvajal.jpg",
  batch: batch1
)
student3 = Student.create!(
  first_name: "SERGIO",
  last_name: "RAMOS",
  label: "Green",
  photo: "http://www.realmadrid.com/img/vertical_220px/ramos_4am5981.jpg",
  batch: batch1
)
student4 = Student.create!(
  first_name: "MARCELO",
  last_name: "S.",
  label: "Green",
  photo: "http://www.realmadrid.com/img/vertical_220px/marcelo_4am6099.jpg",
  batch: batch1
)
student5 = Student.create!(
  first_name: "CRISTIANO",
  last_name: "RONALDO",
  label: "Green",
  photo: "http://www.realmadrid.com/img/vertical_220px/cristiano.jpg",
  batch: batch1
)
student6 = Student.create!(
  first_name: "ZINEDINE",
  last_name: "ZIDANE",
  label: "Green",
  photo: "http://www.realmadrid.com/img/vertical_220px/zidane_4am5576.jpg",
  batch: batch1
)

eva = Evaluation.create!(remarks: "Good work!", green:true, student: student1)
eva = Evaluation.create!(remarks: "Good work!", yellow:true, student: student2)
eva = Evaluation.create!(remarks: "Good work!", red:true, student: student3)
eva = Evaluation.create!(remarks: "Good work!", green:true, student: student4)
eva = Evaluation.create!(remarks: "Good work!", yellow:true, student: student5)
eva = Evaluation.create!(remarks: "Good work!", red:true, student: student6)
