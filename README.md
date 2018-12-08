# drone-netlify
Drone plugin to push a site to netlify

Recommend that you predefine a secret in drone and reference it.
```yaml
kind: pipeline
name: default

steps:
- name: netlify
  image: airbornelamb/drone-netlify
  settings:
    netlify_auth_token:
      from_secret: DRONENAMEDSECRET
    netlify_site_id: xxxxx-xxxx-xxxx
    dir: /drone/src/_site # path must be defined, this is _site for Jekyll
    message: "Yay I uploaded" # Optional deploy message

```

Other method where the secret is passed.
```yaml
kind: pipeline
name: default

steps:
- name: netlify
  image: airbornelamb/drone-netlify
  settings:
    netlify_auth_token: xxxxx-xxxx-xxxx
    netlify_site_id: xxxxx-xxxx-xxxx
    dir: /drone/src/_site # path must be defined, this is _site for Jekyll
    message: "Yay I uploaded" # Optional deploy message
```
