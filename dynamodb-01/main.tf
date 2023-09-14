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
  table_name = aws_dynamodb_table.my_table.name
  hash_key = aws_dynamodb_table.my_table.hash_key
  item = <<EOF
  {
    "ID": {"S": "1"},
    "Name": {"S": "Ali"},
    "Class": {"S": "9th"}
  }
EOF
}