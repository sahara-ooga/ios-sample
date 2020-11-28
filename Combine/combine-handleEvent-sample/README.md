# Future.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)

Performs the specified closures when publisher events occur.

## Declaration

```swift
func handleEvents(
    receiveSubscription: ((Subscription) -> Void)? = nil,
    receiveOutput: ((Output) -> Void)? = nil,
    receiveCompletion: ((Subscribers.Completion<Failure>) -> Void)? = nil,
    receiveCancel: (() -> Void)? = nil,
    receiveRequest: ((Subscribers.Demand) -> Void)? = nil) -> Publishers.HandleEvents<Future<Output, Failure>>
```

## Framework

Combine.framework

## Supported OS Version

iOS 13.0~

## Run this Example

Open the Xcode project. And run a test case named `testExample` in combine_handleEvent_sampleTests.swift.

## Envirionment

| name | Version|
|---|---|
| Swift | 5.3.1 |
| XCode | 12.2 |
| iOS | 13.0〜 |

## Reference

[handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:) | Apple Developer Documentation](https://developer.apple.com/documentation/combine/future/handleevents(receivesubscription:receiveoutput:receivecompletion:receivecancel:receiverequest:))

see also [print(_:to:)](https://developer.apple.com/documentation/combine/publisher/print(_:to:))
