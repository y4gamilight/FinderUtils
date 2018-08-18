# FinderUtils
Reveal Mac OS Application running directory from via a HTTP Request.

## Requirement
Node JS

## Installation
1. Install Node
> npm install npm
2. Checkout this repository
> git clone git@github.com:haithngn/FinderUtils.git

## Usage
1. Start the Finder Utils Server
> npm start
2. Make an HTTP Request

~~~~swift 
//Define which directory you want to reveal.
let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
let url = URL(string: "http://127.0.0.1:8888/finder?path=\(documentsPath)")
var request = URLRequest(url: url!)
        request.httpMethod = "GET"
NSURLConnection.sendAsynchronousRequest(request, queue: OperationQueue.main) {(response, data, error) in
            print("res + \(NSString(data: data!, encoding: String.Encoding.utf8.rawValue))")
}
~~~~

## Contribution
+ Feedback and issues are welcome.
+ Feel free to make PR(s).

## License
[MIT licensed.](https://github.com/realm/SwiftLint/blob/master/LICENSE)

### About
@[haithngn](https://haithngn.com)

Like Finder Utils? Please give me a star then tell your friends! 🍻