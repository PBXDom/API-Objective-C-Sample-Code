#import "SWGDefaultApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGInlineResponse200.h"


@interface SWGDefaultApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation SWGDefaultApi

NSString* kSWGDefaultApiErrorDomain = @"SWGDefaultApiErrorDomain";
NSInteger kSWGDefaultApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    self = [super init];
    if (self) {
        SWGConfiguration *config = [SWGConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[SWGApiClient alloc] init];
        }
        _apiClient = config.apiClient;
        _defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+ (instancetype)sharedAPI {
    static SWGDefaultApi *sharedAPI;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        sharedAPI = [[self alloc] init];
    });
    return sharedAPI;
}

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.defaultHeaders[key];
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self setDefaultHeaderValue:value forKey:key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(NSUInteger) requestQueueSize {
    return [SWGApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// 
/// Gets `Calls` info. 
///  @param rptType Report type. (0 report, 1 widget, 2 chart). 
///
///  @param rptId Report id. 
///
///  @param start Start offset. (optional)
///
///  @param limit Number of results to return. Max 10K. (optional)
///
///  @param sortBy Sort column. (optional)
///
///  @param sortType Sort mode asc/desc. (optional)
///
///  @param fromDate Start date time. (optional)
///
///  @param toDate End date time. (optional)
///
///  @param duration Duration range. (optional)
///
///  @param phone List of caller phone. (optional)
///
///  @param phone1 List of dialled phones. (optional)
///
///  @param co List of trunk/co. (optional)
///
///  @param ext list of extensions. (optional)
///
///  @param pbxId list of PBX Ids. (optional)
///
///  @param callSource list of callsource. (optional)
///
///  @param callType list of call type signatures.(5 Unanswered Calls, 7 Transfered Calls, 8 Forwarded Calls) (optional)
///
///  @param direction list of direction.(0 incoming, 1 outgoing, 2 internal) (optional)
///
///  @param callerName list of caller name. (optional)
///
///  @param did list of did. (optional)
///
///  @param dnis list of dnis. (optional)
///
///  @param acc list of account code. (optional)
///
///  @param ring Ring range.Seconds unit. (optional)
///
///  @param cost Cost range. (optional)
///
///  @param group Department/Group id. (optional)
///
///  @returns NSArray<SWGInlineResponse200>*
///
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
    completionHandler: (void (^)(NSArray<SWGInlineResponse200>* output, NSError* error)) handler {
    // verify the required parameter 'rptType' is set
    if (rptType == nil) {
        NSParameterAssert(rptType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rptType"] };
            NSError* error = [NSError errorWithDomain:kSWGDefaultApiErrorDomain code:kSWGDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'rptId' is set
    if (rptId == nil) {
        NSParameterAssert(rptId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rptId"] };
            NSError* error = [NSError errorWithDomain:kSWGDefaultApiErrorDomain code:kSWGDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/Calls"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (rptType != nil) {
        queryParams[@"rptType"] = rptType;
    }
    if (rptId != nil) {
        queryParams[@"rptId"] = rptId;
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (sortBy != nil) {
        queryParams[@"sortBy"] = sortBy;
    }
    if (sortType != nil) {
        queryParams[@"sortType"] = sortType;
    }
    if (fromDate != nil) {
        queryParams[@"fromDate"] = fromDate;
    }
    if (toDate != nil) {
        queryParams[@"toDate"] = toDate;
    }
    if (duration != nil) {
        queryParams[@"duration"] = duration;
    }
    if (phone != nil) {
        queryParams[@"phone"] = phone;
    }
    if (phone1 != nil) {
        queryParams[@"phone1"] = phone1;
    }
    if (co != nil) {
        queryParams[@"co"] = co;
    }
    if (ext != nil) {
        queryParams[@"ext"] = ext;
    }
    if (pbxId != nil) {
        queryParams[@"pbxId"] = pbxId;
    }
    if (callSource != nil) {
        queryParams[@"callSource"] = callSource;
    }
    if (callType != nil) {
        queryParams[@"callType"] = callType;
    }
    if (direction != nil) {
        queryParams[@"direction"] = direction;
    }
    if (callerName != nil) {
        queryParams[@"callerName"] = callerName;
    }
    if (did != nil) {
        queryParams[@"did"] = did;
    }
    if (dnis != nil) {
        queryParams[@"dnis"] = dnis;
    }
    if (acc != nil) {
        queryParams[@"acc"] = acc;
    }
    if (ring != nil) {
        queryParams[@"ring"] = ring;
    }
    if (cost != nil) {
        queryParams[@"cost"] = cost;
    }
    if (group != nil) {
        queryParams[@"group"] = group;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGInlineResponse200>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGInlineResponse200>*)data, error);
                                }
                           }
          ];
}

///
/// 
/// Gets `Charts` list. 
///  @returns NSArray<SWGInlineResponse200>*
///
-(NSNumber*) featuresChartsGetWithCompletionHandler: 
    (void (^)(NSArray<SWGInlineResponse200>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/Features/charts"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGInlineResponse200>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGInlineResponse200>*)data, error);
                                }
                           }
          ];
}

///
/// 
/// Gets `Reports` list. 
///  @returns NSArray<SWGInlineResponse200>*
///
-(NSNumber*) featuresReportsGetWithCompletionHandler: 
    (void (^)(NSArray<SWGInlineResponse200>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/Features/reports"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGInlineResponse200>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGInlineResponse200>*)data, error);
                                }
                           }
          ];
}

///
/// 
/// Gets `Widgets` list. 
///  @returns NSArray<SWGInlineResponse200>*
///
-(NSNumber*) featuresWidgetGetWithCompletionHandler: 
    (void (^)(NSArray<SWGInlineResponse200>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/Features/widget"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGInlineResponse200>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGInlineResponse200>*)data, error);
                                }
                           }
          ];
}



@end
