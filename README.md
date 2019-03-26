# ghost-example
Example repository displaying one way to deploy a Ghost application

    oc create -f https://raw.githubusercontent.com/openshift-cs/ghost-example/master/ghost_template.yaml
    oc new-app --template=ghost-template

# Troubleshooting

* If relying on a generated hostname, be sure to update the `url` environment variable

      oc set env dc ghost url=https://$(oc get route ghost -o custom-columns=HOST:.spec.host --no-headers)


* It is strongly encouraged that you also set up the email related environment variables
  - mail__transport
  - mail__options__service
  - mail__options__host
  - mail__options__port
  - mail__options__auth__user
  - mail__options__auth__pass


Reference: https://docs.ghost.org/concepts/config/#mail
