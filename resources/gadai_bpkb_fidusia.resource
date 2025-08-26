*** Settings ***
Resource    imports.resource

*** Keywords ***
Input the field
    [Arguments]    ${var}    ${val}
    Click Element    ${var}
    Input Text    ${var}    ${val}

Scroll To Element
    [Arguments]    ${element_locator}
    ${status}    ${value}=    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${element_locator}    timeout=5s
    Run Keyword If    '${status}' == 'FAIL'    Swipe By Percent    50    80    50    20    1000
    Wait Until Element Is Visible    ${element_locator}    timeout=10s

Open Ajukan Gadai BPKB Fidusia
    Wait Until Element Is Visible    ${btn_gadaiFidusia}
    Click Element    ${btn_gadaiFidusia}

Complete Informasi Kendaraan
    Wait Until Element Is Visible    ${input_merk}
    
    Input the field    ${input_merk}    ${data_merk}
    Input the field    ${input_jenis}    ${data_jenis}
    Input the field    ${input_tahunKendaraan}    ${data_tahunKendaraan}
    Input the field    ${input_noPolisi}    ${data_nomorPolisi}
    Input the field    ${input_stnk}    ${data_namaSTNK}
    
    # pilih tanggal berakhir stnk
    Click Element    ${input_tglBerakhirSTNK}
    Click Element    ${btn_okeTanggal}

    Input the field    ${input_kilometer}    ${data_odometer}
    Input the field    ${input_warnaUnit}    ${data_warnaUnit}

    # Scroll to pengajuan pinjaman field
    Scroll To Element    ${input_pengajuanPinjaman}
    Input the field    ${input_pengajuanPinjaman}    ${data_pengajuanPinjaman}

Complete Data Nasabah
    Scroll To Element    ${input_lamaTinggal}
    
    Click Element    ${checkbox_sesuaiKTP}
    # kepemilikan
    Click Element    ${input_kepemilikan}
    Click Element    ${btn_milikSendiri}

    # Bukti Kepemilikan
    Click Element    ${input_kepemilikan}
    Click Element    ${btn_SHM}

    # kondisi rumah
    Input the field    ${input_kondisiRumah}    ${data_kondisiRumah}
    Input the field    ${input_kondisiLingkungan}    ${data_kondisiLingkungan}
    
    # scroll to garasi field
    Scroll To Element    ${input_pilihGarasi}

    # akses jalan
    Input the field    ${input_aksesJalan}    ${data_aksesJalan}

    # lama tinggal
    Input the field    ${input_lamaTinggal}    ${data_lamaTinggal}

    # garasi
    Click Element    ${input_pilihGarasi}
    Click Element    ${status_garasiAda}

Complete Informasi Usaha / Pekerjaan
    # Scroll to lama usaha field
    Scroll To Element    ${input_lamaUsaha}

    Input the field    ${input_namaUsaha}    ${data_namaUsaha}
    Input the field    ${input_alamatUsaha}    ${data_alamatUsaha}
    Input the field    ${input_jabatan}    ${data_jabatan}
    Input the field    ${input_noTelpUsaha}    ${data_noTelpUsaha}
    Input the field    ${input_statusUsaha}    ${data_statuUsaha}
    Input the field    ${input_lamaUsaha}    ${data_lamaUsaha}
    Input the field    ${input_omsetMinimal}    ${data_omzetMinimal}
    Input the field    ${input_omsetMaksimal}    ${data_omzetMaksimal}
    
    Click Element    ${input_izinUsaha}
    Click Element    ${btn_tidakAda}

    Scroll To Element    ${btn_proses}

    Input the field    ${input_bidangUsaha}    ${data_bidangUsaha}
    Input the field    ${input_karyawanMinimal}    ${data_karyawanMinimal}
    Input the field    ${input_karyawanMaximal}    ${data_karyawanMaksimal}

Check all checkboxes Pernyataan
    Click Element    ${checkbox_seluruhDataFidusia}
    Click Element    ${checkbox_sayaMembacaFidusia} 

Click Proses
    Click Element    ${btn_proses}

Successfully complete the data Gadai Fidusia
    Click Element    ${btn_selesaiFidusia}
    Text Should Be Visible    ${btn_profile}