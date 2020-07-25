![Build and push](https://github.com/punkerside/container-stress/workflows/Build%20and%20push/badge.svg)

# Container Stress

Contenedor que permite realizar pruebas de estres a nivel de infraestructura saturando la CPU y RAM. Permite realizar pruebas de escalamiento.

## Uso

1. Iniciar contenedor localmente:

```bash
docker run -ti -p 80:80 -m 512m --cpus 0.5 punkerside/container-stress:latest
```

2. Saturar RAM:

```bash
curl http://127.0.0.1/mem/300
```

3. Saturar CPU:

```bash
curl http://127.0.0.1/cpu/80
```

3. Limpiar procesos:

```bash
curl http://127.0.0.1/reset
```
