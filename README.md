# AWS CI/CD Pipeline - Python Flask Application

A complete **CI/CD pipeline implementation** using AWS services that automates the deployment of a **Python Flask application** from **GitHub → EC2**.

---

## Architecture
<img width="1280" height="800" alt="CI CD Architecture" src="https://github.com/user-attachments/assets/bb9d9ca5-1f36-40b9-8e81-1fdb6232af5c" />

**Workflow:**  
`GitHub → AWS CodePipeline → AWS CodeBuild → AWS CodeDeploy → Amazon EC2`

---

## Features

- **Automated Deployments:** Every Git push triggers the pipeline automatically  
- **Continuous Integration:** Build and test via AWS CodeBuild  
- **Continuous Deployment:** CodeDeploy handles deployment to EC2  
- **Zero Downtime:** Rolling deployments for high availability  
- **Infrastructure as Code:** Configurations and scripts version-controlled  

---

## Prerequisites

- AWS Account with required permissions  
- GitHub Repository  
- Python 3.x Installed  
- AWS CLI Installed and Configured  

---

## 🛠️ AWS Services Used

| Service | Purpose |
|----------|----------|
| **AWS CodePipeline** | Orchestrates the CI/CD workflow |
| **AWS CodeBuild** | Builds and tests the application |
| **AWS CodeDeploy** | Deploys the app to EC2 instances |
| **Amazon EC2** | Hosts the running application |
| **Amazon S3** | Stores build artifacts |
| **IAM** | Manages roles and permissions |

---

## Pipeline Flow

1. Developer pushes code to **GitHub**
2. **AWS CodePipeline** detects the new commit
3. **AWS CodeBuild** pulls the latest code, installs dependencies, runs tests, and creates build artifacts
4. Artifacts are uploaded to the **Amazon S3** artifact bucket
5. **AWS CodeDeploy** retrieves the artifacts and deploys them to the configured **EC2 instances**
6. The deployment scripts (`stop_container.sh`, `start_container.sh`) stop the old version and start the new one
7. The new version of the Flask application is **live on EC2**

---

## Best Practices

- Use **separate IAM roles** for each AWS service  
- Enable **CloudWatch logs** for all stages to simplify debugging  
- Use **deployment configurations** (`AllAtOnce`, `HalfAtATime`, `OneAtATime`) for controlled rollouts  
- Implement **health checks** in deployment scripts to ensure app stability  
- **Tag resources** for cost tracking and management  
- Use **AWS Secrets Manager** or **Parameter Store** for sensitive data  
- Enable **versioning** on the S3 artifact bucket to preserve deployment history  

---

## Monitoring

| Tool | Purpose |
|------|----------|
| **AWS CodePipeline Dashboard** | View overall pipeline execution status |
| **AWS CodeBuild Logs** | Inspect build process, test output, and errors |
| **AWS CodeDeploy Console** | Track deployment progress and results |
| **Amazon CloudWatch Logs** | Monitor application and deployment logs |
| **AWS CloudTrail** | Audit IAM actions and API activity |

---

## Contributing

Contributions are always welcome!  
To contribute:
1. Fork this repository  
2. Create a feature branch (`git checkout -b feature-name`)  
3. Commit your changes (`git commit -m "Add new feature"`)  
4. Push to your branch (`git push origin feature-name`)  
5. Open a Pull Request

---

## 📝 License

This project is licensed under the **MIT License**.  
Feel free to use, modify, and distribute it as per the terms of the license.

---

## 👤 Author

**[Sarfraj Khan]**  
🔗 [LinkedIn Profile](https://www.linkedin.com/in/sarfraj-khan-524a86336/)  
💻 [GitHub](https://github.com/sarfraj89)

---

## Acknowledgments

This project was built while learning **AWS DevOps best practices**.  
Special thanks to:
- **AWS Documentation**
- **AWS Community Builders**
- **Open-source contributors**

> “Automation is not just about speed — it’s about consistency, reliability, and peace of mind.”

---



