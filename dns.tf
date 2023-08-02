locals {
  root = "korosuke613.dev"
}

resource "cloudflare_zone" "korosuke613" {
  account_id = var.account_id
  zone = local.root
}

resource "cloudflare_record" "korosuke613_A_1" {
  name            = local.root
  proxied         = false
  type            = "A"
  value           = "185.199.111.153"
  zone_id         = cloudflare_zone.korosuke613.id
}

resource "cloudflare_record" "korosuke613_A_2" {
  name            = local.root
  proxied         = false
  type            = "A"
  value           = "185.199.110.153"
  zone_id         = cloudflare_zone.korosuke613.id
}

resource "cloudflare_record" "korosuke613_A_3" {
  name            = local.root
  proxied         = false
  type            = "A"
  value           = "185.199.109.153"
  zone_id         = cloudflare_zone.korosuke613.id
}

resource "cloudflare_record" "korosuke613_A_4" {
  name            = local.root
  proxied         = false
  type            = "A"
  value           = "185.199.108.153"
  zone_id         = cloudflare_zone.korosuke613.id
}

resource "cloudflare_record" "korosuke613_AAAA_1" {
  name            = local.root
  proxied         = false
  type            = "AAAA"
  value           = "2606:50c0:8003::153"
  zone_id         = cloudflare_zone.korosuke613.id
}

resource "cloudflare_record" "korosuke613_AAAA_2" {
  name            = local.root
  proxied         = false
  type            = "AAAA"
  value           = "2606:50c0:8002::153"
  zone_id         = cloudflare_zone.korosuke613.id
}

resource "cloudflare_record" "korosuke613_AAAA_3" {
  name            = local.root
  proxied         = false
  type            = "AAAA"
  value           = "2606:50c0:8001::153"
  zone_id         = cloudflare_zone.korosuke613.id
}

resource "cloudflare_record" "korosuke613_AAAA_4" {
  name            = local.root
  proxied         = false
  type            = "AAAA"
  value           = "2606:50c0:8000::153"
  zone_id         = cloudflare_zone.korosuke613.id
}

resource "cloudflare_record" "www_korosuke613_CNAME" {
  name            = "www"
  proxied         = false
  type            = "CNAME"
  value           = "korosuke613.github.io"
  zone_id         = cloudflare_zone.korosuke613.id
}

resource "cloudflare_record" "_atproto_korosuke613_dev_TXT" {
  name            = "_atproto"
  proxied         = false
  type            = "TXT"
  value           = "did=did:plc:3ufnedn4mcqucrvs7awb4ffd"
  zone_id         = cloudflare_zone.korosuke613.id
}

resource "cloudflare_record" "_github-pages-challenge-korosuke613_korosuke613_dev_TXT" {
  name            = "_github-pages-challenge-korosuke613"
  proxied         = false
  type            = "TXT"
  value           = "fcb70d03c1a01a4d5436ef3403a617"
  zone_id         = cloudflare_zone.korosuke613.id
}
