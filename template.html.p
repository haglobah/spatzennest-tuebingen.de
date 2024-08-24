◊(define title "Spatzennest Tübingen")
◊(define description "Im Spatzennest Tübingen werden ca. 700 Kinder in zwei dreiwöchigen Freizeiten im Sommer betreut.")
◊(define image-path "")
◊(define url "https://www.spatzennest-tuebingen.de/")
◊(define icon-path "")

◊(define background-blue "#44567e")
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
				(section ([class "max-w-4xl mx-auto p-4 h-[10vh] flex gap-4 items-center"])
				  (div ([class "md:hidden p-2"])
				    (button ([id "hamburger-button"]
				             [class "text-3xl cursor-pointer"]) \#9776 ))
					(a ([href "./index.html#welcome"] [class "flex flex-row items-center"])
					  (img ([src ""] [class "m-3 h-14 w-14"]))
					  (div ([class "flex flex-col"])
					    (h1 ([class "text-lg font-medium"]) "Evangelisches Waldheim")
					    (h2 ([class "text-xl font-medium"]) "Spatzennest Tübingen")))
				  (nav ([class "hidden md:block space-x-8 text-xl"] [aria-label "main"])
				  	   (a ([href "./freizeit.html"] [class "hover:opacity-90"]) "Freizeit")
				  	   (a ([href "./mitarbeitende.html"] [class "hover:opacity-90"]) "Mitarbeitende")
				  	   (a ([href "./foerderverein.html"] [class "hover:opacity-90"]) "Förderverein")))
				(section ([id "mobile-menu"] [class "fixed mt-[10vh] h-full hidden"])
					(div ([class "fixed inset-0"]))
					(div ([class "fixed z-10 mt-[10vh] top-0 h-full pt-6 bg-[#eeeeff] font-roboto text-zinc-700 transition-all duration-200 w-60 flex flex-col"])
				  	(nav ([class "flex flex-col pl-6 pr-2 gap-4 justify-evenly"] [aria-label "mobile"])
							(div ([class "flex flex-col gap-2 justify-evenly hover:opacity-90"])
								(a ([href "./index.html"] [class "text-xl hover:opacity-90"]) "Home")
								,◊(for/splice ([side-heading (in-list (select-from-doc 'h1 "index.html"))])
									`(a ([href ,(string-append "./index.html#" (heading-to-id side-heading))] [class "pl-2 sidebar-item"])
										,side-heading)
									)
								)
							(div ([class "flex flex-col gap-2 justify-evenly hover:opacity-90"])
								(a ([href "./freizeit.html"] [class "text-xl hover:opacity-90"]) "Freizeit")
								,◊(for/splice ([side-heading (in-list (or (select-from-doc 'h1 "freizeit.html") '()))])
									`(a ([href ,(string-append "./freizeit.html#" (heading-to-id side-heading))] [class "pl-2 sidebar-item"])
										,side-heading)
									)
								)
							(div ([class "flex flex-col gap-2 justify-evenly hover:opacity-90"])
								(a ([href "./mitarbeitende.html"] [class "text-xl hover:opacity-90"]) "Mitarbeitende")
								,◊(for/splice ([side-heading (in-list (or (select-from-doc 'h1 "mitarbeitende.html") '()))])
									`(a ([href ,(string-append "./mitarbeitende.html#" (heading-to-id side-heading))] [class "pl-2 sidebar-item"])
										,side-heading)
									)
								)
							(div ([class "flex flex-col gap-2 justify-evenly hover:opacity-90"])
								(a ([href "./foerderverein.html"] [class "text-xl hover:opacity-90"]) "Förderverein")
								,◊(for/splice ([side-heading (in-list (or (select-from-doc 'h1 "foerderverein.html") '()))])
									`(a ([href ,(string-append "./foerderverein.html#" (heading-to-id side-heading))] [class "pl-2 sidebar-item"])
										,side-heading)
									)
								)
							)))))
  ◊(->html `(body ([class "bg-[#eeeeff] leading-relaxed text-zinc-700 antialiased
								font-roboto
						   selection:bg-[#9FB4C7] selection:text-zinc-900"])
	              (div ([class "mx-auto min-h-screen max-w-screen-xl px-6 py-12
				  				md:px-12 md:py-20 lg:px-24 lg:py-0"])
					   ,doc)))
	◊(->html `(footer ([class "p-10 bg-[#44567e] text-[#eeeeff]"])
	  (div ([class "mx-auto"])
			(p ([class "text-center text-xl decoration-2 underline-offset-2 hover:underline"])
				(a ([href "rechtliches.html"])
						"Rechtliches")))
	))
  </body>
</html>
