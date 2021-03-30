# README

Lelang Online Tugas UJIKOM

* yang diperlukan
* ruby versi 2.7 ke atas
* rails versi 6.0.0 ke atas
* Development mode Database pakai Sqlite
                 ActiveStorage pakai localstorage
                 Job Cronjob
* Production mode  Database pakai Postgresql
                 ActiveStorage pakai Amazon We Service S3
                 Job Heroku Scheduler


* tatacara instalasi ruby dan rails bisa akses tautan berikut https://gorails.com/setup/ubuntu/18.04

* setelah clone repository
* Bundle
* jalankan rails db:create
* jalankan rails db:migrate
* jalankan rails c lalu paste code berikut AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
* rails c dan jalankan foreman s
akses http://localhost:5000/
* untuk web yang sudah di hosting https://lelangonline.herokuapp.com/