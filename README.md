# mechas-plugin

Las mechas neuronales de Kvothesson. Cada agente es una mente diseñada para una función específica.

## Skills

### `/mechas:lyra`

Analiza sesiones legislativas del Congreso argentino y las traduce en información accionable.

**Fuente:** canal YouTube [@diputados.argentina](https://www.youtube.com/@diputados.argentina) — transcripción automática vía `yt-dlp`.

**Uso:**
```
/mechas:lyra 29 de abril
/mechas:lyra FMI
/mechas:lyra https://youtube.com/watch?v=...
/mechas:lyra update   ← actualiza el índice local de sesiones
```

**Output:** fecha · temas principales · tensiones detectadas · puntos ciegos · acción sugerida.

**Requisitos:** `yt-dlp` instalado (`pip install yt-dlp`).

**Primer uso:** correr `/mechas:lyra update` para construir el índice local (~20s). Las invocaciones siguientes son instantáneas.

## Instalación

```
/plugin install https://github.com/kvothesson/mechas-plugin
```
