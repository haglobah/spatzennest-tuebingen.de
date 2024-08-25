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
				(section ([class "max-w-4xl mx-auto p-4 h-[12vh] flex gap-4 items-center justify-center"])
				  (div ([class "md:hidden p-2"])
				    (button ([id "hamburger-button"]
				             [class "text-3xl cursor-pointer"]) \#9776 ))
					(a ([href "./index.html"] [class "flex flex-row items-center"])
					  (img ([src ""] [class "m-3 h-14 w-14"]))
					  (div ([class "mx-auto"])
					    (h1 ([class "text-lg font-medium"]) "Evangelisches Waldheim")
					    (h2 ([class "text-xl font-medium"]) "Spatzennest Tübingen"))))
				(section ([id "mobile-menu"] [class "fixed mt-[12vh] h-full hidden"])
					(div ([class "fixed inset-0"]))
					(div ([class "fixed z-10 mt-[10vh] top-0 h-full pt-6 bg-[#eeeeff] font-roboto text-zinc-700 transition-all duration-200 w-60 flex flex-col"])
				  	(nav ([class "flex flex-col pl-6 pr-2 gap-4 justify-evenly"] [aria-label "mobile"])
							,◊(for/splice ([sidebar-section-link (in-list '("index.html" "freizeit.html" "mitarbeitende.html" "foerderverein.html"))]
														 [sidebar-section-name (in-list '("Home" "Freizeit" "Mitarbeitende" "Förderverein"))])
								`(div ([class "flex flex-col gap-2 justify-evenly hover:opacity-90"])
									(a ([href ,sidebar-section-link] [class "text-xl hover:opacity-90"]) ,sidebar-section-name)
									,◊(for/splice ([sidebar-heading (in-list (or (select-from-doc 'h1 sidebar-section-link) '()))])
										`(a ([href ,(string-append sidebar-section-link "#" (heading-to-id sidebar-heading))] [class "pl-2 mobile-sidebar-item"])
											,sidebar-heading)
										)
									)
								)
							)))
				))
  ◊(->html
		`(body ([class "bg-[#eeeeff] leading-relaxed text-zinc-700 antialiased font-roboto selection:bg-[#9FB4C7] selection:text-zinc-900"])
			(div ([class "flex"])
				(aside ([id "desktop-menu"] [class "sticky top-[12vh] p-4 pt-8 h-[70vh] hidden md:block"])
					(div ([class "sticky bg-[#eeeeff] font-roboto text-zinc-700 transition-all duration-200 w-60 flex flex-col"])
				  	(nav ([class "sticky flex flex-col pl-6 pr-2 gap-4 justify-evenly"] [aria-label "mobile"])
							,◊(for/splice ([sidebar-section-link (in-list '("index.html" "freizeit.html" "mitarbeitende.html" "foerderverein.html"))]
														 [sidebar-section-name (in-list '("Home" "Freizeit" "Mitarbeitende" "Förderverein"))])
								`(div ([class "flex flex-col gap-2 justify-evenly hover:opacity-90"])
									(a ([href ,sidebar-section-link] [class "text-xl hover:opacity-90"]) ,sidebar-section-name)
									,◊(for/splice ([sidebar-heading (in-list (or (select-from-doc 'h1 sidebar-section-link) '()))])
										`(a ([href ,(string-append sidebar-section-link "#" (heading-to-id sidebar-heading))] [class "pl-2 desktop-sidebar-item"])
											,sidebar-heading)
										)
									)
								)
							)))
				(div ([class "mx-auto min-h-screen max-w-screen-lg px-6 py-12"])
					,doc))))
	◊(->html `(footer ([class "p-10 bg-[#44567e] text-[#eeeeff]"])
	  (div ([class "mx-auto"])
			(p ([class "text-center text-xl decoration-2 underline-offset-2 hover:underline"])
				(a ([href "rechtliches.html"])
						"Rechtliches")))
	))
  </body>
</html>
