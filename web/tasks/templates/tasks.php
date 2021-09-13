{% extends "layout.php" %}

{% block body %}
    <h1>Tasks</h1>
    <ul>
        {% for todo in todos %}
            <li> {{ todo }}</li>
        {% endfor %}
    </ul>

    <a href="/add">Create a New Task</a>
{% endblock %}
