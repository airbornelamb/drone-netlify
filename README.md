# drone-netlify
Drone plugin to push a site to netlify

```yaml
kind: pipeline
name: default

steps:
- name: netlify
  image: airbornelamb/drone-netlify
  settings:
    NETLIFY_AUTH_TOKEN:
      from_secret: xxxxx-xxxx-xxxx
    NETLIFY_SITE_ID:
      from_secret: xxxxx-xxxx-xxxx
```
