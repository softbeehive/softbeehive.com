module ProjectData
  def data_array
    @data = [
      {
        :identity => {
          :name => "Identity.com",
          :url => "www.identity.com",
          :subtitle => "on behalf of Inflection",
          :desc => "Identity.com is an identity management tool that helps people control their personal data and manage their credibility online.",
          :story => ["As a member of iD team I built pixel perfect responsive client side that works well across different browsers and devices. I wrote modular javascript components that are reusable and fast, communicated with backend to organize and fetch data.", "Contributing to styleguide let us keep styles consistent, maintainable and dry. We got a great result: webapp is beautiful, feature-rich, modern and easy to use."],
          :slug => "identity",
          :softstack => "Ruby on Rails, RSpec, JavaScript, Backbone, RequireJS, jQuery, Sass, Vagrant, Linux, Git",
          :chronos => "May 2014 - present"
        }
      },
      {
        :adventum => {
          :name => "Adventum Sprachinstitut",
          :url => "www.adventum.at",
          :desc => "Adventum Sprachinstitut is a language school located in Vienna, Austria. It offers variety of courses and exams with main focus on people who learn German.",
          :slug => "adventum",
          :story => ["For Adventum Sprachinstitut I have done full spectrum of development. Started from idea and selecting color palette I created unique graphic design and branding. On the technical side I wanted it to be very fast because performance matters, minimalistic and up-to-date.", "Core was coded in PHP using tools Zend Framework 2 provides to manage and represent data. Combination of responsive/adaptive techniques allowed to achieve good look across different viewports. Running server, versioning and support wasn't hard because I just love unix console."],
          :softstack => "Zend Framework 2, jQuery, Twitter Bootstrap 3, Sass, PHP, Graphic Design, Linux, Git",
          :chronos => "April 2014"
        }
      },
      {
        :fot => {
          :name => "Flickr Ocean Trawler",
          :url => "ef.softbeehive.com",
          :desc => "Flickr Ocean Trawler is API experiment made before WWI Centenary. Picture search and data retrieving process is organized as navy operation.",
          :slug => "fot",
          :story => ["", ""],
          :softstack => "Zend Framework 2, Flickr API, MySQL, jQuery, PHP, Single Page Application, Open Source, Linux",
          :chronos => "March 2014"
        },
      },
      {
        :buyerquest => {
          :name => "BuyerQuest",
          :subtitle => "on behalf of Svitla Systems",
          :desc => "Big data enterprise e-commerce project extensively customized for business with specific needs.",
          :slug => "buyerquest",
          :softstack => "AMD JavaScript, Magento Enterprise, PHP, Grunt.js, Less, Twitter Bootstrap 2, Linux",
          :chronos => "November 2013 - February 2014",
          :ext => "png"
        }
      },
      {
        :buk => {
          :name => "Buk Presentation Tool",
          :url => "yakviter.com.ua/buk",
          :desc => "Buk is mobile-ready, multidimensional presentation tool with flexible navigation and advanced controls.",
          :slug => "buk",
          :softstack => "JavaScript, jQuery, CSS3, Twitter Bootstrap 3, Graphic Design, Responsive Design, Open Source",
          :chronos => "November 2013"
        }
      },
      {
        :inevention => {
          :name => "InEvention",
          :url => "www.inevention.com",
          :subtitle => "on behalf of Svitla Systems",
          :desc => "InEvention is an innovative planning system called to simplify hotel and travel select for offsite meetings and events.",
          :slug => "inevention",
          :softstack => "Slim Framework, PHP, MongoDB, JavaScript, jQuery, Solr, Twitter Bootstrap 2, CentOS, OpenStreetMap API",
          :chronos => "February 2013 - October 2013",
          :ext => "png"
        }
      },
      {
        :eagle => {
          :name => "EagleManager",
          :subtitle => "on behalf of Svitla Systems",
          :desc => "Eagle is a data hub for retail industry which consists of tools for collecting, managing and processing information provided by points of sales.",
          :slug => "eagle",
          :softstack => "Zend Framework 2, JavaScript, PHP, MySQL, Linux, Subversion, Google Maps API",
          :chronos => "September 2012 - January 2013",
          :ext => "png"
        }
      },
      {
        :fairpros => {
          :name => "Fairpros",
          :subtitle => "on behalf of Svitla Systems",
          :desc => "Corporative website of major German trade fairs representative on the African continent built as trade fairs catalog with apply forms.",
          :slug => "fairpros",
          :softstack => "Drupal 7, PHP, Vanilla JS, Ajax, CSS3, Git, i18n, Linux",
          :chronos => "November 2011 - May 2012"
        }
      },
      {
        :nerz => {
          :name => "Nerz",
          :subtitle => "on behalf of Maxx-Marketing",
          :url => "www.nerz.com",
          :desc => "...",
          :slug => "nerz",
          :softstack => "PHP, JavaScript, MooTools, MySQL, CMS, Flash, Linux",
          :chronos => "August 2011"
        }
      },
      {
        :"export-partner" => {
          :name => "Export Partner",
          :subtitle => "on behalf of Maxx-Marketing",
          :desc => "...",
          :slug => "export-partner",
          :softstack => "Graphic Design",
          :chronos => "July 2011",
          :ext => "png"
        }
      },
      {
        :automore => {
          :name => "Automore",
          :subtitle => "on behalf of Maxx-Marketing",
          :desc => "...",
          :slug => "automore",
          :softstack => "Graphic Design",
          :chronos => "June 2011"
        }
      },
      {
        :agus => {
          :name => "A-GUS Akademie",
          :desc => "...",
          :slug => "agus",
          :softstack => "PHP, jQuery, MySQL, CMS, Graphic Design, i18n, Linux",
          :chronos => "May 2010 - June 2010"
        }
      }
    ]
    return @data
  end
end
