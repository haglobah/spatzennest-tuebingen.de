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
	<script src="./main.js" defer></script>
  </head>
	◊(->html `(header ([class "bg-[#44567e] text-[#eeeeff] sticky top-0 z-10"])
				(section ([class "max-w-4xl mx-auto p-4 min-h-20 h-[10vh] flex justify-between items-center"])
					(a ([href "./index.html#welcome"] [class "flex flex-row items-center"])
					  (img ([src ""] [class "m-3 h-14 w-14"]))
					  (div ([class "flex flex-col"])
					    (h1 ([class "text-lg font-medium"]) "Evangelisches Waldheim")
					    (h2 ([class "text-xl font-medium"]) "Spatzennest Tübingen")))
				  (div 
				    (button ([id "hamburger-button"]
				             [class "text-3xl md:hidden cursor-pointer"]) \#9776 ))
				  (nav ([class "hidden md:block space-x-8 text-xl"] [aria-label "main"])
				  	   (a ([href "./freizeit.html"] [class "hover:opacity-90"]) "Freizeit")
				  	   (a ([href "./mitarbeitende.html"] [class "hover:opacity-90"]) "Mitarbeitende")
				  	   (a ([href "./foerderverein"] [class "hover:opacity-90"]) "Förderverein")))
				(section ([id "mobile-menu"] [class "absolute top-0 bg-zinc-900 w-full text-zinc-400 text-3xl flex-col justify-content-center hidden"])
				  (button ([class "text-7xl min-h-[10vh] self-end px-6"]) \times)
				  (nav ([class "flex flex-col pb-8 items-center gap-8 justify-evenly"] [aria-label "mobile"])
				    (a ([href "./freizeit.html#about"] [class "w-full text-center hover:opacity-90"]) "Freizeit")
				    (a ([href "./mitarbeitende.html#methods"] [class "w-full text-center hover:opacity-90"]) "Mitarbeitende")
				    (a ([href "./foerderverein"] [class "w-full text-center hover:opacity-90"]) "Förderverein")))))
  ◊(->html `(body ([class "bg-[#eeeeff] leading-relaxed text-zinc-700 antialiased
								font-roboto
						   selection:bg-[#9FB4C7] selection:text-zinc-900"])
	              (div ([class "mx-auto min-h-screen max-w-screen-xl px-6 py-12
				  				md:px-12 md:py-20 lg:px-24 lg:py-0"])
					   ,doc)))
	◊(->html `(footer ([class "p-10 bg-[#72AA29]/40"])
	  (div ([class "mx-auto"])
			(p ([class "text-center text-zinc-700 dark:text-zinc-200 text-2xl hover:underline"])
				(a ([href "legal.html"])
						"Rechtliches")))
	))
  </body>
</html>
