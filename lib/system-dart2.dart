void main() {
  // daftar makanan halal dan haram
  List<String> makananHalal = ['sate', 'soto', 'martabak', 'ayam', 'ikan'];
  List<String> makananHaram = ['babi', 'ular', 'anjing', 'buaya', 'kucing'];

  // mengecek status halal atau haram
  bool? cekHalalHaram(String makanan) {
    String makananLower = makanan.toLowerCase();
    if (makananHalal.contains(makananLower)) {
      return true;
    } else if (makananHaram.contains(makananLower)) {
      return false;
    } else {
      return null; // kalau makanan tidak terdaftar
    }
  }

  // Contoh makanan
  List<String> daftarmakanan = ['buaya'];

  for (String makanan in daftarmakanan) {
    bool? status = cekHalalHaram(makanan);
    print('$makanan: ${status != null ? (status ? "Halal" : "Haram") : "Status tidak diketahui"}');
  }
}
