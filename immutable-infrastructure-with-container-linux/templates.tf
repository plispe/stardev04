data "template_file" "cloud-config" {
  template = "${file("${path.module}/templates/cloud-config.tpl")}"
}
