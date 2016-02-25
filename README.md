# Ember-search-bar

An ember addon to display a searchbar
## Installation
`ember install git+ssh://git@git.tenforce.com:ember/search-bar.git`

## Usage
```{{search-bar search=search}}```

Search is an action that is triggered when a search query is entered or removed.
to handle the action add the following to your controller/component:

```
actions:
  search: (query) ->
     @store.find('post', title: query).then (results) =>
       #do something with results
```