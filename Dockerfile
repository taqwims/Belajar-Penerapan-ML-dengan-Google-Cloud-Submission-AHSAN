# Gunakan base image Node.js
FROM node:18-slim

# Tetapkan direktori kerja
WORKDIR /app

# Salin file package.json dan package-lock.json (jika ada)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Salin seluruh file aplikasi
COPY . .

# Tetapkan environment variables (ganti dengan nilai yang sesuai)
ENV GOOGLE_CLOUD_PROJECT="submissionmlgc-ahsan"
ENV MODEL_URL="https://storage.googleapis.com/penyimpanan123/model.json" 
# ... environment variables lainnya ...

# Expose port aplikasi (ganti sesuai port aplikasi Hapi.js Anda)
EXPOSE 3000

# Jalankan aplikasi menggunakan Node.js
CMD ["node", "server.js"]
