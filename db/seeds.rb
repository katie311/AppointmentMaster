10.times do
    doctor = Doctor.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        specialty: Faker::Job.field
    )
   
    10.times do 
      patient = Patient.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name
      )
  
      Appointment.create(
        doctor_id: doctor.id,
        patient_id: patient.id
      )
    end
  end
  
  puts "Data Seeded."