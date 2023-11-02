# firebase-auth-emulator

Firebase Auth Emulator Container Image

Reference: https://github.com/seletskiy/firebase-emulator/tree/master

## Usage

```bash
docker run -it --rm \
  -p 4000:4000 \
  -p 9099:9099 \
  ghcr.io/timfanda35/firebase-auth-emulator
```

- Emulator UI: http://127.0.0.1:4000
- Firebase Auth API Prefix: `http://127.0.0.1:9099/identitytoolkit.googleapis.com/v1`
- project id: `firebase-auth-emulator`
