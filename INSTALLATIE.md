# 📦 GitHub Upload Instructies

## Stap 1: GitHub Repository Aanmaken

1. Ga naar [GitHub.com](https://github.com)
2. Log in of maak een account aan
3. Klik op het **+** icoon rechtsboven → **New repository**
4. Vul in:
   - **Repository name**: `inovoproductions`
   - **Description**: `Premium Roblox Script Hub met Rayfield UI`
   - **Public** aanvinken (belangrijk!)
   - **NIET** "Add a README file" aanvinken (we hebben al een README)
5. Klik op **Create repository**

---

## Stap 2: Bestanden Uploaden

### Optie A: Via GitHub Website (Makkelijkste)

1. Op je nieuwe repository pagina, klik op **uploading an existing file**
2. Sleep deze bestanden naar het upload vak:
   - `main.lua`
   - `loader.lua`
   - `README.md`
   - `.gitignore`
3. Onderaan schrijf je: "Initial commit - Inovo Productions v1.0"
4. Klik op **Commit changes**

### Optie B: Via Git Command Line

```bash
cd "C:\Users\Arda\Desktop\data"
git init
git add main.lua loader.lua README.md .gitignore
git commit -m "Initial commit - Inovo Productions v1.0"
git branch -M main
git remote add origin https://github.com/JOUW-USERNAME/inovoproductions.git
git push -u origin main
```

---

## Stap 3: Je Script Testen

Nu kun je je script laden met:

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/JOUW-USERNAME/inovoproductions/main/loader.lua"))()
```

**LET OP**: Vervang `JOUW-USERNAME` met je GitHub gebruikersnaam!

---

## Stap 4: Loadstring Link Updaten

1. Open `loader.lua`
2. Vervang **beide** keren `JOUW-USERNAME` met je echte GitHub username
3. Upload de gewijzigde `loader.lua` opnieuw naar GitHub

---

## 🎯 Definitieve Loadstring

Als je username bijvoorbeeld **"inovogaming"** is, dan wordt je loadstring:

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/inovogaming/inovoproductions/main/loader.lua"))()
```

---

## ✨ Extra Tips

### Mooie Repository Link
Je kan ook een kortere link maken met **Pastebin** of **GitHub Gist** als alternatief.

### Updates Pushen
Als je later updates wilt toevoegen:

1. Wijzig je `main.lua`
2. Ga naar je GitHub repository
3. Klik op `main.lua`
4. Klik op het potlood icoon (edit)
5. Plak de nieuwe code
6. Scroll naar beneden en klik **Commit changes**

### Source.lua
De `SOURCE.LUA` file (Rayfield library) hoef je **NIET** te uploaden! 
De script gebruikt al de online versie van Rayfield.

---

## 🔧 Troubleshooting

**Probleem**: Script laadt niet
- Controleer of je repository **Public** is (niet Private)
- Controleer of je de juiste username hebt gebruikt
- Wacht 1-2 minuten na uploaden (GitHub cache)

**Probleem**: "404 Not Found"
- Controleer de link: moet `raw.githubusercontent.com` zijn
- Controleer of de file naam exact klopt (hoofdlettergevoelig!)

---

**Succes met je Script Hub! 🚀**

