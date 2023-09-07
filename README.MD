<img src="https://upload.wikimedia.org/wikipedia/commons/d/de/AirflowLogo.png" width="90">
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Docker_%28container_engine%29_logo.svg/2560px-Docker_%28container_engine%29_logo.svg.png" width="110">

# Apache Airflow | ETL tools
Airflow คือ เครื่องมือหนึ่งในการสร้าง Data Pipeline โดยเป็น Open Source Platform ตัวหนึ่งที่ผู้ใช้สามารถเขียนโปรแกรมที่จะมาควบคุมการไหลของ Workflow และสามารถคอนเฝ้าดูการไหลได้ ซึ่งถูกพัฒนาโดย Airbnb และเริ่มใช้งานมาตั้งแต่ปี 2015 ซึ่งนอกจากสร้าง Data Pipelines ได้แล้วมันยังสามารถนำไปสร้าง หรือพัฒนา ETL (Extract-Transform-Load), Machine Learning และ Predictive ได้อีกด้วย 

```** และวันนี้ผมได้รวบรวมมาให้สามารถติดตั้งได้ง่ายขึ้นผ่าน Docker **```

<img src="https://airflow.apache.org/docs/apache-airflow/stable/_images/dags.png" width="700">

---
## 👉 วิธีติดตั้ง
✏️ Clone Repositories
```bash
git clone https://github.com/ezynook/apache-airflow.git
```
✏️ Change to path exp: ```/root/apache-airflow```
```bash
cd apache-airflow
```
✏️ Change permission Running Script
```bash
chmod +x start.sh
```
✏️ Start container
```bash
./start.sh --deploy
```
✏️ Remove all container
```bash
./start.sh --remove
```
## 👉 เพิ่ม Python Package

```เพิ่ม Package ที่ต้องการในไฟล์ requirement.txt```

✏️ Running Command
```bash
./start --add-package
```
> Help Command args ```./start -h```

## 👉 Check Service
```bash
docker ps
```
✏️ If services is normally
```bash
CONTAINER ID   IMAGE                               COMMAND      CREATED          STATUS          PORTS                                                                                  NAMES
48be7b104bc9   ghcr.io/ezynook/airflow-web:2.7.0   "pasitdev"   45 minutes ago   Up 45 minutes   0.0.0.0:8080->8080/tcp, :::8080->8080/tcp, 0.0.0.0:8888->8888/tcp, :::8888->8888/tcp   airflow
277b3b1a4d95   ghcr.io/ezynook/airflow-db:2.7.0    "pasitdev"   45 minutes ago   Up 45 minutes   0.0.0.0:3306->3306/tcp, :::3306->3306/tcp, 5432/tcp                                    airflow_db
```
✏️ Access On Browser
```javascript
http://localhost:8080 <- Airflow WebUI
http://localhost:8888 <- Jupyter Notebook (Dev tools)
```
✏️ Security Access

| Service | Username | Password         | Port |
|---------|----------|------------------|------|
| Airflow | admin    | admin            | 8080 |
| Jupyter | ไม่มี      | admin            | 8888 |
| MySQL   | airflow  | airflow_password | 3306 |

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

พัฒนาโดย: ```Pasit Yodsoi```

Credit Source: [https://airflow.apache.org](https://airflow.apache.org)