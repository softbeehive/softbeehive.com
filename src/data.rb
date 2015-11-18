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
          :chronos => "May 2014 - March 2015"
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
          :story => ["Unique graphic style I created using my Intuos 5 pen tablet was inspired by British naval trawlers sweeping for mines. Each successful search is saved as operation with results available in two modes: intelligence and visual.", "Technically its work algorithm is passing query - getting results from Flickr over API - processing and saving data to MySQL - rendering views. And it is done as a single page application firing ajax requests in background instead of refreshing entire page."],
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
          :story => ["For BuyerQuest Marketplace I worked on cross-viewport front end, contributed to modular javascript components like ajax search, image preview and statistics visualization, refactored a lot of others code.", "Faced challenges operating with massive DOM where changing layout from table view to grid smoothly isn't a trivial task. Also I did client side performance optimization and automation for reducing size of assets depending on the environment."],
          :softstack => "AMD JavaScript, PHP, Magento Enterprise, Grunt.js, Less, Twitter Bootstrap 2, Linux",
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
          :story => ["I spent a day iterating through possible names searching for a great one. Final result I came with was even better than expected, because of its symbolism. It perfectly combines idea and materia, its educational nature and representation (<a href=\"https://github.com/softbeehive/buk#name-and-idea\" target=\"_blank\">read why</a>).", "There are 4 different ways to navigate through the slides, impossible to get lost. Layout is pretty flexible too, as an alternative to default 1 slide per page there are also 2 and 3 slides at once available."],
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
          :story => ["When I started with InEvention front end part required rewriting it from the ground up. Focusing on keeping it clean and flexible enough in just few months I completely rebuilt and optimized user experience for both desktop and mobile.", "Customer said I was instrumental to pack a lot of information into a UI that had to be consistent and intuitive. Graceful degradation approach helped to keep it work even in such a strict browser as IE8. "],
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
          :story => ["During development of Eagle I experienced benefits of Agile. It was kind of stress test for each team member to fit very strict deadline and achieve desired result. My main role was to convert design into code and to keep an eye on variety of display states.", "I learnt new techniques how to build bulletproof front end because packing plenty of specific data (e.g. long Swiss geographical names) into limited space required ability to predict the thin ice."],
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
          :story => ["I built Drupal 7 firm template based on zen boilerplate. Due to specifics of CRM I worked on customizing its modules, especially so called \"views\", which isn't view in classic MVC conception.", "Since that time I fell in love with Git and VCS became one of the pillars of my development philosophy."],
          :softstack => "Drupal 7, PHP, Vanilla JS, Ajax, CSS3, Git, i18n, Linux",
          :chronos => "November 2011 - May 2012"
        }
      },
      {
        :nerz => {
          :name => "Nerz",
          :subtitle => "on behalf of MAXXmarketing",
          :url => "www.nerz.com",
          :desc => "Hardware retailer and telecommunication service company specializing in radio, mobile, network and video surveillance systems.",
          :slug => "nerz",
          :story => ["Developing Nerz I had two more projects to complete in just one month. Running three projects in parallel isn't right thing to do but this cowboy coding experience let me learn how crucial prioritizing and effective planning is.", "Based on CMS name I don't want to call, it's alive reminder of lesson I extracted: don't let anyone make your work routine conveyer."],
          :softstack => "PHP, JavaScript, MooTools, MySQL, CMS, Flash, Linux",
          :chronos => "August 2011"
        }
      },
      {
        :"export-partner" => {
          :name => "Export Partner",
          :subtitle => "on behalf of MAXXmarketing",
          :desc => "Export / Import directory that helps business to find, compare and select suppliers abroad and exporters to extend their market geography.",
          :slug => "export-partner",
          :story => ["Core concepts of Export Partner website graphic design are minimalism, simplicity and eye-friendly color palette. Approach was 100% practical, no fancy stuff, I avoided using custom fonts and gradients.", "Chosen graphic style's main mission is to deliver message of trust to customer not distracting him from natural browsing flow."],
          :softstack => "Graphic Design",
          :chronos => "July 2011",
          :ext => "png"
        }
      },
      {
        :automore => {
          :name => "Automore",
          :subtitle => "on behalf of MAXXmarketing",
          :desc => "Vehicle marketplace online that lets user search, evaluate, sell and buy used and new cars, motocycles and trucks.",
          :slug => "automore",
          :story => ["Major intention when designing Automore website was to link automotive assosiations with appropriate archetypes in visitors mind. That's what steering wheel branding and manual gearbox scheme are called to launch.", "Emphasizing on importance of sell and buy actions I separated search form to bring visitor's attention. Light blue frame makes transition between hard contrast browser egdes less painful."],
          :softstack => "Graphic Design",
          :chronos => "June 2011"
        }
      },
      {
        :agus => {
          :name => "A-GUS Akademie",
          :desc => "Austrian education company (predecessor of Adventum) that offered foreign language courses and online self-assessment tests.",
          :slug => "agus",
          :story => ["Multilingual website and online German language self-assessment system were one of the first successful projects for me as an independent developer. Dealing with content in three languages and solving issues I never faced before contributed to my skills during a short period.", "Given complete freedom in selecting tools and technologies I designed and developed product that worked for 4.5 years until it was replaced by rebranded new version."],
          :softstack => "PHP, jQuery, MySQL, CMS, Graphic Design, i18n, Linux",
          :chronos => "May 2010 - June 2010"
        }
      }
    ]
    return @data
  end
end
