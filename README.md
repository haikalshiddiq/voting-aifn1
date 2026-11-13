# Voting Ketua Kelas AiFn1 PWA

Sumber roster: Absensi_Otomatis_AiFn1_2026-2027_Ganjil.xlsx. Seluruh 37 mahasiswa aktif disertakan sebagai pemilih dan kandidat. Deadline server: Minggu, 15 November 2026 pukul 23.59 WIB (04.30 UTC).

## Deploy
1. Buat repository `voting-aifn1`.
2. Upload seluruh isi ZIP ke root.
3. Tambahkan secrets yang sama: CLOUDFLARE_ACCOUNT_ID, CLOUDFLARE_API_TOKEN, ADMIN_KEY, TURNSTILE_SECRET_KEY.
4. Tambahkan hostname `voting-aifn1.hicall.workers.dev` ke widget Turnstile yang sama.
5. Actions > Bootstrap and Deploy AiFn1 PWA > Run workflow, lalu isi Site Key produksi.

URL mahasiswa: https://voting-aifn1.hicall.workers.dev
URL admin: https://voting-aifn1.hicall.workers.dev/admin.html


## Patch voting dan logout
Turnstile hanya pada validasi NIM, sesi aktif 15 menit, pengiriman suara memakai ballot session, dan tombol logout diikat eksplisit melalui document.getElementById.


## Rilis extended final
Deadline diperpanjang sampai Minggu, 15 November 2026 pukul 23.59 WIB. UI pemilihan kini memakai referensi DOM eksplisit, status pilihan real-time, sticky submit mobile, content-visibility untuk daftar kandidat, dan cache aifn1-v3-extended-responsive.


## Hardened release v4
Semua elemen permanen dan dinamis memakai referensi DOM eksplisit. Validasi NIM menormalkan angka, memberi status Turnstile, dan mencegah submit sebelum token tersedia. API client memiliki timeout 20 detik, penanganan respons non-JSON, dan pesan error yang dapat ditindaklanjuti. Cache: aifn1-v4-hardened.
