# cdn-assets

📦 A simple public repository to host static assets (images, fonts, files) via [jsDelivr CDN](https://www.jsdelivr.com/).

---

## 🔗 CDN Usage

Use the following URL format to serve any file in this repository:

```
https://cdn.jsdelivr.net/gh/<username>/<repo>@<branch>/<path>
```

### Example

If you uploaded an image at `assets/images/banner.jpg`, your CDN URL would be:

```
https://cdn.jsdelivr.net/gh/pragyaai/cdn-assets@main/assets/images/banner.jpg
```

✅ You can also omit the branch (`@main`) to always serve the latest version:

```
https://cdn.jsdelivr.net/gh/pragyaai/cdn-assets/assets/images/banner.jpg
```

---

## 📁 Folder Structure

```
cdn-assets/
├── assets/
│   ├── images/
│   ├── gifs/
│   ├── icons/
│   ├── fonts/
│   └── ...
```

---

## ⚠️ Notes

- Max file size per file: **100 MB** (GitHub limit)
- This repo must remain **public** for jsDelivr to work
- Avoid pushing sensitive or private files
- Use specific commit hashes in URLs if you want cache-safe, versioned files

---

## 📌 License

This repo contains public static assets. All original content you upload remains under your control. Share responsibly.
