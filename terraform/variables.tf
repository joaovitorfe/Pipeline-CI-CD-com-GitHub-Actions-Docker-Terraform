
variable "region" {
  default = "us-east-1"
}

variable "ami" {
  default = "ami-0c55b159cbfafe1f0"
}

variable "key_name" {
  description = "Nome da chave SSH para acessar a EC2"
}

variable "docker_image" {
  description = "Imagem Docker da aplicação"
}
