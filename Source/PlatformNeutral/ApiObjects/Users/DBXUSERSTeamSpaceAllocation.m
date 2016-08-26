///
/// Auto-generated by Stone, do not modify.
///

#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"
#import "DBXUSERSTeamSpaceAllocation.h"

@implementation DBXUSERSTeamSpaceAllocation 

- (instancetype)initWithUsed:(NSNumber *)used allocated:(NSNumber *)allocated {

    self = [super init];
    if (self != nil) {
        _used = used;
        _allocated = allocated;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DBXUSERSTeamSpaceAllocationSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXUSERSTeamSpaceAllocationSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXUSERSTeamSpaceAllocationSerializer serialize:self] description];
}

@end


@implementation DBXUSERSTeamSpaceAllocationSerializer 

+ (NSDictionary *)serialize:(DBXUSERSTeamSpaceAllocation *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"used"] = valueObj.used;
    jsonDict[@"allocated"] = valueObj.allocated;

    return jsonDict;
}

+ (DBXUSERSTeamSpaceAllocation *)deserialize:(NSDictionary *)valueDict {
    NSNumber *used = valueDict[@"used"];
    NSNumber *allocated = valueDict[@"allocated"];

    return [[DBXUSERSTeamSpaceAllocation alloc] initWithUsed:used allocated:allocated];
}

@end