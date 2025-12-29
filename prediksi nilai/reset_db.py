import os

# Script untuk menghapus file database SQLite lokal
if os.path.exists('prediksi_nilai.db'):
    os.remove('prediksi_nilai.db')
    print('Database prediksi_nilai.db berhasil dihapus.')
else:
    print('File prediksi_nilai.db tidak ditemukan.')
