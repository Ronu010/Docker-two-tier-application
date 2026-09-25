# 🚀 Docker Two-Tier Application with Jenkins CI/CD & Terraform

A Dockerized two-tier web application built using **Python Flask and MySQL**, extended with **Jenkins CI/CD automation**, **Docker Hub**, **Terraform Infrastructure as Code**, and **AWS EC2 deployment**.

This project helped me understand the complete DevOps workflow from **source code → containerization → CI/CD → infrastructure provisioning → cloud deployment**.

---

## 📌 Project Overview

The project started as a simple two-tier application consisting of:

- Flask application
- MySQL database
- Docker containers
- Docker Compose
- Docker networking
- Docker volumes

The project was then extended with DevOps tools and cloud deployment:

- GitHub for source code management
- Jenkins for CI/CD automation
- Docker Hub for container image management
- Terraform for Infrastructure as Code
- AWS EC2 for cloud deployment

---

## 🏗️ Architecture

```text
                         Developer
                            |
                            v
                         GitHub
                            |
                            v
                         Jenkins
                            |
                  +---------+---------+
                  |                   |
                  v                   v
           Install Dependencies   Build Docker Image
                                      |
                                      v
                                 Docker Hub
                                      |
                                      v
                                  Terraform
                                      |
                                      v
                                  AWS EC2
                                      |
                         +------------+------------+
                         |                         |
                         v                         v
                  Flask Container          MySQL Container
                         |                         |
                         +-----------+-------------+
                                     |
                              Docker Network
                                     |
                                     v
                              Docker Volume
                           Persistent Storage
```

---

# 🔄 CI/CD Pipeline

The Jenkins pipeline automates the application build and deployment workflow.

```text
GitHub
   ↓
Checkout Code
   ↓
Install Dependencies
   ↓
Build Docker Image
   ↓
Push Image to Docker Hub
   ↓
Terraform Infrastructure
   ↓
AWS EC2
   ↓
Application Deployment
```

---

## 🔧 Jenkins CI/CD

Jenkins is used to automate the application's build and deployment process.

### Pipeline Stages

### 1. Clone Code

Jenkins checks out the latest application source code from GitHub.

### 2. Install Dependencies

Required application dependencies are installed as part of the pipeline.

### 3. Build Docker Image

Jenkins automatically builds the Docker image for the Flask application.

### 4. Push Docker Image

The generated Docker image is pushed to Docker Hub for image storage and deployment.

### 5. Terraform Infrastructure

Terraform is used to provision and manage the required AWS infrastructure.

### 6. AWS Deployment

The application is deployed to AWS EC2 using the provisioned infrastructure.

---

# 🐳 Docker Architecture

The application uses a two-tier architecture.

```text
             User
               |
               v
       Flask Application
          Container
               |
               |
        Docker Network
               |
               v
        MySQL Database
          Container
               |
               v
        Docker Volume
     Persistent Storage
```

### Flask Application

The Flask application provides the web interface and communicates with the MySQL database.

### MySQL Database

MySQL runs in a separate container and stores application data.

### Docker Network

Docker networking allows the Flask application container to communicate with the MySQL container.

### Docker Volume

A Docker volume is used to persist MySQL database data even when containers are recreated.

---

# ☁️ Terraform Infrastructure

Terraform is used for **Infrastructure as Code (IaC)**.

Instead of manually creating infrastructure through the AWS console, Terraform configuration is used to define and provision the required AWS resources.

### Terraform Benefits Practiced

- Infrastructure as Code
- Automated infrastructure provisioning
- Repeatable deployments
- Version-controlled infrastructure
- Integration with Jenkins CI/CD
- Easier infrastructure management

---

# ☁️ AWS Deployment

AWS EC2 is used as the cloud environment for deploying the application.

The DevOps workflow integrates:

```text
Terraform
   ↓
AWS Infrastructure
   ↓
EC2
   ↓
Docker
   ↓
Application
```

---

# 🛠️ Technologies Used

| Technology | Purpose |
|------------|---------|
| Python | Application development |
| Flask | Web application framework |
| MySQL | Database |
| Docker | Application containerization |
| Docker Compose | Multi-container management |
| Docker Volume | Persistent database storage |
| Git | Version control |
| GitHub | Source code management |
| Jenkins | CI/CD automation |
| Docker Hub | Docker image storage |
| Terraform | Infrastructure as Code |
| AWS EC2 | Cloud deployment |

---

# ✨ Features

- Containerized Flask application
- MySQL database running in a separate container
- Docker Compose multi-container setup
- Docker network communication
- Persistent database storage using Docker volumes
- Optimized Docker image using `.dockerignore`
- GitHub source code management
- Jenkins CI/CD pipeline
- Automated Docker image build
- Docker Hub image publishing
- Terraform Infrastructure as Code
- AWS EC2 infrastructure provisioning
- Automated application deployment workflow

---

# 📁 Project Structure

```text
Docker-two-tier-application/
│
├── app/
│   ├── app.py
│   ├── Dockerfile
│   ├── requirements.txt
│   └── .dockerignore
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── ...
│
├── docker-compose.yml
├── Jenkinsfile
├── .gitignore
└── README.md
```

---

# ▶️ Run the Application Locally

## 1. Clone the Repository

```bash
git clone https://github.com/Ronu010/Docker-two-tier-application.git
```

## 2. Go Inside the Project

```bash
cd Docker-two-tier-application
```

## 3. Start the Application

```bash
docker compose up --build
```

## 4. Access the Application

Open:

```text
http://localhost:5000
```

## 5. Test Database Connection

Open:

```text
http://localhost:5000/db
```

---

# 🐳 Useful Docker Commands

### Check Running Containers

```bash
docker ps
```

### View Container Logs

```bash
docker logs <container_name>
```

### View All Containers

```bash
docker ps -a
```

### Stop the Application

```bash
docker compose down
```

### Stop Containers and Remove Volumes

```bash
docker compose down -v
```

### Rebuild the Application

```bash
docker compose up --build
```

---

# 🔧 Useful Terraform Commands

Initialize Terraform:

```bash
terraform init
```

Validate Terraform configuration:

```bash
terraform validate
```

Create an execution plan:

```bash
terraform plan
```

Apply infrastructure:

```bash
terraform apply
```

Destroy infrastructure:

```bash
terraform destroy
```

> ⚠️ Do not commit Terraform state files or the `.terraform` directory to Git.

---

# 🔐 Git Configuration

The following Terraform-generated files/directories should not be committed:

```text
.terraform/
*.tfstate
*.tfstate.*
```

These are included in `.gitignore`.

---

# 📚 What I Learned

Through this project, I practiced and understood:

### Docker

- Docker images
- Docker containers
- Dockerfiles
- Docker Compose
- Docker networking
- Docker volumes
- Container troubleshooting
- Container logs

### Jenkins

- Jenkins pipelines
- Pipeline stages
- GitHub integration
- Automated Docker builds
- CI/CD workflow
- Pipeline troubleshooting

### Docker Hub

- Building Docker images
- Tagging images
- Publishing images
- Managing container images

### Terraform

- Infrastructure as Code
- Terraform configuration
- Terraform initialization
- Terraform planning
- Terraform provisioning
- Managing AWS infrastructure using code

### AWS

- EC2 infrastructure
- Cloud deployment
- Integrating Terraform with AWS
- Deploying containerized applications

---

# 🔄 Complete DevOps Workflow

The complete workflow implemented in this project:

```text
                  Developer
                      |
                      v
                   GitHub
                      |
                      v
                   Jenkins
                      |
              +-------+-------+
              |               |
              v               v
       Install Dependencies  Docker Build
                              |
                              v
                         Docker Hub
                              |
                              v
                          Terraform
                              |
                              v
                           AWS EC2
                              |
                              v
                         Application
```

---

# 🚀 Future Improvements

The next phase of this project will focus on:

- Kubernetes
- Kubernetes Deployments
- Kubernetes Services
- Amazon EKS
- Container orchestration
- Prometheus monitoring
- Grafana dashboards
- Improved CI/CD automation
- Production-oriented AWS architecture

---

# 🎯 Project Learning Journey

```text
Docker
   ↓
Docker Compose
   ↓
Docker Networking
   ↓
Docker Volumes
   ↓
Git & GitHub
   ↓
Jenkins CI/CD
   ↓
Docker Hub
   ↓
Terraform
   ↓
AWS EC2
   ↓
Kubernetes
   ↓
Monitoring
```

---

# 👨‍💻 Author

**Rohit Shimpi**

GitHub:

https://github.com/Ronu010

---

## ⭐ Project

If you find this project useful, feel free to explore the repository and follow my DevOps learning journey.

**GitHub Repository:**

https://github.com/Ronu010/Docker-two-tier-application

---

# 📌 Key DevOps Concepts Practiced

```text
Containerization
       ↓
Docker Compose
       ↓
CI/CD Automation
       ↓
Infrastructure as Code
       ↓
Cloud Deployment
       ↓
Container Orchestration
       ↓
Monitoring
```

🚀 **Continuing to learn and build with DevOps!**
