# Community Polymer Open-Elements.org

Patches for elements.polymer-project.org


![Screen](screen.png)

> Requirement
- Node.js
- bower 
- npm
- sed
- unix shell (zsh, bash, etc)

```sh
git clone https://github.com/Polymer/polymer-element-catalog.git
cd polymer-element-catalog/
bower install --save 'https://github.com/community-polymer-elements/community-polymer-elements.git#master'
bower_components/community-polymer-elements/catalog_patch/start_patch.sh
npm install
gulp serve
```

## Roadmap

 - [x] replace Google Analitics
 - [x] Disqus
 - [x] Logo
 - [x] index.html ReDesign
 - [x] community components - populate catalog.json <-- 
```
community-polymer-elements.json
marcus7777_development.json
marcus7777_utilities.json
polymer-third-party.json
```
 - [ ] Test
 - [ ] JSBin
 - [ ] Writing new guides, blogs, Articles
 - [ ] FAQs, stackoverflow
 - [ ] Example, Chrome App and other Extensions

> Some other tasks see https://github.com/marcus7777/open-elements.org/issues

MIT
