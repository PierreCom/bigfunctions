create or replace procedure {{ dataset.name }}.{{ name }}({% for argument in arguments %}{{ argument.name }} {{ argument.type}}{% if not loop.last %}, {% endif %}{% endfor %}{% for output in outputs %}, out {{ output.name }} {{ output.type}}{% endfor %})
options(
    description = '''{{ documentation }}'''
)
begin

{{ code }}

end;