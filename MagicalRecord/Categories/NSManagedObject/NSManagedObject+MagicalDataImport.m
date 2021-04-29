//
//  NSManagedObject+JSONHelpers.m
//
//  Created by Saul Mora on 6/28/11.
//  Copyright 2011 Magical Panda Software LLC. All rights reserved.
//

#import "NSObject+MagicalDataImport.h"
#import "NSAttributeDescription+MagicalDataImport.h"
#import "NSEntityDescription+MagicalDataImport.h"
#import "NSManagedObject+MagicalDataImport.h"
#import "NSManagedObject+MagicalFinders.h"
#import "NSManagedObject+MagicalRecord.h"
#import "NSRelationshipDescription+MagicalDataImport.h"
#import "NSString+MagicalDataImport.h"
#import "MagicalImportFunctions.h"
#import "MagicalRecordLogging.h"
#import <objc/runtime.h>

NSString * const kMagicalRecordImportCustomDateFormatKey            = @"dateFormat";
NSString * const kMagicalRecordImportDefaultDateFormatString        = @"yyyy-MM-dd'T'HH:mm:ssz";
NSString * const kMagicalRecordImportUnixTimeString                 = @"UnixTime";

NSString * const kMagicalRecordImportAttributeKeyMapKey             = @"mappedKeyName";
NSString * const kMagicalRecordImportAttributeValueClassNameKey     = @"attributeValueClassName";

NSString * const kMagicalRecordImportRelationshipMapKey             = @"mappedKeyName";
NSString * const kMagicalRecordImportRelationshipLinkedByKey        = @"relatedByAttribute";
NSString * const kMagicalRecordImportRelationshipTypeKey            = @"type";  //this needs to be revisited

NSString * const kMagicalRecordImportAttributeUseDefaultValueWhenNotPresent = @"useDefaultValueWhenNotPresent";
