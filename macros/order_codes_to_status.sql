{% macro order_codes_to_status(codes) %}

{% if codes == 0 %}
{{ log('Placed', info=True) }}
{% elif codes == 1 %}
'Shipped'
{% elif codes == 2 %}
'Completed'
{% elif codes == 3 %}
'Returned'
{% elif codes == 4 %}
'Return_Pending'
{% else %}
'NULL'
{% endif %}

{% endmacro %}

