# Vismantic-SE-Project
[Image filtering suite for Vismantic]

This is a student software engineering project of the Department of Computer Science of the University of Helsinki. The aim is to develop a set of image (photo) filtering components for Vismantic, an interactive system generating visual ideas (imagine a light bulb grows out of a tuft of green leaves). 

Vismantic first finds photos in Flickr using words, and then analyzes and combines the retrieved photos in several ways. Among the image processing techniques used by Vismantic, object extraction and texture transfer techniques are relevant to this project.

### Image Filters

The filters under consideration distinguish photos in the following five aspects (with subcategories):

1. Whole photo: unconventional_size, colorization, grid, highlight, low_resolution, overexposure, shadow, whole_blur, fisheye, (more advanced: no_fore_background_separation, processed, screenshot, media (illustration, infographic, print, screenshot), composed)

2. Object: no_object, object_too_big_to_recognize, obscured, multiple_salient_regions, complex_scene, group, pattern, extracted_object_too_small, orientation, similarity (shape, camera angle/alignment, color), (more advanced: non_recognizable)

3. Tags: non-expressive

4. Context: no_context_available, homogenous_background, blurred_context, context_database

5. Texture: texture_similarity, texture_database

The folder called “images” contains photos having the aforementioned problems (in the corresponding subfolders). Photos that do not have any of the above problems are in the subfolder called "good".

### Software Requirements
- Python 2.7.x
- For Unix systems, e.g., Linux distributions, OS X
- Easy to use API for developed functionality with concise pythonic function names
- All functions have to have Python wrappers, even if 3rd party software is used for needed functionality (see below)
- Image processing tasks should be handed to a task queue, from where they are executed in order. Use [Celery](http://www.celeryproject.org/).
- Documentation in [Sphinx](http://sphinx-doc.org) format, documentation should be available as a Github page, see e.g. this [site](http://daler.github.io/sphinxdoc-test/includeme.html).
- Optionally, wrap it as a Python egg/wheel (especially, if you end up making very library-like code)

### 3rd Party Software/Code

As pure Python implementation might be slow when dealing with the image processing tasks, Vismantic currently uses following third party software:

- [OpenCV](http://opencv.org/) (version 2.4.9+, no 3.0 beta)
- [G'MIC](http://gmic.eu) (version >=1.6)
- [GIMP](http://www.gimp.org/) (check [script-fu](http://docs.gimp.org/en/gimp-concepts-script-fu.html) for automating GIMP processes)

If you end up needing some functionality that is not covered by these, and find some other software that does the job, discuss the usage beforehand with the client. Python modules installed via [pip](https://pypi.python.org/pypi/pip) should be mostly OK, but try to minimise them.

### Tools used in Vismantic
* [Flickr API](https://www.flickr.com/services/api/)
* Object Extraction algorithm:
  * Download project from [CmCode-fork](https://github.com/assamite/CmCode), compile saliency.so
* Texture Transfer algorithm:
  * Install [GIMP](http://www.gimp.org/) (2.8 or later)
  * Install [Resynthesizer GIMP Plugin](http://registry.gimp.org/node/25219) (for installing GIMP Plugins, see [wikibooks](http://en.wikibooks.org/wiki/GIMP/Installing_Plugins)).
  * Copy ``script-fu/transfer.scm`` to GIMP installation's ``scripts/``-folder (you may have to create folder).

### Contribution
It seems this page became just an introduction. The contribution page is [vismantic-ohtuprojekti/image-filtering-suite] (https://github.com/vismantic-ohtuprojekti/image-filtering-suite).
