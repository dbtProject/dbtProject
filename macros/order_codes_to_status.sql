{% macro order_codes_to_status(codes) %}

{% if codes == 0 %}
return 'Placed'
{% elif codes == 1 %}
return 'Shipped'
{% elif codes == 2 %}}
return 'Completed'
{% elif codes == 3 %}
return 'Returned'
{% elif codes == 4 %}
return 'Return_Pending'
{% else %}
return NULL
{% endif %}

{% endmacro %}