from ..test_data.dataUser import *

input_noKTP = '//android.widget.EditText[@hint="No. KTP"]'
input_namaLengkap = '//android.widget.EditText[@hint="Nama Lengkap Sesuai KTP"]'
input_tempatLahir = '//android.widget.EditText[@hint="Tempat Lahir"]'
input_tglLahir = '//android.view.View[@hint="Tanggal Lahir"]'
input_FotoKTP = "//android.view.View[@content-desc='Foto KTP\nAmbil Photo KTP']"
input_FotoSelfie = "//android.view.View[@content-desc='Foto Selfie dengan KTP*\nAmbil Photo Selfie dengan KTP']"
btn_verifikasi = "//android.view.View[@content-desc='Verifikasi']"
btn_takePhotoKTP = '//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[1]'
btn_simpanFoto = '//android.view.View[@content-desc="Simpan Foto"]'
btn_takeSelfie = '//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[1]' 

input_ibuKandung = '//android.widget.EditText[@hint="Nama Ibu Kandung"]'
btn_jenisKelamin = '//android.widget.Button[@content-desc="Pilih Jenis Kelamin"]'
btn_pilihProvinsi = '//android.widget.Button[@content-desc="Pilih Provinsi"]'
btn_pilihKota = '//android.widget.Button[@content-desc="Pilih Kota / Kabupaten"]'
btn_pilihKecamatan = '//android.widget.Button[@content-desc="Kecamatan"]'
btn_pilihKelurahan = '//android.widget.Button[@content-desc="Kelurahan"]'
input_alamatKTP = '//android.widget.EditText[@hint="Alamat KTP"]'
btn_checkBox_sesuaiKTP = '//android.widget.CheckBox[@content-desc="Alamat Sesuai KTP"]'

btn_turnOnGPS = '//android.widget.Button[@text="Turn on"]'
btn_pilihLokasiMaps = '//android.widget.Button[@content-desc="Pilih Lokasi"]'
btn_berikutnya = '//android.view.View[@content-desc="Berikutnya"]'

btn_statusKrabat = '//android.widget.Button[@content-desc="Status Kerabat"]'
input_namaKerabat = '//android.widget.EditText[@hint="Nama Kerabat"]'
btn_provinsiKerabat = '//android.widget.Button[@content-desc="Provinsi"]'
btn_kotaKerabat = '//android.widget.Button[@content-desc="Kota / Kabupaten"]'
btn_kecamatanKerabat = '//android.widget.Button[@content-desc="Kecamatan"]'
btn_kelurahanKerabat = '//android.widget.Button[@content-desc="Kelurahan"]'
input_alamatKerabat = '//android.widget.EditText[@hint="Alamat"]'
input_nomorTelpKerabat = '//android.widget.EditText[@hint="Nomor Handphone"]'
input_emailKerabat = '//android.widget.EditText[@hint="Email"]'
btn_penEditTanggal = '//android.view.View[@content-desc="Pilih tanggal Sel, 26 Agu"]/android.view.View/android.widget.Button'
input_editTanggal = '//android.widget.EditText[@text="26/8/2025"]'
btn_okeTanggal = '//android.widget.Button[@content-desc="OKE"]'

btn_whileUsingApp = '//android.widget.Button[@text="While using the app"]'
btn_lakiLaki = f"//android.widget.Button[@content-desc='${data_kelamin}']"
btn_provinsi = f'//android.widget.Button[@content-desc="${data_provinsi}"]'
btn_kota = f'//android.widget.Button[@content-desc="${data_kota}"]'
btn_kecamatan = f'//android.widget.Button[@content-desc="${data_kecamatan}"]'
btn_kelurahan = f'//android.widget.Button[@content-desc="${data_kelurahan}"]'
btn_alamatKTP = f'//android.widget.Button[@content-desc="${data_alamatKTP}"]'
btn_kerabat = f'//android.widget.Button[@content-desc="${data_kerabat}"]'

input_pin = '//android.widget.EditText[@hint="Atur PIN"]'
input_pin = '//android.widget.EditText[@hint="Ulangi PIN"]'
input_namaBank = '//android.view.View[@content-desc="- Pilih Bank -\n- Pilih Bank -"]'
btn_namaBank = f'//android.view.View[@content-desc="${data_bank}"]'
input_noRekening = '//android.widget.EditText[@hint="No. Rekening"]'
btn_check = f'//android.widget.EditText[@text="${data_noRekening}"]/android.widget.ImageView'
field_namaPemilikiRek = f'//android.view.View[@text="${data_namaPemilikiRek}"]'

checkbox_seluruhData = '//android.widget.CheckBox[@content-desc="Seluruh data yang dituliskan dan terlampir dalam pengajuan ini adalah benar"]'
checkbox_sayaMembaca = '//android.widget.CheckBox[@content-desc="Saya telah membaca dan menyetujui \nKetentuan Penggunaan\n dan \n Kebijakan Privacy \n."]'
checkbox_sayaSetuju = '//android.widget.CheckBox[@content-desc="Saya setuju untuk proses data dengan PrivyID. Info lebih lanjut \nKlik disini"]'

btn_kirimData = '//android.view.View[@content-desc="Kirim Data"]'

text_errorKTP = '//android.view.View[@content-desc="The no ktp must be 16 digits."]'
btn_closeError = '//android.widget.Button[@content-desc="Close"]'
btn_backTop = '//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button'
btn_iya = '//android.view.View[@content-desc="Iya"]'
btn_batalkanProses = '//android.view.View[@content-desc="Batalkan Proses"]'