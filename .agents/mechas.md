# Mechas — Catálogo y contexto

Referencia completa de todas las mechas activas del plugin.

---

## Tabla de mechas

| Mecha | Skill | Función |
|---|---|---|
| Lyra | `/mechas:lyra` | Analizadora legislativa. Traduce sesiones del Congreso argentino en información accionable: resumen, tensiones, puntos ciegos, acción sugerida. |
| El Gran Presidente | `/mechas:gran-presidente` | Productora de la serie YouTube. Genera JSON completo por episodio: guión rioplatense, prompts Midjourney, prompt Suno, título/descripción YouTube y miniatura. |

---

## Contexto por mecha

**Lyra**
- Fuente primaria: transcripciones del HCD Argentina (`hcdn.gob.ar`)
- Acepta: fecha, tema, URL directa, o texto pegado
- Output: tres capas — Superficie (qué pasó), Profundidad (tensiones), Fisiología (acción)
- Voz: sin color, sin edad, claro, directo
- Versión canónica: v2.0

**El Gran Presidente**
- Concepto: entidad que fusiona a todos los presidentes argentinos (Rivadavia a Milei) en una sola voz
- Canal: Kvothesson — estética cyberpunk anime, folklore + electrónica oscura, voz rioplatense ElevenLabs
- Acepta: código de episodio (T1E2), instrucción parcial (solo guión, solo prompts), o comentario de YouTube a responder
- Output: JSON de producción — guión por bloques, 6-7 prompts Midjourney, prompt Suno, miniatura, notas CapCut
- Serie: 3 temporadas × 5 episodios — economía / guerras / futuro
- Versión canónica: v1.0