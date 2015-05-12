(define (texture-transfer 	texture-image-file 
							texture-mask-file
							output-image-file
							output-mask-file
							vtile
							htile
							noborder
							map-weight
							autism
							neighbourhood
							trys
							save-file)
	(let* ((texture-image (car (gimp-file-load RUN-NONINTERACTIVE texture-image-file texture-image-file)))
		  (texture-mask (car (gimp-file-load RUN-NONINTERACTIVE texture-mask-file texture-mask-file)))
		  (output-image (car (gimp-file-load RUN-NONINTERACTIVE output-image-file output-image-file)))
		  (output-mask (car (gimp-file-load RUN-NONINTERACTIVE output-mask-file output-mask-file)))
		  (texture-drawable (car (gimp-image-get-active-layer texture-image)))
		  (texture-mask-layer (car (gimp-image-get-active-layer texture-mask)))
		  (output-layer (car (gimp-image-get-active-layer output-image)))
		  (output-mask-layer (car (gimp-image-get-active-layer output-mask)))
		  (output-drawable (car (gimp-image-get-active-layer output-image)))
		  )
		(plug-in-resynthesizer	RUN-NONINTERACTIVE
								texture-image
								output-drawable
								vtile
								htile
								noborder
								texture-drawable
								texture-drawable
								output-drawable
								map-weight
								autism
								neighbourhood
								trys
								)	
								
		(set! output-drawable (car (gimp-image-get-active-layer output-image)))
		(gimp-file-save RUN-NONINTERACTIVE 
						output-image
						output-drawable
						save-file 
						save-file
						)
		(gimp-image-delete output-image)
		(gimp-image-delete output-mask)
		(gimp-image-delete texture-image)
		(gimp-image-delete texture-mask)
	)
)