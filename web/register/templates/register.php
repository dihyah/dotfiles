{% extends "layout.php" %}

{% block body %}
    <h1>Register</h1>

    <form action="/register" method="post">
        <input type="text" name="name" placeholder="Name">
        <input type="text" name="email" placeholder="Email address">
        <input type="submit" value="Submit">
    </form>
{% endblock %}
