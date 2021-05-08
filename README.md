# SwiftUI Navigator
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
