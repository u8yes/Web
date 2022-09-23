<script type="text/javascript">
      google.load("jquery", "1.4.3");
</script>
<script type="text/javascript" src="./jquery.innerfade.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
			var username = 'your_twitter_account';
			var tw_api = 'http://twitter.com/statuses/user_timeline/';
			tw_api += username+'.json?count=5&callback=?';
			var list = '<h4>Tweet Now!</h4><ul class="item_list">';
                
                $.getJSON(tw_api, function(json){
                        for (i=0; i<json.length; i++) {
				var username = json[i].user.screen_name;
                           	var icon = json[i].user.profile_image_url;
                           	var text = formatTweet(json[i].text);
                           	var relative = relative_time(json[i].created_at);
                            	list += '<li><div class="tweet"><img src="'+ icon + '"/><p><span>';
                           	list += text+'</span><br/><a style="font-size:85%" href="http://twitter.com/';
                           	list += username+'/statuses/'+json[i].id+'">'+relative+'</a></p></div></li>';
                    	}

                        list += '</ul>';
			$("div#tweet").empty().html(list);

			$('ul.item_list').innerfade({
                               speed: 2000,
                               timeout: 10000,
                           	wait: 3000,
			});

		});


		function formatTweet(str) {
			var str = ' '+str;
			str = str.replace(/(https?:\/\/[-_.!~*\'()a-zA-Z0-9;\/?:\@&=+\$,%#]+)/,
					function(u) {
						var shortUrl = (u.length > 30) ? u.substr(0, 30) + '...': u;
						return '<a href="' + u + '">' + shortUrl + '</a>';
					})
				.replace(/@([a-zA-Z0-9_]+)/g,'@<a href="http://twitter.com/$1">$1</a>')
				.replace(/(?:^|\s)#([^\s\.\+:!]+)/g,
					function (a, u) {
                                    		return ' <a href="http://twitter.com/search?q=' + encodeURIComponent(u) + '">#' + u + '</a>';
				});
			return str;
		}


		function relative_time(dateString) {
			var rightNow = new Date();
			var then = new Date(dateString);
			var browser = function() {
      				var ua = navigator.userAgent;
      				return {ie: ua.match(/MSIE\s([^;]*)/)};
				};
			if (browser.ie) {
				then = Date.parse(dateString.replace(/( \+)/, ' UTC$1'));
			}
      
			var diff = rightNow - then;
			var second = 1000,
			minute = second * 60,
			hour = minute * 60,
			day = hour * 24,
			week = day * 7;
			if (isNaN(diff) || diff < 0) {
				return ""; // return blank string if unknown
			}
			if (diff < second * 7) {
				return "right now";
			}
			if (diff < minute) {
				return Math.floor(diff / second) + " seconds ago";
			}
			if (diff < minute * 2) {
				return "about 1 minute ago";
			}
			if (diff < hour) {
				return Math.floor(diff / minute) + " minutes ago";
			}
			if (diff < hour * 2) {
				return "about 1 hour ago";
			}
			if (diff < day) {
				return  Math.floor(diff / hour) + " hours ago";
			}
			if (diff > day && diff < day * 2) {
				return "yesterday";
			}
			if (diff < day * 365) {
				return Math.floor(diff / day) + " days ago";
			}
			else {
				return "over a year ago";
			}
		}


        	return false;
	});
</script>