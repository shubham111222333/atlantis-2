# Define a null resource with local-exec provisioner
resource "null_resource" "create_file" {
  provisioner "local-exec" {
    command = "echo 'This is a test file created by Terraform' > testfile.txt"
  }
}

# Output the path of the created file
output "file_path" {
  value = "testfile.txt"
}
