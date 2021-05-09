# SwiftUI Navigator
![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/anioutkazharkova/swiftuinavigator) ![GitHub last commit](https://img.shields.io/github/last-commit/anioutkazharkova/swiftuinavigator)
![GitHub stars](https://img.shields.io/github/stars/anioutkazharkova/swiftuinavigator?style=social) ![GitHub forks](https://img.shields.io/github/forks/anioutkazharkova/swiftuinavigator?style=social) ![GitHub watchers](https://img.shields.io/github/watchers/anioutkazharkova/swiftuinavigator?style=social) ![GitHub followers](https://img.shields.io/github/followers/anioutkazharkova?style=social)

![Twitter URL](https://img.shields.io/twitter/url?style=social&url=https%3A%2F%2Ftwitter.com%2Fanioutkajarkova)

<span class="badge-buymeacoffee">
<a href="https://www.buymeacoffee.com/azharkova" title="Donate to this project using Buy Me A Coffee"><img src="https://img.shields.io/badge/buy%20me%20a%20coffee-donate-yellow.svg" alt="Buy Me A Coffee donate button" /></a>
</span>

Small lightweight library to provide pure SwiftUI navigation in app

## How to use:

1. Add SwiftUI via PackageManager 
2. Add import to your files
```
import SwiftUINavigator
```
3. Make your screen Views to implement IItemView protocol 

```
struct SampleView: View, IItemView {
  var listener: INavigationContainer?
  
 } 
```
4. Call navigation methods of listener to make a magic:

```
 self.listener?.push(view: SecondView())
 ```
 
 Profit!


## To provide back navigation:

To return to previous screen:
```
 self.listener?.pop()
```

To return to root:
```
self.listener?.popToRoot()
```
