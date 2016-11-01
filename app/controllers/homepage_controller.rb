class HomepageController < ApplicationController
  def index
    portfolios = [
      {
        title: 'WEA',
        image: 'portfolio/wea.jpg',
        spec: 'Drupal 8, PHP 7, Windows',
        description: 'This is description',
      },
      {
        title: 'RNIB',
        image: 'portfolio/rnib.jpg',
        spec: 'Drupal 7, Accessibility',
        description: 'This is description',
      },
      {
        title: 'YOUTALK INSURANCE',
        image: 'portfolio/youtalk.jpg',
        spec: 'Drupal 7, Performance',
        description: 'This is description',
      },
      {
        title: 'BROCKMANS GIN',
        image: 'portfolio/brockmans.jpg',
        spec: 'Drupal 7, Video',
        description: 'This is description',
      },
      {
        title: 'CONDOR GOLD',
        image: 'portfolio/condor.jpg',
        spec: 'Drupal 7',
        description: 'This is description',
      },
      {
        title: 'MEDAVA',
        image: 'portfolio/medava.jpg',
        spec: 'Drupal 7, Cart',
        description: 'This is description',
      },
    ]

    render 'homepage/index', :locals => {:portfolios => portfolios}
  end
end
