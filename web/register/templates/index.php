{% extends "layout.php" %}

{% block body %}
    <h1>Registrants</h1>

    <ul>
        {% for row in rows %}
            <li>{{ row[1] }} ({{ row[2] }})</li>
        {% endfor %}
    </ul>

    <a href="/register">Register</a>
{% endblock %}
