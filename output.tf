# Output
output "tf_01_FGT_Cluster_Public_IP" {
  value       = aws_eip.eip-shared.public_ip
  description = "Public IP address for the Cluster"
}
output "tf_02_FGT_Active_MGMT_Public_IP" {
  value       = aws_eip.eip-mgmt1.public_ip
  description = "Public IP address for the Active FortiGate's MGMT interface"
}
output "tf_03_FGT_Passive_MGMT_Public_IP" {
  value       = aws_eip.eip-mgmt2.public_ip
  description = "Public IP address for the Passive FortiGate's MGMT interface"
}
output "tf_04_FGT_Username" {
  value       = "admin"
  description = "Default Username for FortiGate Cluster"
}
output "tf_05_FGT_Password" {
  value       = aws_instance.fgt1.id
  description = "Default Password for FortiGate Cluster"
}
output "tf_06_Linux_Public_IP" {
  value       = aws_instance.instance-mgmt.public_ip
  description = "Linux Instance Public IP"
}
output "tf_07_TransitGwy_ID" {
  value       = aws_ec2_transit_gateway.TGW-XAZ.id
  description = "Transit Gateway ID"
}