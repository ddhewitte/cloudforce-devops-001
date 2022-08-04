# cloudforce-devops-001
Cloudforce Devops 001 - Terraform X AWS

Catatan sebelum mulai :
- untuk melihat step by step bisa melalui commit di : 
  https://github.com/ddhewitte/cloudforce-devops-001/commits/master
- aws key dan secret di hide 3 char terakhir
- dokumentasi resmi terraform dan AWS
  https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
  https://registry.terraform.io/providers/hashicorp/aws/latest/docs

Step untuk menjalankan terraform
1. terraform init 			=> untuk initialize ketika script telah selesai dikerjakan
2. terraform validate		=> untuk pengecekan/validasi kode yang kita kerjakan
3. terraform plan			=> mendeskripsikan ulang pekerjaan
4. terraform apply			=> menjalankan script 
5. terraform destroy		=> menghapus semua resources infra yg kita buat

Step untuk memulai Membuat Instance:
1. Tentukan dan deskripsikan provider yang digunakan, dalam hal ini AWS
2. Masukkan nilai secret dan key access AWS (Jika sudah pernah ada biasanya di Mac ada di folder .aws di path /Users/ddhewitte ) 
3. Buat resources dan masukkan perintah untuk membuat Instance (commit 1)
   - AMI ID nya bisa dilihat di halaman web AWS ketika melihat daftar OS image
4. terraform validate
5. terraform plan
6. terraform apply

Step untuk mengubah Instance:
1. Misal mengubah name/tag instance
2. terraform validate
3. terraform plan
4. terraform apply