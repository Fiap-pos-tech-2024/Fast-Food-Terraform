# Fast-Food-Terraform

Este repositório contém a configuração de infraestrutura para o banco de dados do sistema de autoatendimento do Fast Food, utilizando **Terraform** para provisionamento na nuvem AWS.

## 📊 Tecnologias Utilizadas
- **Terraform** (Infraestrutura como código - IaC)
- **AWS RDS (PostgreSQL)** (Banco de dados gerenciado)
- **GitHub Actions** (CI/CD para deploy automático)
- **AWS Secrets Manager** (Gerenciamento de credenciais seguras)

---

## 🚀 Como Configurar e Rodar Localmente

### **1. Clonar o Repositório**
```sh
# Clone o repositório para sua máquina
$ git clone git@github.com:Fiap-pos-tech-2024/Fast-Food-Terraform.git
$ cd Fast-Food-Terraform
```

### **2. Instalar o Terraform** (caso não tenha instalado)
#### • **Mac (Apple Silicon)**
```sh
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
```

#### • **Linux (Ubuntu/Debian)**
```sh
sudo apt-get update && sudo apt-get install -y terraform
```

#### • **Verificar Instalação**
```sh
terraform -v
```

---

## 🛠️ Configurar a AWS CLI (se ainda não estiver autenticado)
1. Instale a **AWS CLI** (se necessário):
   ```sh
   brew install awscli  # Para macOS
   sudo apt install awscli -y  # Para Linux
   ```
2. Faça login na AWS:
   ```sh
   aws configure
   ```
   **Informe:**
   - AWS Access Key ID
   - AWS Secret Access Key
   - Região (exemplo: `us-east-1`)

---

## 🔍 Validar e Aplicar Terraform

1. Inicializar o Terraform:
   ```sh
   terraform init
   ```

2. Validar a infraestrutura:
   ```sh
   terraform plan
   ```

3. Aplicar as configurações:
   ```sh
   terraform apply -auto-approve
   ```

4. Copiar o **endpoint do banco de dados** gerado pelo Terraform:
   ```sh
   terraform output db_endpoint
   ```

---

## 🚀 CI/CD com GitHub Actions
O repositório está configurado para fazer deploy automático via **GitHub Actions**.

1. No GitHub, acesse **Settings > Secrets and variables > Actions**.
2. Adicione as credenciais da AWS como variáveis secretas:
   - **AWS_ACCESS_KEY_ID**
   - **AWS_SECRET_ACCESS_KEY**
3. Quando fizer um **push** na branch `main`, o Terraform será executado automaticamente.

```sh
# Enviar alterações para o repositório
$ git add .
$ git commit -m "Configuração inicial do Terraform para banco de dados"
$ git push origin main
```

---

## 🚀 Verificar Banco de Dados Criado
1. Acesse **AWS Console > RDS > Instâncias**.
2. Verifique se a instância foi criada e copie o **endpoint**.

---

## 🛠️ Ignorando Arquivos Desnecessários
A pasta `.terraform/` **NÃO deve ser versionada no Git**, pois contém arquivos temporários. Para garantir isso:

1. Adicionar ao `.gitignore`:
   ```sh
   echo ".terraform/" >> .gitignore
   ```

2. Remover arquivos já adicionados:
   ```sh
   git rm -r --cached .terraform/
   ```

3. Fazer commit e push das mudanças:
   ```sh
   git add .gitignore
   git commit -m "Ignorando a pasta .terraform/"
   git push origin main
   ```

Agora, apenas os arquivos necessários estarão no repositório! ✅

---

## ✅ Considerações Finais
Agora sua infraestrutura está **automatizada e segura**! Qualquer dúvida ou melhoria, sinta-se à vontade para contribuir no repositório.

🌟 **Desenvolvido por:** Equipe Fast Food Tech Challenge