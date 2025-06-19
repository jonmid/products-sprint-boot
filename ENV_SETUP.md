# Configuración de Variables de Entorno

Este proyecto utiliza variables de entorno para manejar configuraciones sensibles como credenciales de base de datos y claves JWT.

## Configuración Inicial

1. **Copiar el archivo de ejemplo:**
   ```bash
   cp env.example .env
   ```

2. **Editar el archivo `.env`:**
   ```bash
   # Database Configuration
   DB_URL=jdbc:postgresql://your-host:5432/your-database
   DB_USERNAME=your-username
   DB_PASSWORD=your-password

   # JWT Configuration
   JWT_SECRET=your-jwt-secret-key-here
   JWT_EXPIRATION=86400000
   ```
3. ****
   ```bash
   ./setup-env.sh
   ```

## Variables de Entorno Disponibles

### Base de Datos
- `DB_URL`: URL de conexión a PostgreSQL
- `DB_USERNAME`: Usuario de la base de datos
- `DB_PASSWORD`: Contraseña de la base de datos

### JWT
- `JWT_SECRET`: Clave secreta para firmar tokens JWT (mínimo 256 bits)
- `JWT_EXPIRATION`: Tiempo de expiración del token en milisegundos

## Seguridad

- El archivo `.env` está incluido en `.gitignore` para evitar que se suba al repositorio
- Las variables tienen valores por defecto en `application.properties` como fallback
- En producción, usa variables de entorno del sistema operativo o del contenedor

## Desarrollo vs Producción

### Desarrollo
- Usa el archivo `.env` local
- Los valores por defecto están en `application.properties`

### Producción
- Usa variables de entorno del sistema
- No dependas del archivo `.env`
- Configura las variables en tu plataforma de despliegue (Heroku, AWS, etc.)

## Ejemplo de uso en código

```java
@Autowired
private EnvironmentConfig envConfig;

// Usar las variables
String dbUrl = envConfig.getDatabaseUrl();
String jwtSecret = envConfig.getJwtSecret();
``` 