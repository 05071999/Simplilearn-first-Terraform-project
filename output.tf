






output "publicip" {
  value       = aws_instance.dove-inst.public_ip
}

output "privateIP" {
  value       = aws_instance.dove-inst.private_ip
  
}

