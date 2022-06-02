# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# OAuth.jp G-Suite Tenant
Libsaml::IdentityProvider.create!(
  entity_id: 'https://accounts.google.com/o/saml2?idpid=C0303aryf',
  sso_url: 'https://accounts.google.com/o/saml2/idp?idpid=C0303aryf',
  certificate: <<~PEM
    -----BEGIN CERTIFICATE-----
    MIIDdDCCAlygAwIBAgIGAXt2zjUzMA0GCSqGSIb3DQEBCwUAMHsxFDASBgNVBAoTC0dvb2dsZSBJ
    bmMuMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MQ8wDQYDVQQDEwZHb29nbGUxGDAWBgNVBAsTD0dv
    b2dsZSBGb3IgV29yazELMAkGA1UEBhMCVVMxEzARBgNVBAgTCkNhbGlmb3JuaWEwHhcNMjEwODI0
    MDYxNzA2WhcNMjYwODIzMDYxNzA2WjB7MRQwEgYDVQQKEwtHb29nbGUgSW5jLjEWMBQGA1UEBxMN
    TW91bnRhaW4gVmlldzEPMA0GA1UEAxMGR29vZ2xlMRgwFgYDVQQLEw9Hb29nbGUgRm9yIFdvcmsx
    CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9ybmlhMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A
    MIIBCgKCAQEAoyDlP3oY39NoPw/TQFFLApdmmEQfWLd6VJjualrM+HWSSAjgtK6UKwg7JahMlo5i
    4QAulLWKNppKtu0k8JQn2I3apL+RFwNEPiLQ1TDEzJJWPfDY/0/SKatpdbk4OfBniFlVyIEUh68b
    0I4jU1o33sVoqKf3BCE+I35bOed+lNlmdikgzu4ZCwxMKXSO+NVDRmlqSkI+wT/hvK0nYC0T8qTn
    sY8615/qsKwfKiZhAQRexuLyqdPWKMge7Q57rqAkfG+OFpF4TeBA1cxZv0b8p1em2EBjxhj0Jdsv
    vt8i1o3ZBuR/M89Up3LudUv9m+j1hPSK88PxJMtpnxuggRCo+QIDAQABMA0GCSqGSIb3DQEBCwUA
    A4IBAQByMY0XDC/vwkUB8DJt4w39og5AvDXSrrLSUHI1p5sS9rSCZwksgsxrype00qdWkD+ohhQ5
    kJ8FxS1baOYykC66bfbvYO9TgZw0FVRlx+loDl32m5Sq463aQ2vP1oet4idSJL+Sm+djTXjLUYTq
    prYOVdfeRNo9Gem0MUCSrVpqLK7skjL6dyOyI3EpKcyG2vwtDm6VmM+P1zqcdU0C+yvKRU3clMZd
    33+/Ad6tisTjykGCLHzUgQMOM7KE5/SU+D1Y5actP7+Ko/NpMWLBOJj0CRPlLfCJDBTsksWgzD1m
    0NjeGaaXxE/qa5a0BBsf85eYCV92AXV3oBk08OpcG/bS
    -----END CERTIFICATE-----
  PEM
)