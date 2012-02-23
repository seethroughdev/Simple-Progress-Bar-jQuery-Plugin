## Simple Progress Bar Plugin for jQuery

#### Disclaimer

I created this plugin to practice creating jQuery plugins using Coffee Script.

And I'd only recommend using it for learning or building, because there might better ways to do it.

That said, this is currently used on a high traffic production environment. And it works quite well...

Its a simple bar plugin that takes a number between 0-100 and creates an animated bar that grows to the required length.

It has an option for vertical or horizontal.

#### Usage

##### HTML

```html
<div class="my-progress-bar" data-bar-length="10"></div>
```

Where the data-bar-length value would the relative length.

This is best used in dynamic situations.

##### CSS

The CSS is also straight forward:

```css
.my-progress-bar{
	overflow: hidden;
	display: inline-block;
	height: 30px; 				/* Set height of bar */
	background: white;			/* Set background color or image */
	width: 260px;				/* Set width of bar */
}

.my-progress-bar div{
	float:left;
	height:30px;				/* For a horizontal bar, set fixed height, for vertical bar, set fixed width */
	background:#ffff01;			/* Set background color or image of current bar */
}

/* .my-progress-bar div is a great place to add css3 effects */
```

##### Javascript
First you must require jQuery.

```js
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
```

Then add the call to the plugin:

```js
$(document).ready(function() {
	$('.my-progress-bar').simpleProgressBar();
});
```

The plugin defaults to horizontal, but you can also make it vertical by passing in the option:

```js
$(document).ready(function() {
	$('.my-progress-bar').simpleProgressBar({
		direction: 'vertical'
	});
});
```

---

That's about it!  If you have any questions, don't hesitate to post an issue or contact me.