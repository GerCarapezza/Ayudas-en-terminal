# 💻 Trabajo Práctico: Let Them Cook

Este repositorio contiene el desarrollo del TP de Sistemas Operativos de la UTN-FRBA (2C2025).

---

## 🛠️ Despliegue del Entorno

### 🚀 Pasos Iniciales

1. **Iniciar la VM** y obtener tu IP local con:

   ```bash
   ifconfig
   ```

2. **Conectarse con Putty** desde tu host usando la IP obtenida.

---

### 🔑 Token para GitHub


Nombre: 	COMPLETARRRRRRRRRR

Llave: COMPLETARRRRRRRRRR

---

## 📦 Clonar Repositorios

> ⚠️ Para conexiones lentas (como las de la facultad), se recomienda clonar **solo la rama principal**.

### Repositorio del TP (requiere clave SSH)

```bash
git clone --depth 1 --filter=blob:none --single-branch --branch https://github.com/sisoputnfrba/tp-2025-2c-Here-we-go-again.git

### Ayudas (sin clave)

```bash
git clone --depth 1 --branch main https://github.com/GerCarapezza/Ayudas-en-terminal.git
```

### Scripts de Pruebas (solo para Memoria)

```bash
git clone --depth 1 --branch main https://github.com/sisoputnfrba/master-of-files-pruebas.git
```

---

## 🧪 Verificar Entorno de Trabajo


## 🧰 Uso de Scripts de Ayuda

### 🔧 Modificar configuración de archivos .config

1. Dar permisos de ejecución:

   ```bash
   chmod +x Ayudas-en-terminal/modificar_configs.sh

   ```

2. Usar el script:

   ```bash
   ./modificar_configs.sh <clave> <nuevo_valor> <ruta_a_jsons>
   ```

---

### 🖱️ Habilitar Scroll del Mouse en `tmux` (opcional)

1. Dar permisos de ejecución:

   ```bash
   chmod +x configurar_tmux.sh
   ```

2. Ejecutar (por defecto 10000 líneas):

   ```bash
   ./configurar_tmux.sh [LINEAS]
   ```

---

## 🔌 Configuración de IPs en Archivos JSON

> Usar el script `modificar_configs.sh` dentro de la carpeta de **Ayudas**.

- **Storage**: 
- **Master**: 
- **Worker**: 
- **Query_Control**: 

---

## ⚙️ Indicar configuración por parámetro al iniciar el módulo

1. 
2. 
3. 
4. 
5. 
6. 



## 🧰 Comandos útiles de Linux

| Comando | Descripción |
|--------|-------------|
| `htop` | Administrador de tareas / monitor de procesos |
| `cat` | Ver contenido de archivos |
| `nano` | Editor de texto en terminal |
| `cd ..` | Subir un nivel de directorio |
| `cd` | Ir al directorio *home* |
| `ls` | Listar archivos en el directorio actual |
| `tmux` | Multiplexar terminales |
| `tail -f archivo.log` | Ver logs en tiempo real |
| `netstat -tuln` | Chequear puertos abiertos (TCP/UDP) |
| `hexdump -C archivo.dmp` | Mostrar dump en hexadecimal + ASCII |


---
