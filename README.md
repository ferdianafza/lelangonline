# README

Lelang Online Tugas UJIKOM

# Instruction
* yang diperlukan
* ruby versi 2.7 ke atas
* rails versi 6.0.0 ke atas
* Development mode Database pakai Sqlite
                 ActiveStorage pakai localstorage
                 Job Cronjob
* Production mode  Database pakai Postgresql
                 ActiveStorage pakai Amazon Web Service S3
                 Job Heroku Scheduler
* Fitur user : register login logout bid barang
* Fitur admin : register login logout Crud Barang generate laporan
* Fitur petugas : login logout Crud Barang Buka/Tutup Lelang generate laporan


* tatacara instalasi ruby dan rails bisa akses tautan berikut https://gorails.com/setup/ubuntu/18.04

* setelah clone repository
* Bundle
* jalankan rails db:create
* jalankan rails db:migrate
* jalankan rails c lalu paste code berikut AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development? AdminUser.create!(email: 'petugas@example.com', password: 'password', password_confirmation: 'password', role: 'petugas') if Rails.env.development?
* rails c dan jalankan foreman s
akses http://localhost:5000/
* untuk web yang sudah di hosting https://lelangonline.herokuapp.com/
* sub domain http://www.lelangonline.site/
* login user https://lelangonline.herokuapp.com/users/sign_in
        farisafza201002@gmail.com
        123123
* Login Admin/Petugas https://lelangonline.herokuapp.com/admin
        petugas email petugas@example.com
                pass  password
        admin   email admin@example.com
                pass  password
