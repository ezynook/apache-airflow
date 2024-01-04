<img src="https://upload.wikimedia.org/wikipedia/commons/d/de/AirflowLogo.png" width="90">
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Docker_%28container_engine%29_logo.svg/2560px-Docker_%28container_engine%29_logo.svg.png" width="110">

# Apache Airflow 2.2.4 | ETL tools
Airflow คือ เครื่องมือหนึ่งในการสร้าง Data Pipeline โดยเป็น Open Source Platform ตัวหนึ่งที่ผู้ใช้สามารถเขียนโปรแกรมที่จะมาควบคุมการไหลของ Workflow และสามารถคอนเฝ้าดูการไหลได้ ซึ่งถูกพัฒนาโดย Airbnb และเริ่มใช้งานมาตั้งแต่ปี 2015 ซึ่งนอกจากสร้าง Data Pipelines ได้แล้วมันยังสามารถนำไปสร้าง หรือพัฒนา ETL (Extract-Transform-Load), Machine Learning และ Predictive ได้อีกด้วย 

```** และวันนี้ผมได้รวบรวมมาให้สามารถติดตั้งได้ง่ายขึ้นผ่าน Docker **```

<img src="https://airflow.apache.org/docs/apache-airflow/stable/_images/dags.png" width="700">

---
## 👉 วิธีติดตั้ง
✏️ Clone Repositories
```bash
git clone \
        -b 2.2.4 \
        --single-branch \
        https://github.com/ezynook/apache-airflow.git
```
## 👉 Start Service
```bash
docker run \
        --name airflow \
        --restart=always \
        -p 8080:8080 \
        -p 3306:3306 \
        -v ./dags:/root/airflow/dags
        -d ghcr.io/ezynook/apache-airflow:2.2.4-mysql
```
# 👉 Access Web
* Username: `admin`
* Password: `admin`
```javascript
http://localhost:8080
```
## 👉 Add More Package
```bash
#Add package to requirement.txt
docker build -t <Image Name> .
```
```bash
docker run \
        --name airflow \
        --restart=always \
        -p 8080:8080 \
        -p 3306:3306 \
        -d <Image Name>>
```

พัฒนาโดย: ```Pasit Yodsoi```

Credit Source: [https://airflow.apache.org](https://airflow.apache.org)