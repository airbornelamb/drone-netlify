# drone-netlify
Drone plugin to push a site to netlify

```yaml
kind: pipeline
name: default

steps:
- name: netlify
  image: airbornelamb/drone-netlify
  settings:
    netlify_auth_token:
      from_secret: xxxxx-xxxx-xxxx
    netlify_site_id:
      from_secret: xxxxx-xxxx-xxxx
```
