# Vismantic-SE-Project
[Image filtering suite for Vismantic]

This is a student software engineering project of the Department of Computer Science of the University of Helsinki. The aim is to develop a set of image (photo) filtering components for Vismantic, an interactive system generating visual ideas (imagine a light bulb grows out of a tuft of green leaves). 

Vismantic first finds photos in Flickr using words, and then analyzes and combines the retrieved photos in several ways. Among the image processing techniques used by Vismantic, object extraction and texture transfer techniques are relevant to this project.

## Image Filters

The filters under consideration distinguish photos in the following five aspects (with subcategories):

1. Whole photo: unconventional_size, colorization, grid, highlight, low_resolution, overexposure, shadow, whole_blur, fisheye (more advanced: no_fore_background_separation, processed, screenshot, media (illustration, infographic, print, screenshot), composed)

2. Object: no_object, object_too_big_to_recognize, obscured, multiple_salient_regions, complex_scene, group, pattern, extracted_object_too_small, orientation, similarity (shape, camera angle (alignment) and color), more advanced: non_recognizable)

3. Tags: non-expressive

4. Context: no_context_available, homogenous_background, blurred_context, context_database

5. Texture: texture_similarity, texture_database

The folder called “images” contains photos having the aforementioned problems (in the corresponding subfolders). Photos that do not have any of the above problems are in the subfolder called "good".

## Software Requirements
- Have to be done in Python 2.7.x
- For Unix systems, e.g., Linux distributions, OS X
- Can use opencv (version 2.4.9 or later 2.4.x), but all functions have to have wrappers in Python
- Can use functions from [G'MIC](http://gmic.eu) (version >=1.6), but also functions have to have wrappers in Python
- Can use GIMP’s script-fu, but also wrappers in Python
- Any other use of 3rd party software (other executables, Python modules which can be installed via [pip](https://pypi.python.org/pypi/pip) should be mostly OK)
- One thing that might come up is that Python has a “standard” imaging library called PIL, but it is not very well maintained. I have used a fork, better maintained version of it, called PILLOW. As fas as I know, they cannot coexist in the same Python installation.
- Documentation in [Sphinx](http://sphinx-doc.org) format
- Wrap it as a Python egg/wheel (especially, if what they make is strictly a library)

## Tools used in Vismantic
* [Flickr API](https://www.flickr.com/services/api/)
* Object Extraction algorithm:
  * Download project from [CmCode-fork](https://github.com/assamite/CmCode), compile saliency.so
* Texture Transfer algorithm:
  * Install [GIMP](http://www.gimp.org/) (2.8 or later)
  * Install [Resynthesizer GIMP Plugin](http://registry.gimp.org/node/25219) (for installing GIMP Plugins, see [wikibooks](http://en.wikibooks.org/wiki/GIMP/Installing_Plugins)).
  * Copy ``script-fu/transfer.scm`` to GIMP installation's ``scripts/``-folder (you may have to create folder).
