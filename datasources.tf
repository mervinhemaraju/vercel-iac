# Fetch secrets from Doppler secrets manager
data "doppler_secrets" "apps" {
  project = "apps-creds"
}
