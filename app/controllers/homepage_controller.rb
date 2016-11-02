class HomepageController < ApplicationController
  def index
    portfolios = [
      {
        title: 'WEA',
        image: 'portfolio/wea.jpg',
        spec: 'Drupal 8, PHP 7, Windows',
        description: 'This is description',
        technology: ['Drupal8', 'PHP', 'Windows', 'Couchbase'],
        website: 'https://wea.org.uk',
      },
      {
        title: 'RNIB',
        image: 'portfolio/rnib.jpg',
        spec: 'Drupal 7, Accessibility',
        description: 'This is description',
        technology: [],
        website: 'http://www.rnib.org.uk',
      },
      {
        title: 'YOUTALK INSURANCE',
        image: 'portfolio/youtalk.jpg',
        spec: 'Drupal 7, Performance',
        description: 'This is description',
        technology: [],
        website: 'http://youtalk-insurance.com',
      },
      {
        title: 'BROCKMANS GIN',
        image: 'portfolio/brockmans.jpg',
        spec: 'Drupal 7, Video',
        description: 'This is description',
        technology: [],
        website: 'http://brockmansgin.com',
      },
      {
        title: 'CONDOR GOLD',
        image: 'portfolio/condor.jpg',
        spec: 'Drupal 7',
        description: 'This is description',
        technology: [],
        website: 'http://www.condorgold.com',
      },
      {
        title: 'MEDAVA',
        image: 'portfolio/medava.jpg',
        spec: 'Drupal 7, Cart',
        description: 'This is description',
        technology: [],
        website: '',
      },
    ]

    render 'homepage/index', :locals => {:portfolios => portfolios}
  end
end
