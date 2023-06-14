# Menggunakan image Python sebagai base image
FROM python:3.9

# Menentukan direktori kerja di dalam container
WORKDIR /main

# Menyalin file requirements.txt ke dalam container
COPY requirements.txt .

# Menginstal dependensi yang diperlukan
RUN pip install --no-cache-dir -r requirements.txt

# Menyalin seluruh isi direktori proyek ke dalam container
COPY . .

# Menjalankan perintah untuk menjalankan aplikasi Flask
CMD ["python", "main.py"]
