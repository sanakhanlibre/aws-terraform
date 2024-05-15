
resource "aws_dynamodb_table" "dynamodb-table" {
  name           = var.table_name
  billing_mode   = var.billing_mode
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
  hash_key       = var.hash_key
  range_key      = var.range_key

  attribute {
    name = var.attr1
    type = "N"
  }

  attribute {
    name = var.attr2
    type = "N"
  }

  attribute {
    name = var.attr3
    type = "N"
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = false
  }

  global_secondary_index {
    name               = "TableIndex"
    hash_key           = var.attr2
    range_key          = var.attr3
    write_capacity     = 5
    read_capacity      = 5
    projection_type    = "INCLUDE"
    non_key_attributes = [ var.attr1 ]
  }

  tags = {
    Name        = var.tags
    Environment = var.env
  }
}
