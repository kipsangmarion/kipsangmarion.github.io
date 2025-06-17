---
title: "Face-Search: The Beginning"
author: "Stephen Oduh"
authorAvatarPath: "/avatar.JPG"
date: "2025-06-16"
summary: "A computer vision based image search project."
description: "A computer vision based image search project."
toc: true
readTime: true
autonumber: true
math: true
tags: ["python", "CV"]
showTags: false
draft: true
---


# Blog Entries

## FaceSearch: The Beginning

`16/06/2025`

This project was born out of frustration. After most events in CMU-Africa, the media team edits the photos/videos and uploads them to an album on Flickr. This album is publicly accessible which means you can look through the album and find images of yourself. However, you have to look through all the images. Flickr uses pagination and shows about a 100 pictures per page. This would not be a problem to you if the event only has 24 pictures. You can see all of these at a glance and find yourself. But if the event has 530 images, then you have to look at 100 pages on at least 5 pages which is mind-numbing. So I thought to myself, why can't I just upload a picture of myself and match my face to all the images in the album and return only the images that contain my face or my friend's face. Also, why can't the photos be grouped by images with similar faces. This led me to build FaceSearch. A simple image search tool for flickr.

Immediately, I went to the find out about Flickr's API so I could use it. Thankfully, they had just the endpoint I was looking for. One that takes an album ID and returns a list of photos. I signed up for a FLickr account and joyously went to create an API key. Boom! API keys are only for pro accounts. It was crazy! About $6 a month. I could not afford that. Pull up my hoodie, coffee and Claude. Let's build a web scraper. True story, I gave up on the project at first but when a JS dev threw a jab about ML and how JS is taking over, I was more motivated to SCRAPE that website. Thankfully after 2+ hours of coding, debugging, inspecting the site and prompting, I had a web scraper up and running. It takes an album URL and downloads ALL the images in that album.

At a high level, I want a user of this application to be able to put in a Flickr album id, upload a clear face picture of themselves and have a streamed result of the matched images in the album. I also want to extend the project beyond Flickr and have it work with local image folders on your laptop. You can search an image folder by image or even cluster your image folder.

The goal is to learn the key computer vision concepts that would be applied in image search. I'd implement them using popular python libraries but the blog structure will be like so: problem, theory+ math solution, python implementation (where necessary, we may implement the math ourselves and compare to off-the-shelf libraries)

Come on this learning journey with me.

Cheers!

Stephen.
