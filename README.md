# SwiftUI Navigator
Navigation library for SwiftUI

## How to use:

1. Add SwiftUI via PackageManager 
2. Add import in your files
```
import SwiftUINavigator
```
3. Make your screen Views implement IItemView protocol 

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
