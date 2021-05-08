# SwiftUI Navigator
Navigation library for SwiftUI

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
