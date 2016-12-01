#import "GlobalVariable.h"

@implementation GlobalVariable

@synthesize myContacts;
@synthesize historyCalls;

+(GlobalVariable *)sharedVariable
{
    static GlobalVariable *sharedVariable = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedVariable = [[GlobalVariable alloc] init];
    });
    return sharedVariable;
}

- (id)init
{
    if (self = [super init])
    {
        myContacts = [NSMutableArray array];
        historyCalls = [NSMutableArray array];
    }
    return self; 
}

- (void)sort
{
    NSSortDescriptor *myDescriptor1 = [NSSortDescriptor
                                       sortDescriptorWithKey:@"FirstName"
                                       ascending:YES
                                       selector:@selector(compare:)
                                       ];
    [myContacts sortUsingDescriptors:@[myDescriptor1]];
}

- (void)dealloc
{
} 

@end
