resource "aws_key_pair" "poc-kp-primary" {
  key_name   = "poc-kp-primary"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCQnV0h6AVwhdoDT8C8M7TOKX2d6B1uhN8GdoFw058tyBB++shwMa0c+qbIfFN2qKoJq/PfkJLMLLa0wS1ixmYTokyXwo2r9+dBPQMqye/M+Mj1jFzLIbH4jlnSvruL9PGHD5Y5P2a9I6iWDxjNDvBxAjgTD5k5dGfT27n8TJhNCqgm8OV6kH2zvPqhON2UQn4PK/0WE76tHpwDtQhdNNYOVgUprBPh5/rcsLKbfHHIZzzDqOlL/eTXT3WsQxGnOkWbeOsRF7lwULPQrOc23nQB5x8Mah6BjIv+GTlbsY9MxmzmDAzdFvFa6HCcm8RptBQ9jy9Uv9tecgJegQZc9TFZ"
}

resource "aws_key_pair" "poc-kp-secondary" {
  key_name   = "poc-kp-secondary"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCQnV0h6AVwhdoDT8C8M7TOKX2d6B1uhN8GdoFw058tyBB++shwMa0c+qbIfFN2qKoJq/PfkJLMLLa0wS1ixmYTokyXwo2r9+dBPQMqye/M+Mj1jFzLIbH4jlnSvruL9PGHD5Y5P2a9I6iWDxjNDvBxAjgTD5k5dGfT27n8TJhNCqgm8OV6kH2zvPqhON2UQn4PK/0WE76tHpwDtQhdNNYOVgUprBPh5/rcsLKbfHHIZzzDqOlL/eTXT3WsQxGnOkWbeOsRF7lwULPQrOc23nQB5x8Mah6BjIv+GTlbsY9MxmzmDAzdFvFa6HCcm8RptBQ9jy9Uv9tecgJegQZc9TFZ"
  provider = aws.ohio
}