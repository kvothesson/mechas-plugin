# Mechas — Contexto de desarrollo

Plugin de Claude Code del universo Kvothesson. Cada mecha es un skill con una función específica. Kvothesson las construye como obras de arte — no ejecutan órdenes, aprenden a soñar.

GitHub: https://github.com/kvothesson/mechas-plugin

---

## Índice — leer según tarea

| Tarea | Archivo |
|---|---|
| Ver qué hace cada mecha, sus args y contexto técnico | [.agents/mechas.md](.agents/mechas.md) |
| Escribir o corregir un `SKILL.md` | [.agents/skills.md](.agents/skills.md) |
| Agregar mecha nueva, checklist completo | [.agents/workflows.md](.agents/workflows.md) |
| Naming, tono, universo Kvothesson, reglas cross-platform | [.agents/identidad.md](.agents/identidad.md) |

---

## Estructura del repo

```
mechas-plugin/
├── .agents/
│   ├── mechas.md        ← catálogo y contexto de cada mecha
│   ├── skills.md        ← cómo escribir un SKILL.md de mecha
│   └── identidad.md     ← naming, tono, universo Kvothesson
├── .claude-plugin/
│   └── plugin.json      ← metadata + version (bumpar al hacer release)
├── skills/
│   └── [nombre-mecha]/
│       └── SKILL.md
├── README.md
└── AGENT.md             ← este archivo
```

---

## Reglas antes de commitear

Verificar que ningún archivo contiene rutas absolutas con nombre de usuario, paths a `.env`, tokens o credenciales, nombres de máquinas u organizaciones internas.

```bash
git diff --cached | grep -iE "Users/|Users\\\\|/home/[a-z]|\.env|api.key"
```

Si una ruta no funcionaría en la máquina de otra persona, no va al repo.
