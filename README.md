# cloudforce-devops-001
Cloudforce Devops 001 - Terraform X AWS

#Catatan sebelum mulai :
- untuk melihat step by step bisa melalui commit di : 
  https://github.com/ddhewitte/cloudforce-devops-001/commits/master
- aws key dan secret di hide 3 char terakhir
- dokumentasi resmi terraform dan AWS
  https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
  https://registry.terraform.io/providers/hashicorp/aws/latest/docs
- setiap kita melakukan plan , terraform akan menjalankan refesh state untuk melihat status terakhir di cloud
- jika kita membuat resources baru, maka resources yg lama tidak akan dirun lagi

#Step untuk menjalankan terraform
1. terraform init 			=> untuk initialize ketika script telah selesai dikerjakan
2. terraform validate		=> untuk pengecekan/validasi kode yang kita kerjakan
3. terraform plan			=> mendeskripsikan ulang pekerjaan
4. terraform apply			=> menjalankan script 
5. terraform destroy		=> menghapus semua resources infra yg kita buat

#Step untuk memulai Membuat Instance/Resources (commit 1) : 
1. Tentukan dan deskripsikan provider yang digunakan, dalam hal ini AWS
2. Masukkan nilai secret dan key access AWS (Jika sudah pernah ada biasanya di Mac ada di folder .aws di path /Users/ddhewitte ) 
3. Buat resources dan masukkan perintah untuk membuat Instance 
   - AMI ID nya bisa dilihat di halaman web AWS ketika melihat daftar OS image
4. terraform validate
5. terraform plan
6. terraform apply

#Step untuk mengubah Instance/Resources (commit 2):
1. Misal mengubah name/tag instance
2. terraform validate
3. terraform plan
4. terraform apply

#Step untuk menghapus Instance per Resources ( Cara pertama ):
1. Hapus resources yang akan dihapus di editor secara manual
2. terraform apply

#Step untuk menghapus Instance per Resources ( Cara kedua ):
1. terraform destroy -target aws_instance.my-first-instance

#Step untuk menghapus seluruh infra (hati-hati!) :
1. terraform destroy

#Step untuk membuat multiple instance , menggunakan Loop :
1. Buat resources baru
2. Tambahkan attribut count
3. Untuk mengambil nilai index loop bisa menggunakan perintah ${count.index}
4. terraform plan
5. terraform apply
