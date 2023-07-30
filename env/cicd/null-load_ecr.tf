resource "null_resource" "load_ecr" {
  triggers = {
    always_run = timestamp()
  }
   ### Windows machine
  provisioner "local-exec" {
    command = "powershell.exe -Command \"./load_ecr.sh ${var.karpenter_version} ; Write-Output '************************************************************************************'\""
  }
  #depends_on = [aws_ecr_repository.busybox]
  ###  Unix/ Linux systems
  # provisioner "local-exec" {
  #   on_failure  = fail
  #   when        = create
  #   interpreter = ["/usr/bin/bash", "-c"]
  #   command     = <<EOT
  #       ./load_ecr.sh ${var.karpenter_version}
  #       echo "************************************************************************************"
  #    EOT
  # }
}