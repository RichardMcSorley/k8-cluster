resource "null_resource" "dns" {

# setup main hostname
provisioner "local-exec" {
    command = <<EOT
    curl -s -X POST "https://api.zeit.co/v2/domains/${var.do_domain}/records" \
      -H "Authorization: Bearer ${var.zeit_token}" \
      -H "Content-Type: application/json" \
      -d '{
        "name": "'@'",
        "type": "A",
        "value": "${element(var.connections, 0)}"
      }'
    EOT
  }

  # dynamic hostname
provisioner "local-exec" {
    command = <<EOT
    curl -s -X POST "https://api.zeit.co/v2/domains/${var.do_domain}/records" \
      -H "Authorization: Bearer ${var.zeit_token}" \
      -H "Content-Type: application/json" \
      -d '{
        "name": "*",
        "type": "A",
        "value": "${element(var.connections, 0)}"
      }'
    EOT
  }


# google site verification

provisioner "local-exec" {
    command = <<EOT
    curl -s -X POST "https://api.zeit.co/v2/domains/${var.do_domain}/records" \
      -H "Authorization: Bearer ${var.zeit_token}" \
      -H "Content-Type: application/json" \
      -d '{
        "name": "",
        "type": "TXT",
        "value": "google-site-verification=FEIiKz5dhgfhooBqgAL929j9Bb4EKK-iOO1b7bSLp5c"
      }'
    EOT
  }



# gsuit subdomain

provisioner "local-exec" {
    command = <<EOT
    curl -s -X POST "https://api.zeit.co/v2/domains/${var.do_domain}/records" \
      -H "Authorization: Bearer ${var.zeit_token}" \
      -H "Content-Type: application/json" \
      -d '{
        "name": "drive",
        "type": "CNAME",
        "value": "ghs.googlehosted.com."
      }'
    EOT
  }

  provisioner "local-exec" {
    command = <<EOT
    curl -s -X POST "https://api.zeit.co/v2/domains/${var.do_domain}/records" \
      -H "Authorization: Bearer ${var.zeit_token}" \
      -H "Content-Type: application/json" \
      -d '{
        "name": "groups",
        "type": "CNAME",
        "value": "ghs.googlehosted.com."
      }'
    EOT
  }
    provisioner "local-exec" {
    command = <<EOT
    curl -s -X POST "https://api.zeit.co/v2/domains/${var.do_domain}/records" \
      -H "Authorization: Bearer ${var.zeit_token}" \
      -H "Content-Type: application/json" \
      -d '{
        "name": "mail",
        "type": "CNAME",
        "value": "ghs.googlehosted.com."
      }'
    EOT
  }
      provisioner "local-exec" {
    command = <<EOT
    curl -s -X POST "https://api.zeit.co/v2/domains/${var.do_domain}/records" \
      -H "Authorization: Bearer ${var.zeit_token}" \
      -H "Content-Type: application/json" \
      -d '{
        "name": "sites",
        "type": "CNAME",
        "value": "ghs.googlehosted.com."
      }'
    EOT
  }
provisioner "local-exec" {
    command = <<EOT
    curl -s -X POST "https://api.zeit.co/v2/domains/${var.do_domain}/records" \
      -H "Authorization: Bearer ${var.zeit_token}" \
      -H "Content-Type: application/json" \
      -d '{
        "name": "calendar",
        "type": "CNAME",
        "value": "ghs.googlehosted.com."
      }'
    EOT
  }

  # gsuite gmail

provisioner "local-exec" {
    command = <<EOT
    curl -s -X POST "https://api.zeit.co/v2/domains/${var.do_domain}/records" \
      -H "Authorization: Bearer ${var.zeit_token}" \
      -H "Content-Type: application/json" \
      -d '{
        "name": "google._domainkey",
        "type": "TXT",
        "value": "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqhu2LW7J12YCNq5abADiM2kEq5i9qBM5KbzroDjwE3VwtKB4Bft3FgRaAyXzB8fn35sIpjVs9AZU8b9xBKz9rGbxgmyEsQyn8JkKuugzW8Wvi7tzsjw1L1RqN8vAjMyf2KRaemQeJaAGuUA1Rh6KwZbdtC1Lz6Lyt16biaDYQlb5FubRsa6BJ0JDzwRALMxSYIbHjXT0iQQDr4ZGULd2KJtFn5DLpJ6yXmupv0nuUc/LukOE7EtDMozrScA/PmBL8xBwrOAP8nboUHUfHzgibEJZqMAJym7fwLrVCybvldvZ5qZPAVQJD/IcniwNTFS4V0cX5cKvfG2z/LrYz/FV7wIDAQAB"
      }'
    EOT
  }
provisioner "local-exec" {
    command = <<EOT
    curl -s -X POST "https://api.zeit.co/v2/domains/${var.do_domain}/records" \
      -H "Authorization: Bearer ${var.zeit_token}" \
      -H "Content-Type: application/json" \
      -d '{
        "name": "",
        "type": "TXT",
        "value": "v=spf1 include:_spf.google.com ~all"
      }'
    EOT
  }
provisioner "local-exec" {
    command = <<EOT
    curl -s -X POST "https://api.zeit.co/v2/domains/${var.do_domain}/records" \
      -H "Authorization: Bearer ${var.zeit_token}" \
      -H "Content-Type: application/json" \
      -d '{
        "name": "",
        "type": "TXT",
        "value": "v=DMARC1; p=reject; rua=mailto:admin@unnielabs.com, mailto:richard@unnielabs.com"
      }'
    EOT
  }

provisioner "local-exec" {
    command = <<EOT
    curl -s -X POST "https://api.zeit.co/v2/domains/${var.do_domain}/records" \
      -H "Authorization: Bearer ${var.zeit_token}" \
      -H "Content-Type: application/json" \
      -d '{
        "name": "",
        "type": "MX",
        "value": "5 alt2.aspmx.l.google.com."
      }'
    EOT
  }

provisioner "local-exec" {
    command = <<EOT
    curl -s -X POST "https://api.zeit.co/v2/domains/${var.do_domain}/records" \
      -H "Authorization: Bearer ${var.zeit_token}" \
      -H "Content-Type: application/json" \
      -d '{
        "name": "",
        "type": "MX",
        "value": "5 alt1.aspmx.l.google.com."
      }'
    EOT
  }

  provisioner "local-exec" {
    command = <<EOT
    curl -s -X POST "https://api.zeit.co/v2/domains/${var.do_domain}/records" \
      -H "Authorization: Bearer ${var.zeit_token}" \
      -H "Content-Type: application/json" \
      -d '{
        "name": "",
        "type": "MX",
        "value": "10 alt4.aspmx.l.google.com"
      }'
    EOT
  }
  provisioner "local-exec" {
    command = <<EOT
    curl -s -X POST "https://api.zeit.co/v2/domains/${var.do_domain}/records" \
      -H "Authorization: Bearer ${var.zeit_token}" \
      -H "Content-Type: application/json" \
      -d '{
        "name": "",
        "type": "MX",
        "value": "10 alt3.aspmx.l.google.com"
      }'
    EOT
  }
  provisioner "local-exec" {
    command = <<EOT
    curl -s -X POST "https://api.zeit.co/v2/domains/${var.do_domain}/records" \
      -H "Authorization: Bearer ${var.zeit_token}" \
      -H "Content-Type: application/json" \
      -d '{
        "name": "",
        "type": "MX",
        "value": "1 aspmx.l.google.com."
      }'
    EOT
  }
# cleanup
  # provisioner "local-exec" {
  #   when = "destroy"
  #   command = "export RECORDS=$(curl -s 'https://api.zeit.co/v2/domains/${var.do_domain}/records' -H 'Authorization: Bearer ${var.zeit_token}') && export DOMAIN=${var.do_domain} && export ZEIT_TOKEN=${var.zeit_token} && node /mnt/c/projects/docker/terraform-rancher-hetzner/services/dns/delete.js"
  # }
}
