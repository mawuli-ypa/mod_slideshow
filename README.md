mod_slideshow
=============

Simple and lightweight image slideshow module for Zotonic.

Displays the images in a category as a slideshow.

This module uses the [ResponsiveSlides] Javascript library.

## To use

* Enable mod_slideshow
* Create a category for the images, preferably a sub-category of the "images" category
* Add images to the category
* Add "js/responsiveslides.js" and "css/responsiveslides.css" libraries to your template file.

    ````
    {% lib
         "css/responsiveslides.css"
         "js/responsiveslides.js"
    %}
    ````

* Then use ``{% slideshow category=category_id html_tag=slideshow_html_tag %}``
  For example:

    ````
    {% slideshow category="news_headlines_images" html_tag="demo-slides" %}
    ````

* Make sure you include the css for the slideshow , and call the plugin on the html element tag as documented on the
   [ResponsiveSlides] website. For example:

```javascript
<script>
  $(function() {
      $(".demo-slides").responsiveSlides();
  });
</script>
```

* For more information on styling and the Javascript plugin options, visit the [ResponsiveSlides] website.


[ResponsiveSlides]: http://responsiveslides.com/ "Simple & lightweight responsive slider plugin"
