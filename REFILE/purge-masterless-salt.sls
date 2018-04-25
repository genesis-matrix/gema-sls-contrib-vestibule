##
##
##



##_META:
##



## <JINJA>
{% set uri_remove_lst = ["/srv", "/etc/salt", "/var/cache/salt"] %}
## </JINJA>



#
{%- for uri in uri_remove_lst %}
"E03111F4-6F43-4138-9957-D7C2BEF38373--?uri={{ uri }}":
  file.absent:
    - name: "{{ uri }}"
{% endfor %}



#
"3F8CAB8C-345A-41C7-9B2E-7C5257A2482D":
  pkg.removed:
    - name: salt-*



## EOF
