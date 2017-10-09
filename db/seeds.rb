Student.destroy_all
Batch.destroy_all


batch1 = Batch.create!(name: "Batch #9", startdate: "28-08-2017", enddate: "08-11-2017")
batch2 = Batch.create!(name: "Batch #10", startdate: "28-10-2017", enddate: "08-01-2018")

student1 = Student.create!(first_name: "Faisal", last_name: "Al-Sudani", label: "Green", photo: "https://scontent-ams3-1.xx.fbcdn.net/v/t1.0-9/15326528_1553583507990817_59987873800471544_n.jpg?oh=8b3e979c36a9bae42c95737079f2793f&oe=5A75FBCD" ,batch: batch2)
