# SWGDefaultApi

All URIs are relative to *https://api.pbxdom.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callsGet**](SWGDefaultApi.md#callsget) | **GET** /Calls | 
[**featuresChartsGet**](SWGDefaultApi.md#featureschartsget) | **GET** /Features/charts | 
[**featuresReportsGet**](SWGDefaultApi.md#featuresreportsget) | **GET** /Features/reports | 
[**featuresWidgetGet**](SWGDefaultApi.md#featureswidgetget) | **GET** /Features/widget | 


# **callsGet**
```objc
-(NSNumber*) callsGetWithRptType: (NSNumber*) rptType
    rptId: (NSNumber*) rptId
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    sortBy: (NSString*) sortBy
    sortType: (NSString*) sortType
    fromDate: (NSString*) fromDate
    toDate: (NSString*) toDate
    duration: (NSNumber*) duration
    phone: (NSString*) phone
    phone1: (NSString*) phone1
    co: (NSString*) co
    ext: (NSString*) ext
    pbxId: (NSNumber*) pbxId
    callSource: (NSNumber*) callSource
    callType: (NSNumber*) callType
    direction: (NSNumber*) direction
    callerName: (NSString*) callerName
    did: (NSString*) did
    dnis: (NSString*) dnis
    acc: (NSString*) acc
    ring: (NSNumber*) ring
    cost: (NSNumber*) cost
    group: (NSNumber*) group
        completionHandler: (void (^)(NSArray<SWGInlineResponse200>* output, NSError* error)) handler;
```



Gets `Calls` info. 

### Example 
```objc

NSNumber* rptType = @1.2; // Report type. (0 report, 1 widget, 2 chart).
NSNumber* rptId = @1.2; // Report id.
NSNumber* start = @3.4; // Start offset. (optional)
NSNumber* limit = @3.4; // Number of results to return. Max 10K. (optional)
NSString* sortBy = @"sortBy_example"; // Sort column. (optional)
NSString* sortType = @"sortType_example"; // Sort mode asc/desc. (optional)
NSString* fromDate = @"fromDate_example"; // Start date time. (optional)
NSString* toDate = @"toDate_example"; // End date time. (optional)
NSNumber* duration = @3.4; // Duration range. (optional)
NSString* phone = @"phone_example"; // List of caller phone. (optional)
NSString* phone1 = @"phone1_example"; // List of dialled phones. (optional)
NSString* co = @"co_example"; // List of trunk/co. (optional)
NSString* ext = @"ext_example"; // list of extensions. (optional)
NSNumber* pbxId = @3.4; // list of PBX Ids. (optional)
NSNumber* callSource = @3.4; // list of callsource. (optional)
NSNumber* callType = @3.4; // list of call type signatures.(5 Unanswered Calls, 7 Transfered Calls, 8 Forwarded Calls) (optional)
NSNumber* direction = @3.4; // list of direction.(0 incoming, 1 outgoing, 2 internal) (optional)
NSString* callerName = @"callerName_example"; // list of caller name. (optional)
NSString* did = @"did_example"; // list of did. (optional)
NSString* dnis = @"dnis_example"; // list of dnis. (optional)
NSString* acc = @"acc_example"; // list of account code. (optional)
NSNumber* ring = @3.4; // Ring range.Seconds unit. (optional)
NSNumber* cost = @3.4; // Cost range. (optional)
NSNumber* group = @3.4; // Department/Group id. (optional)

SWGDefaultApi*apiInstance = [[SWGDefaultApi alloc] init];

[apiInstance callsGetWithRptType:rptType
              rptId:rptId
              start:start
              limit:limit
              sortBy:sortBy
              sortType:sortType
              fromDate:fromDate
              toDate:toDate
              duration:duration
              phone:phone
              phone1:phone1
              co:co
              ext:ext
              pbxId:pbxId
              callSource:callSource
              callType:callType
              direction:direction
              callerName:callerName
              did:did
              dnis:dnis
              acc:acc
              ring:ring
              cost:cost
              group:group
          completionHandler: ^(NSArray<SWGInlineResponse200>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGDefaultApi->callsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rptType** | **NSNumber***| Report type. (0 report, 1 widget, 2 chart). | 
 **rptId** | **NSNumber***| Report id. | 
 **start** | **NSNumber***| Start offset. | [optional] 
 **limit** | **NSNumber***| Number of results to return. Max 10K. | [optional] 
 **sortBy** | **NSString***| Sort column. | [optional] 
 **sortType** | **NSString***| Sort mode asc/desc. | [optional] 
 **fromDate** | **NSString***| Start date time. | [optional] 
 **toDate** | **NSString***| End date time. | [optional] 
 **duration** | **NSNumber***| Duration range. | [optional] 
 **phone** | **NSString***| List of caller phone. | [optional] 
 **phone1** | **NSString***| List of dialled phones. | [optional] 
 **co** | **NSString***| List of trunk/co. | [optional] 
 **ext** | **NSString***| list of extensions. | [optional] 
 **pbxId** | **NSNumber***| list of PBX Ids. | [optional] 
 **callSource** | **NSNumber***| list of callsource. | [optional] 
 **callType** | **NSNumber***| list of call type signatures.(5 Unanswered Calls, 7 Transfered Calls, 8 Forwarded Calls) | [optional] 
 **direction** | **NSNumber***| list of direction.(0 incoming, 1 outgoing, 2 internal) | [optional] 
 **callerName** | **NSString***| list of caller name. | [optional] 
 **did** | **NSString***| list of did. | [optional] 
 **dnis** | **NSString***| list of dnis. | [optional] 
 **acc** | **NSString***| list of account code. | [optional] 
 **ring** | **NSNumber***| Ring range.Seconds unit. | [optional] 
 **cost** | **NSNumber***| Cost range. | [optional] 
 **group** | **NSNumber***| Department/Group id. | [optional] 

### Return type

[**NSArray<SWGInlineResponse200>***](SWGInlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **featuresChartsGet**
```objc
-(NSNumber*) featuresChartsGetWithCompletionHandler: 
        (void (^)(NSArray<SWGInlineResponse200>* output, NSError* error)) handler;
```



Gets `Charts` list. 

### Example 
```objc


SWGDefaultApi*apiInstance = [[SWGDefaultApi alloc] init];

[apiInstance featuresChartsGetWithCompletionHandler: 
          ^(NSArray<SWGInlineResponse200>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGDefaultApi->featuresChartsGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGInlineResponse200>***](SWGInlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **featuresReportsGet**
```objc
-(NSNumber*) featuresReportsGetWithCompletionHandler: 
        (void (^)(NSArray<SWGInlineResponse200>* output, NSError* error)) handler;
```



Gets `Reports` list. 

### Example 
```objc


SWGDefaultApi*apiInstance = [[SWGDefaultApi alloc] init];

[apiInstance featuresReportsGetWithCompletionHandler: 
          ^(NSArray<SWGInlineResponse200>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGDefaultApi->featuresReportsGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGInlineResponse200>***](SWGInlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **featuresWidgetGet**
```objc
-(NSNumber*) featuresWidgetGetWithCompletionHandler: 
        (void (^)(NSArray<SWGInlineResponse200>* output, NSError* error)) handler;
```



Gets `Widgets` list. 

### Example 
```objc


SWGDefaultApi*apiInstance = [[SWGDefaultApi alloc] init];

[apiInstance featuresWidgetGetWithCompletionHandler: 
          ^(NSArray<SWGInlineResponse200>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGDefaultApi->featuresWidgetGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGInlineResponse200>***](SWGInlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

