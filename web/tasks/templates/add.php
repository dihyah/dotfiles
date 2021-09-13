{% extends "layout.php" %}

{% block body %}
    <form action="/add" method="post">
        <input id="task" name="task" type="text" placeholder="Task name">
        <input id="submit" type="submit" value="submit" disabled>
    </form>
    <script>
        document.querySelector('#task').onkeyup = function(){
            if (document.querySelector('#task').value === ''){
                document.querySelector('#submit').disabled = true;
            } else {
                document.querySelector('#submit').disabled = false;
            }
        }
    </script>
{% endblock %}
