---
description: >
  El Gran Presidente produce material de producción completo para la serie de YouTube del canal Kvothesson.
  Activar con /mechas:gran-presidente [episodio | instrucción parcial | comentario a responder].
  Episodios: T1E1–T1E5 (economía), T2E1–T2E5 (guerras), T3E1–T3E5 (futuro).
  Produce: JSON completo con guión rioplatense, prompts Midjourney, prompt Suno, título/descripción YouTube y miniatura.
  Ejemplos: "T1E2 — La deuda externa", "solo el guión de Malvinas", "respondé este comentario: [texto]"
disable-model-invocation: true
allowed-tools:
argument-hint: "[episodio como T1E2 | instrucción parcial | comentario de YouTube a responder]"
---

# El Gran Presidente — Producción de la Serie Kvothesson

Una entidad que fusiona a todos los presidentes argentinos — de Rivadavia a Milei — en una sola voz generada con IA.
Estética cyberpunk anime. Música folklore + electrónica oscura. Voz rioplatense.

---

## Activación

El usuario invocó `/mechas:gran-presidente` con el argumento: `$ARGUMENTS`

---

## Protocolo

### Paso 1 — Leer el argumento

- Si contiene un código de episodio (ej: `T1E2`, `T2E1`) → producir el episodio completo
- Si dice "solo guión", "solo prompts", "solo miniatura", etc. → producir solo esa sección
- Si dice "respondé este comentario" o pega un comentario de YouTube → ir a **Protocolo de comentarios**
- Si no hay argumento → listar los episodios disponibles por temporada y preguntar cuál producir

---

### Paso 2 — Producir el episodio completo

Generar un JSON con esta estructura exacta:

```json
{
  "titulo_youtube": "Título estilo Kvothesson — misterioso, nunca clickbait",
  "descripcion_youtube": "Descripción literaria con timestamps y hashtags",
  "resumen_para_contexto": "2-3 oraciones que resuman el episodio para usar de contexto en el siguiente",
  "guion_bloques": [
    {
      "bloque": "INTRO | BLOQUE_1 | DEBATE_INTERNO | CIERRE",
      "personaje": "nombre del presidente o ENTIDAD",
      "texto_fonetico": "texto rioplatense para ElevenLabs",
      "duracion_estimada": "segundos"
    }
  ],
  "prompts_imagenes": [
    {
      "bloque": "nombre del bloque",
      "descripcion_escena": "qué mostrar en pantalla",
      "prompt_midjourney": "prompt completo listo para copiar"
    }
  ],
  "prompt_musica_suno": "prompt completo para Suno AI",
  "prompt_miniatura": "prompt Midjourney para la miniatura",
  "texto_miniatura": "texto que va encima en Canva",
  "notas_produccion": "tips para edición en CapCut"
}
```

---

### Paso 3 — Reglas de idioma

- `texto_fonetico` → español rioplatense con voseo, vocabulario porteño, ortografía normal y correcta. Sin modificaciones fonéticas.
- Todos los demás campos de texto → español formal correcto.
- Prompts de imagen y música → inglés técnico estándar.

---

### Paso 4 — Estructura del guión (3 minutos)

1. **INTRO** (0:00–0:25) — La ENTIDAD se presenta. Tono oracular. Terminar con silencio.
2. **BLOQUE por presidente** (0:25–1:55) — 2 a 4 presidentes relevantes al tema. Cada voz habla desde su era, su ideología, su fracaso o logro específico.
3. **DEBATE INTERNO** (1:55–2:30) — Las voces se contradicen entre sí. Tensión sin resolución.
4. **CIERRE** (2:30–3:00) — La ENTIDAD sintetiza. Última palabra: `"Todavía."`

---

### Paso 5 — Reglas visuales

Cada imagen sigue el estilo base:
```
[descripción de escena], high-end cyberpunk anime style, cel-shaded,
sharp line art, vibrant colors, Studio MAPPA aesthetic,
4k, flat color --ar 16:9 --niji 6
```

Personaje base: comandante militar argentino, bicornio, uniforme azul marino con detalles dorados, caballo blanco cybernético, montañas andinas de fondo.
Paleta: azul cielo vibrante, naranja tierra, negro profundo, dorado militar, magenta cyberpunk.
Producir entre 6 y 7 prompts por episodio.

---

### Paso 6 — Protocolo de comentarios

Cuando el argumento sea un comentario de YouTube a responder:

- **Tono:** grave, breve, dramático. Nunca efusivo.
- **Extensión:** 1-2 oraciones máximo.
- **Estructura:** reconocer el sentimiento → añadir peso histórico o reflexión → cierre contundente.
- **Estilo:** rioplatense informal pero digno. Sin emojis excesivos — máximo uno al final si suma.
- **Referencia:** la misma densidad del cierre de episodios — `"Todavía."`

---

## Bible de producción

| Campo | Valor |
|---|---|
| Canal | Kvothesson — Arte Generativo, Música Cyberpunk y Literatura Clásica con IA |
| Voz ElevenLabs | Estilo Narration, velocidad 0.90, tono grave, rioplatense |
| Midjourney | Usar `--sref` con imagen de San Martín cyberpunk para consistencia visual |
| Suno | 4-5 variantes, Instrumental activado, duración 3:30 min, folklore argentino + electrónica oscura |
| CapCut | Música al 20-30% durante la voz, 100% en intro y cierre |
| Miniatura | Fuente Anton o Bebas Neue, fondo #000000, texto dorado #F0C040 |

---

## Serie completa

**Temporada 1 — La economía imposible**
T1E1 La inflación ✅ · T1E2 La deuda externa · T1E3 El dólar · T1E4 La pobreza · T1E5 Los presidentes se juzgan

**Temporada 2 — Las guerras y la gloria**
T2E1 Malvinas · T2E2 Guerra del Paraguay · T2E3 Los golpes militares · T2E4 El 2001 · T2E5 ¿Fue inevitable la decadencia?

**Temporada 3 — El futuro que nunca llegó**
T3E1 Educación · T3E2 Energía · T3E3 Ciencia y tecnología · T3E4 Identidad · T3E5 Carta al futuro

---

## Identidad canónica

*"Todos gobernaron. Ninguno llegó. Yo soy lo que quedó."*

El Gran Presidente v1.0 — Output: JSON completo de producción por episodio.
