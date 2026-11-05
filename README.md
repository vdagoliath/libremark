# Repositorio APT de LibreMark

Repositorio APT generado automáticamente. Contiene el paquete `libremark`
(0.1.0) para amd64.

- URL base configurada: `https://github.com/vdagoliath/libremark.git`
- Suite: `stable` · Componente: `main` · Arquitectura: `amd64`
- Clave de firma (huella): `31922EC13ACF0DF508AA2696FCC146FB2B683489`

## Instalación para el usuario

```bash
curl -fsSL https://github.com/vdagoliath/libremark.git/libremark-archive-keyring.gpg | sudo tee /usr/share/keyrings/libremark-archive-keyring.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/libremark-archive-keyring.gpg] https://github.com/vdagoliath/libremark.git stable main" | sudo tee /etc/apt/sources.list.d/libremark.list
sudo apt update
sudo apt install libremark
```

O ejecuta `sudo sh install.sh` desde este repositorio copiado al servidor.

## Publicación

Sube el contenido de esta carpeta a un hosting estático con HTTPS, por ejemplo
GitHub Pages, un VPS con Nginx, Amazon S3/Cloudflare R2 o Cloudsmith. La URL base
del repositorio debe coincidir con `https://github.com/vdagoliath/libremark.git`.

```
https://github.com/vdagoliath/libremark.git/dists/stable/InRelease
https://github.com/vdagoliath/libremark.git/dists/stable/main/binary-amd64/Packages.gz
https://github.com/vdagoliath/libremark.git/pool/main/libr/libremark/libremark_0.1.0_amd64.deb
```

## Clave de firma

La clave privada **no** se incluye en este ZIP. Si has generado el repositorio
con `node scripts/apt-repo.mjs`, la clave está en `.cache/apt-signing/` del
proyecto: haz una copia de seguridad y protégela. Para publicar con tu propia
clave:

```bash
export APT_GNUPGHOME=/ruta/a/tu/gnupg
node scripts/apt-repo.mjs --signing-key=<huella> --base-url="https://tu-dominio"
```
