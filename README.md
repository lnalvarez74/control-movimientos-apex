# Control de Movimientos (Gestión de Pagos 2026)

Aplicación web progresiva (PWA) desarrollada en **Oracle APEX 26.2.1** para el registro, control, visualización y análisis de movimientos financieros multimoneda (Bs, USD, EUR) por proyectos o centros de costo, integrando actualización automatizada de la tasa oficial del Banco Central de Venezuela (BCV).

---

## 📋 Información General

* **ID de Aplicación:** `145169`
* **Alias:** `CONTROL_DE_MOVIMIENTOS`
* **Versión:** `1.0`
* **Plataforma:** Oracle APEX `26.2.1` (Modo de compatibilidad `26.1`)
* **Esquema Propietario:** `WKSP_LAB74`
* **Idioma:** Español (`es`)
* **Características PWA:** Instalable (`standalone`), soporte de notificaciones Push habilitado.
* **Copyright:** © 2026 Vamilco. Todos los derechos reservados[cite: 2].

---

## 🚀 Funcionalidades Principales

1. **Inicio y Marquesina Informativa (Página 1)**
   * Banner corporativo con visualización dinámica de la tasa oficial BCV vigente (`&G_TASA_ACTUAL.`), cargada al iniciar la sesión mediante el proceso de aplicación `APP_TASA_ACTUAL`[cite: 2].
2. **Gestión de Movimientos Financieros (Páginas 6, 7 y 8)**
   * Listado de movimientos registrados y formulario modal (`Registro de Movimiento`) para operaciones CRUD (Crear, Consultar, Editar, Eliminar) sobre la tabla `MOVIMIENTOS_FINANCIEROS`[cite: 2].
   * Asociación por Proyecto/Centro de Costo, Categoría, Origen, Concepto, Moneda (`Bs`, `USD`, `EUR`) y tasa aplicada[cite: 2].
3. **Tablero de Control e Informes (Páginas 3 y 12)**
   * **Tarjetas KPI dinámicas:** Total Monto (Bs), Total Monto (USD), Tasa de Cambio Promedio y Total de Movimientos[cite: 2].
   * **Gráfico de Barras (Oracle JET):** Distribución de montos acumulados en USD por Proyecto / Centro de Costos[cite: 2].
   * **Filtrado Dinámico:** Selector por Centro de Costo (`P3_ID_PROYECTO`) con actualización asíncrona mediante Dynamic Actions (`NATIVE_REFRESH`)[cite: 2].
4. **Control Fiscal y Retenciones (Página 9)**
   * Módulo dedicado al seguimiento fiscal y retenciones asociadas a las operaciones[cite: 2].
5. **Gestión y Automatización de Tasa BCV (Página 5)**
   * Consulta del histórico de tasas (`TASA_CAMBIO_HISTORICO`) con exportación a CSV, HTML, XLSX y PDF[cite: 2].
   * **Sincronización Manual:** Botón `Actualizar Tasa BCV Hoy` que consulta el endpoint REST `https://ve.dolarapi.com/v1/dolares/oficial` y ejecuta un `MERGE` diario para evitar duplicados[cite: 2].
   * **Automatización Programada (`Auto_Actualizar_Tasa_BCV`):** Job diario configurado a las 06:00 AM (actualmente en estado `DISABLED`, listo para activarse)[cite: 2].

---

## 🗄️ Modelo de Datos y Objetos de Soporte

El paquete de exportación incluye los *Supporting Objects* y paquetes de datos iniciales (`APEX$DATA$PKG`) para las siguientes tablas:

| Tabla | Descripción |
| :--- | :--- |
| `MOVIMIENTOS_FINANCIEROS` | Tabla transaccional principal de ingresos, egresos y