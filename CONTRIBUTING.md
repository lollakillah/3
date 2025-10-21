# 🤝 Contributing to Inovo Productions

Bedankt voor je interesse in bijdragen aan Inovo Productions! We waarderen alle hulp, of het nu gaat om bug reports, feature requests, of code contributions.

---

## 📋 Table of Contents

1. [Code of Conduct](#code-of-conduct)
2. [Hoe kan ik bijdragen?](#hoe-kan-ik-bijdragen)
3. [Richtlijnen voor Code](#richtlijnen-voor-code)
4. [Pull Request Process](#pull-request-process)
5. [Script Toevoegen](#script-toevoegen)

---

## 📜 Code of Conduct

### Onze Belofte

We willen een open en welkomende omgeving creëren voor iedereen.

### Onze Standaarden

✅ **Doe wel:**
- Wees respectvol en inclusief
- Accepteer constructieve kritiek
- Focus op wat het beste is voor de community
- Toon empathie naar anderen

❌ **Doe niet:**
- Gebruik van ongepaste taal
- Trollen of beledigende opmerkingen
- Persoonlijke aanvallen
- Harassment van welke aard dan ook

---

## 🎯 Hoe kan ik bijdragen?

### 🐛 Bug Reports

Vond je een bug? Help ons door:

1. **Check eerst** of de bug al gerapporteerd is
2. **Maak een Issue** met:
   - Duidelijke titel
   - Stappen om te reproduceren
   - Verwacht gedrag vs. actueel gedrag
   - Screenshots (indien mogelijk)
   - Je executor + game info

**Template:**
```markdown
**Bug Beschrijving**
Korte beschrijving van de bug

**Reproduceer Stappen**
1. Ga naar '...'
2. Klik op '...'
3. Zie error

**Verwacht Gedrag**
Wat zou er moeten gebeuren

**Screenshots**
Als van toepassing

**Systeem Info**
- Executor: [bijv. Synapse X]
- Game: [bijv. Blox Fruits]
- Script versie: [bijv. 1.0.0]
```

---

### 💡 Feature Requests

Heb je een idee? We horen het graag!

1. **Check eerst** of het feature al voorgesteld is
2. **Maak een Issue** met:
   - Duidelijke titel
   - Gedetailleerde beschrijving
   - Waarom is dit nuttig?
   - Mogelijke implementatie

**Template:**
```markdown
**Feature Beschrijving**
Wat wil je toegevoegd zien?

**Probleem dat het oplost**
Welk probleem lost dit op?

**Voorgestelde Oplossing**
Hoe zie je dit geïmplementeerd?

**Alternatieven**
Andere mogelijke oplossingen?
```

---

### 🎮 Nieuwe Game Scripts

Wil je een script toevoegen voor een nieuwe game?

1. **Gebruik** `GAME_TEMPLATE.lua` als basis
2. **Test** grondig in de game
3. **Documenteer** wat het script doet
4. **Submit** een Pull Request

---

## 💻 Richtlijnen voor Code

### Code Stijl

```lua
-- ✅ GOED: Duidelijke namen en comments
local function calculateDamage(baseDamage, multiplier)
    -- Apply damage multiplier
    return baseDamage * multiplier
end

-- ❌ SLECHT: Onduidelijk
local function cd(b, m)
    return b * m
end
```

### Best Practices

1. **Leesbaarheid**
   - Gebruik duidelijke variabele namen
   - Voeg comments toe voor complexe logica
   - Houd functies kort en overzichtelijk

2. **Efficiëntie**
   - Vermijd onnodige loops
   - Cache waardes waar mogelijk
   - Gebruik locals voor performance

3. **Foutafhandeling**
   ```lua
   local success, error = pcall(function()
       -- Code die kan falen
   end)
   
   if not success then
       warn("Error: " .. tostring(error))
   end
   ```

4. **Notificaties**
   ```lua
   Rayfield:Notify({
       Title = "Success",
       Content = "Actie voltooid!",
       Duration = 3,
       Image = "check",
   })
   ```

---

## 🔄 Pull Request Process

### Stap 1: Fork & Clone

```bash
# Fork de repository op GitHub, dan:
git clone https://github.com/JOUW-USERNAME/inovoproductions.git
cd inovoproductions
```

### Stap 2: Maak een Branch

```bash
git checkout -b feature/nieuwe-feature
# of
git checkout -b fix/bug-fix
```

**Branch Namen:**
- `feature/naam` - Voor nieuwe features
- `fix/naam` - Voor bug fixes
- `docs/naam` - Voor documentatie
- `refactor/naam` - Voor code refactoring

### Stap 3: Maak je Changes

1. Wijzig de code
2. Test grondig
3. Voeg comments toe
4. Update documentatie indien nodig

### Stap 4: Commit

```bash
git add .
git commit -m "feat: beschrijving van feature"
```

**Commit Message Format:**
- `feat:` - Nieuwe feature
- `fix:` - Bug fix
- `docs:` - Documentatie
- `style:` - Code formatting
- `refactor:` - Code refactoring
- `test:` - Tests toevoegen
- `chore:` - Maintenance

**Voorbeelden:**
```bash
git commit -m "feat: add Arsenal auto-aim script"
git commit -m "fix: walk speed slider not working"
git commit -m "docs: update README with new features"
```

### Stap 5: Push

```bash
git push origin feature/nieuwe-feature
```

### Stap 6: Create Pull Request

1. Ga naar GitHub
2. Klik "New Pull Request"
3. Vul template in:

```markdown
**Wat doet deze PR?**
Korte beschrijving

**Type verandering**
- [ ] Bug fix
- [ ] Nieuwe feature
- [ ] Breaking change
- [ ] Documentatie update

**Checklist**
- [ ] Code getest
- [ ] Comments toegevoegd
- [ ] Documentatie updated
- [ ] Geen merge conflicts
```

4. Submit!

---

## 🎮 Script Toevoegen

### Voor een Nieuwe Game

1. **Kopieer template**
   ```lua
   -- Gebruik GAME_TEMPLATE.lua
   ```

2. **Pas aan** voor je game
   ```lua
   local GameTab = Window:CreateTab("🎮 JOUW GAME", nil)
   ```

3. **Voeg scripts toe**
   ```lua
   GameTab:CreateButton({
       Name = "Auto Farm",
       Callback = function()
           -- Jouw script code
       end,
   })
   ```

4. **Test in game!**

### Voor Bestaande Game

1. Open `main.lua`
2. Zoek de juiste tab
3. Voeg je script toe
4. Test!

---

## 📝 Documentatie Updates

Als je documentatie wilt updaten:

1. **README.md** - Algemene info
2. **FEATURES.md** - Feature lijst
3. **CHANGELOG.md** - Versie geschiedenis
4. **QUICK_START.md** - Getting started

---

## ✅ Pull Request Checklist

Voor je een PR submit:

- [ ] Code werkt zonder errors
- [ ] Getest in game
- [ ] Comments toegevoegd
- [ ] Leesbaarheid gecontroleerd
- [ ] Geen console errors
- [ ] Documentatie updated (indien nodig)
- [ ] CHANGELOG.md updated (voor features)
- [ ] Branch is up-to-date met main

---

## 🎯 Prioriteiten

### High Priority
- 🔴 Critical bugs
- 🔴 Security issues
- 🟡 Game compatibility fixes

### Medium Priority
- 🟡 New game support
- 🟡 Feature improvements
- 🟢 UI enhancements

### Low Priority
- 🟢 Code refactoring
- 🟢 Documentation
- 🟢 Minor optimizations

---

## 💬 Vragen?

- **GitHub Issues** - Voor bugs en features
- **Discussions** - Voor algemene vragen
- **Discord** - Voor real-time chat

---

## 🏆 Contributors

Bedankt aan iedereen die bijdraagt!

Je naam wordt toegevoegd aan:
- Contributors lijst in README
- CHANGELOG voor je features
- Credits in de app

---

## 📄 License

Door bij te dragen ga je akkoord met de MIT License.

---

**Bedankt voor je bijdrage! 🎉**

*Inovo Productions Team*

