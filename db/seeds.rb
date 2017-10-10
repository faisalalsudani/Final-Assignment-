Student.destroy_all
Batch.destroy_all
Evaluation.destroy_all


batch1 = Batch.create!(name: "Batch #10", startdate: "28-08-2017", enddate: "08-11-2017")
batch2 = Batch.create!(name: "Batch #11", startdate: "28-10-2017", enddate: "08-01-2018")

student1 = Student.create!(first_name: "Faisal", last_name: "Al-Sudani", label: "Green", photo: "no.pic" ,batch: batch2)
student2 = Student.create!(first_name: "JOB", last_name: "Weeda", label: "Red", photo: "no.pic" ,batch: batch2)
student3 = Student.create!(first_name: "Tristan", last_name: "kwat", label: "Yello", photo: "no.pic" ,batch: batch1)
student4 = Student.create!(first_name: "Kevin", last_name: "De Bruin", label: "Yello", photo: "no.pic" ,batch: batch1)
student5 = Student.create!(first_name: "Cristiano", last_name: "Ronaldo", label: "Green", photo: "no.pic" ,batch: batch2)
student6 = Student.create!(first_name: "Serio", last_name: "Ramos", label: "Green", photo: "no.pic" ,batch: batch2)
student7 = Student.create!(first_name: "Alvaro", last_name: "Morata", label: "Red", photo: "no.pic" ,batch: batch1)
student8 = Student.create!(first_name: "Lionel", last_name: "Messi", label: "Green", photo: "no.pic" ,batch: batch2)

evaluation1 = Evaluation.create!(remarks: "first question evaluation", student: student1)
evaluation3 = Evaluation.create!(remarks: "Nice job Job", student: student2)
