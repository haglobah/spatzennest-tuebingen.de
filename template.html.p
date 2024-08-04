◊(define title "Spatzennest Tübingen")
◊(define description "Im Spatzennest Tübingen werden ca. 700 Kinder in zwei dreiwöchigen Freizeiten im Sommer betreut.")
◊(define image-path "")
◊(define url "https://www.spatzennest-tuebingen.de/")
◊(define icon-path "")

◊(define space-cadet "#44567e")
◊(define lavender "#eeeeff")

◊(define powder-blue "#9FB4C7")
◊(define cornflower-light "#97b6f0")
◊(define sienna "#DC755C")
◊(define sienna-light "#ecb1a2")

<!DOCTYPE html>
<html lang="de-DE" class="sm:scroll-smooth">
  <head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta property="og:locale" value="en_US">
	<meta property="og:type" value="website">
	<meta property="og:site_name" content="◊|title|" >
	<meta property="og:url" value="◊|url|" >
	<meta property="og:image" value="◊|image-path|" >
	<meta property="og:image:secure_url" content="◊|url|" />
	<meta property="og:image:type" content="image/jpg">
	<meta property="og:image:width" content="800">
	<meta property="og:image:height" content="1200">
	<meta property="og:image:alt" content="◊|title|" >
	<meta property="og:title" value="◊|title|" >
	<meta property="og:description" value="◊|description|" >

	<meta property="twitter:title" value="◊|title|" >
	<meta property="twitter:description" value="◊|description|" >
	<meta property="twitter:url" value="◊|url|" >
	<meta property="twitter:image" value="◊|image-path|" >

	<title>◊|title|</title>
	<meta name="description" content="◊|description|" >
	<link rel="icon" type="image/x-icon" href="◊|icon-path|">

	<link rel="stylesheet" href="fonts.css"> 
	<script src="https://cdn.tailwindcss.com"></script>
  </head>
  ◊(->html `(body ([class "bg-[#44567e] leading-relaxed text-[#eeeeff] antialiased
						   font-roboto
						   selection:bg-[#9FB4C7] selection:text-zinc-900"])
	              (div ([class "mx-auto min-h-screen max-w-screen-xl px-6 py-12
				  				md:px-12 md:py-20 lg:px-24 lg:py-0"])
					   ,doc)))
  </body>
</html>
