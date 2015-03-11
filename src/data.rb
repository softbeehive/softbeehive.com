module ProjectData
  def data_array
    @data = [
      {
        :identity => {
          :name => "Identity.com",
          :url => "www.identity.com",
          :subtitle => "on behalf of Inflection",
          :desc => "Identity.com is an identity management tool that helps people control their personal data and manage their credibility online.",
          :slug => "identity",
          :softstack => "Ruby on Rails, RSpec, JavaScript, Backbone, jQuery, Sass, Vagrant, Linux, Git",
          :chronos => "May 2014 - present"
        }
      },
      {
        :adventum => {
          :name => "Adventum Sprachinstitut",
          :url => "www.adventum.at",
          :desc => "...",
          :slug => "adventum",
          :softstack => "Zend Framework 2, jQuery, Twitter Bootstrap 3, Sass, Graphic Design, Linux, Git",
          :chronos => "April 2014"
        }
      },
      {
        :fot => {
          :name => "Flickr Ocean Trawler",
          :url => "ef.softbeehive.com",
          :desc => "...",
          :slug => "fot",
          :softstack => "Zend Framework 2, Flickr API, MySQL, jQuery, Single Page Application, Linux, Graphic Design",
          :chronos => "March 2014"
        },
      },
      {
        :buyerquest => {
          :name => "BuyerQuest",
          :subtitle => "on behalf of Svitla Systems",
          :desc => "...",
          :slug => "buyerquest",
          :softstack => "Magento, PHP",
          :chronos => "November 2013 - February 2014",
          :ext => "png"
        }
      },
      {
        :buk => {
          :name => "Buk Presentation Tool",
          :url => "yakviter.com.ua/buk",
          :desc => "...",
          :slug => "buk",
          :softstack => "JavaScript, jQuery, CSS3, Twitter Bootstrap 3",
          :chronos => "November 2013"
        }
      },
      {
        :inevention => {
          :name => "InEvention",
          :url => "www.inevention.com",
          :subtitle => "on behalf of Svitla Systems",
          :desc => "...",
          :slug => "inevention",
          :softstack => "PHP, Slim Framework, MongoDB, JavaScript, jQuery, Solr, CentOS, Subversion",
          :chronos => "February 2013 - October 2013",
          :ext => "png"
        }
      },
      {
        :eagle => {
          :name => "EagleManager",
          :subtitle => "on behalf of Svitla Systems",
          :desc => "...",
          :slug => "eagle",
          :softstack => "Zend Framework 2, JavaScript",
          :chronos => "September 2012 - January 2013",
          :ext => "png"
        }
      },
      {
        :fairpros => {
          :name => "Fairpros",
          :subtitle => "on behalf of Svitla Systems",
          :desc => "...",
          :slug => "fairpros",
          :softstack => "Drupal 7",
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
          :softstack => "",
          :chronos => "August 2011"
        }
      },
      {
        :"export-partner" => {
          :name => "Export Partner",
          :subtitle => "on behalf of Maxx-Marketing",
          :desc => "...",
          :slug => "export-partner",
          :softstack => "",
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
          :softstack => "",
          :chronos => "May 2010 - June 2010"
        }
      }
    ]
    return @data
  end
end
