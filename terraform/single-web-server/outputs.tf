output "public_ip" {
  value = "${aws_instance.single-web-server.public_ip}"  
}

output "public_dns" {
  value = "${aws_instance.single-web-server.public_dns}"  
}

output "web_link" {
  value = "http://${aws_instance.single-web-server.public_ip}:8080/"  
}