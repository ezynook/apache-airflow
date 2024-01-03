<img src="https://upload.wikimedia.org/wikipedia/commons/d/de/AirflowLogo.png" width="90">
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Docker_%28container_engine%29_logo.svg/2560px-Docker_%28container_engine%29_logo.svg.png" width="110">

# Apache Airflow 2.8.0 | ETL tools
Airflow คือ เครื่องมือหนึ่งในการสร้าง Data Pipeline โดยเป็น Open Source Platform ตัวหนึ่งที่ผู้ใช้สามารถเขียนโปรแกรมที่จะมาควบคุมการไหลของ Workflow และสามารถคอนเฝ้าดูการไหลได้ ซึ่งถูกพัฒนาโดย Airbnb และเริ่มใช้งานมาตั้งแต่ปี 2015 ซึ่งนอกจากสร้าง Data Pipelines ได้แล้วมันยังสามารถนำไปสร้าง หรือพัฒนา ETL (Extract-Transform-Load), Machine Learning และ Predictive ได้อีกด้วย 

```** และวันนี้ผมได้รวบรวมมาให้สามารถติดตั้งได้ง่ายขึ้นผ่าน Docker **```

<img src="https://airflow.apache.org/docs/apache-airflow/stable/_images/dags.png" width="700">

---
## 👉 วิธีติดตั้ง
✏️ Clone Repositories
```bash
git clone \
        -b 2.8.0 \
        --single-branch \
        https://github.com/ezynook/apache-airflow.git
```
✏️ Change to path exp: ```/root/apache-airflow```
```bash
cd apache-airflow
```
## 👉 Start Service
```bash
docker run \
        --name airflow \
        -p 8080:8080 \
        -v ./dags:/root/airflow/dags \
        --restart=always \
        -d ghcr.io/ezynook/apache-airflow/airflow:2.8.0-pgsql
```

✏️ Access On Browser
```javascript
http://localhost:8080 <- Airflow WebUI
```
✏️ Security Access

| Service | Username | Password         | Port |
|---------|----------|------------------|------|
| Airflow | admin    | admin            | 8080 |
| PostgreSQL   | airflow  | airflow | 5432 |

✏️ Airflow Add User
```bash
docker exec -it airflow bash -c \
"airflow users create \
        --username nook \
        --firstname <firstname> \
        --lastname <lastname> \
        --role Admin \
        --email email@mail.com"

----------------
Password: *******
```

---

Author: ```Pasit Yodsoi```

Credit Source: [https://airflow.apache.org](https://airflow.apache.org)