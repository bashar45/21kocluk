# 21 Günlük Koçluk — bilgi sayfaları

WhatsApp koçluk programının yasal/bilgi sayfaları. Meta'nın uygulama yayını
için gizlilik politikası ve veri silme adresi zorunlu; bu repo onları karşılar.

| Sayfa | Yol | Nerede kullanılıyor |
|---|---|---|
| Ana sayfa | `/` | — |
| Gizlilik politikası | `/gizlilik.html` | Meta → App Settings → Basic → Privacy policy URL |
| Veri silme | `/veri-silme.html` | Meta → App Settings → Basic → User data deletion |

## Deploy

Coolify üzerinde **Dockerfile** tipinde kaynak olarak çalışır.

- Domain: `21gun.bilgem.cloud` (wildcard DNS zaten Traefik'e bakıyor, ek DNS kaydı gerekmez)
- Port: `80`
- Sağlık kontrolü: `/health`

Sayfayı güncellemek için dosyayı değiştir, commit'le, push'la — Coolify yeniden kurar.

## Notlar

- Veri saklama süresi politikada **program bitiminden sonra 12 ay** olarak yazılı.
  Değiştirirsen `gizlilik.html` içindeki "Ne kadar süre saklıyoruz" bölümünü güncelle.
- İletişim adresi `inanb44@gmail.com` olarak üç sayfada da geçiyor.
- Politikada anlatılan davranışlar koddaki gerçek davranışla eşleşmeli: otomatik risk
  taraması, DUR ile çıkış, verilerin Frankfurt'ta (Supabase) tutulması.
