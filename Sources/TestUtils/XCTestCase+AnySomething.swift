import XCTest
public func anyURL() -> URL {
    URL(string: "http://any-url.com")!
}

public func anyData() -> Data {
    Data("any data".utf8)
}

public func anyNSError() -> NSError {
    NSError(domain: "any error", code: 0)
}

public func anyHTTPURLResponse(statusCode: Int = 200, headerFields: [String: String]? = nil) -> HTTPURLResponse {
    HTTPURLResponse(url: anyURL(), statusCode: statusCode, httpVersion: nil, headerFields: headerFields)!
}

public func nonHTTPURLResponse() -> URLResponse {
    URLResponse(url: anyURL(), mimeType: nil, expectedContentLength: 0, textEncodingName: nil)
}
