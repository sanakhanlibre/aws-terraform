
resource "aws_dynamodb_table" "my_table" {
  name         = "student-table"
  hash_key     = "ID"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "ID"
    type = "S"
  }
}

resource "aws_dynamodb_table_item" "table-items" {
  for_each = local.tf_data
  table_name = aws_dynamodb_table.my_table.name
  hash_key   = aws_dynamodb_table.my_table.hash_key
  item       = jsonencode(each.value)
}
