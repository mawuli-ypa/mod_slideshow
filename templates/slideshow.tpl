<ul class="{{slideshow_tag}}">
  {% for id in m.search[{query cat=image_category sort='-rsc.modified'}] %}
  <li>
    {% image m.media[id].filename alt="{{m.media.[id].title}}" %}
  </li>
  {% endfor %}
</ul>
