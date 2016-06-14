`import Ember from 'ember'`
`import layout from '../templates/components/search-bar'`

SearchBarComponent = Ember.Component.extend
  layout: layout
  classNames: ["search"]
  placeholder: 'Search...'
  searchClass: "fa-times"
  submitSearch: ->
    @sendAction('search',@get('searchString'))
  actions:
    cancelSearch: ->
      @set 'searchString', null
      @sendAction('search',@get('searchString'))      
    updateSearchString: ->
      Ember.run.debounce this, @submitSearch  , 500

`export default SearchBarComponent`
