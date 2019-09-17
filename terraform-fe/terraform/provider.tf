# Configure the FlexibleEngine Provider
provider "flexibleengine" {
  domain_name = "OCB0001659"
  user_name   = "mohit.vohra"
  tenant_name = "eu-west-0"
  password    = "Benelli@1234"
  auth_url    = "https://iam.eu-west-0.prod-cloud-ocb.orange-business.com/v3"
  region      = "eu-west-0"
}

resource "flexibleengine_compute_instance_v2" "basic" {
  name            = "Mohit-basic"
  image_id        = "671d11c3-7c4b-4010-9a19-68e5922e0869"
  flavor_id       = "t2.small"
  key_pair        = "mohit"
  security_groups = ["default"]

  metadata = {
    this = "that"
  }

  network {
    name = "1fd7a904-2367-4a43-ae49-1351588387d6"
  }
}
