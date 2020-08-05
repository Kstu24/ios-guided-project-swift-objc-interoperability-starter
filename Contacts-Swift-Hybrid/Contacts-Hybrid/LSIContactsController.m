//
//  ContactsController.m
//  Contacts-Hybrid
//
//  Created by Kevin Stewart on 8/4/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIContactsController.h"
//#import "Contacts-Hybrid-Bridging-Header.h"
#import "Contacts_Hybrid-Swift.h"

@interface LSIContactsController ()

@property (nonatomic) NSMutableArray *internalContacts;

@end

@implementation LSIContactsController

- (instancetype)init
{
    if (self = [super init]) {
        _internalContacts = [[NSMutableArray alloc] init];
        LSIContact *contact = [[LSIContact alloc] initWithName:@"Kevin"
                                            relationship:@"Myself"];
        [_internalContacts addObject:contact];
    }
    return self;
}

- (NSArray *)contacts
{
    return self.internalContacts.copy;
}

- (nonnull LSIContact *)conactAtIndex:(NSInteger)index
{
    return [self.internalContacts objectAtIndex: index];
}

- (NSInteger)contactCount
{
    return self.internalContacts.count;
}

@end
