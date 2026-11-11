# Voting Ketua Kelas AiFn1 PWA

Sumber roster: Absensi_Otomatis_AiFn1_2026-2027_Ganjil.xlsx. Seluruh 37 mahasiswa aktif disertakan sebagai pemilih dan kandidat. Deadline server: Jumat, 13 November 2026 pukul 11.30 WIB (04.30 UTC).

## Deploy
1. Buat repository `voting-aifn1`.
2. Upload seluruh isi ZIP ke root.
3. Tambahkan secrets yang sama: CLOUDFLARE_ACCOUNT_ID, CLOUDFLARE_API_TOKEN, ADMIN_KEY, TURNSTILE_SECRET_KEY.
4. Tambahkan hostname `voting-aifn1.hicall.workers.dev` ke widget Turnstile yang sama.
5. Actions > Bootstrap and Deploy AiFn1 PWA > Run workflow, lalu isi Site Key produksi.

URL mahasiswa: https://voting-aifn1.hicall.workers.dev
URL admin: https://voting-aifn1.hicall.workers.dev/admin.html
