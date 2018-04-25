##
##
##



##_META:
##  todo:
##    - perhaps this could be gainfully converted to a jinja macro
##



## <JINJA>
{%- set _local_context = __context__ %}
{%- set _local_defaults = {} %}
{%- set _local_lookup = salt['pillar.get']('lookup:sls_path:' ~ sls, {}) %}
{%- set _local_overrides = {} %}
{#- initialize var, merge lookup from pillar, merge local overrides #}
{%- set var_dct = _local_defaults %}
{%- set _discard = var_dct.merge(_local_lookup) %}
{%- set _discard = var_dct.merge(_local_overrides) %}
{%- set var = var_dct %}{# optional shorter name #}
## </JINJA>



#



## EOF
