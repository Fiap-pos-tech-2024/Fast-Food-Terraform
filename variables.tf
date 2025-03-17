variable "db_name" {
  description = "Nome do banco de dados"
  type        = string
  default     = "fastfood"
}

variable "db_username" {
  description = "Usuário do banco de dados"
  type        = string
}

variable "db_password" {
  description = "Senha do banco de dados"
  type        = string
}

variable "db_instance_class" {
  description = "Tipo de instância do banco de dados"
  type        = string
  default     = "db.t3.micro"
}
