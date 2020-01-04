
all: Midterm-In-Class.html Final-Study-Guide.html Final.html S20-Study-Guide.html

FR=./Lectures/01

Midterm-In-Class.html: Midterm-In-Class.md
	markdown-cli --input=./Midterm-In-Class.md --output=Midterm-In-Class.html
	cat ${FR}/css/pre ${FR}/css/markdown.css ${FR}/css/post ./md.css ${FR}/css/hpre Midterm-In-Class.html ${FR}/css/hpost >/tmp/Midterm-In-Class.html
	mv /tmp/Midterm-In-Class.html ./Midterm-In-Class.html

Final-Study-Guide.html: Final-Study-Guide.md
	markdown-cli --input=./Final-Study-Guide.md --output=Final-Study-Guide.html
	cat ${FR}/css/pre ${FR}/css/markdown.css ${FR}/css/post ./md.css ${FR}/css/hpre Final-Study-Guide.html ${FR}/css/hpost >/tmp/Final-Study-Guide.html
	mv /tmp/Final-Study-Guide.html ./Final-Study-Guide.html

Final.html: Final.md
	markdown-cli --input=./Final.md --output=Final.html
	cat ${FR}/css/pre ${FR}/css/markdown.css ${FR}/css/post ./md.css ${FR}/css/hpre Final.html ${FR}/css/hpost >/tmp/Final.html
	mv /tmp/Final.html ./Final.html

S20-Study-Guide.html: S20-Study-Guide.md
	markdown-cli --input=./S20-Study-Guide.md --output=S20-Study-Guide.html
	cat ${FR}/css/pre ${FR}/css/markdown.css ${FR}/css/post ./md.css ${FR}/css/hpre S20-Study-Guide.html ${FR}/css/hpost >/tmp/S20-Study-Guide.html
	mv /tmp/S20-Study-Guide.html ./S20-Study-Guide.html

