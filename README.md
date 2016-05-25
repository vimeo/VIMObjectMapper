###### Attention: This tool will be merged into [VimeoNetworking](https://github.com/vimeo/VimeoNetworking) shortly.  Please refer to that repository for future development.

# VIMObjectMapper

`VIMObjectMapper` converts JSON into model objects.

## Setup

Add `VIMObjectMapper` to your project. Do this by including it as a git submodule or by using cocoapods:

```Ruby
# Add this to your podfile
target 'MyTarget' do
    pod 'VIMObjectMapper', '{CURRENT_POD_VERSION}'
end
```

## Usage

### Subclass VIMModelObject

Make your custom model object a subclass of `VIMModelObject` and optionally implement the `VIMMappable` protocol methods:

```Objective-C
#import "VIMModelObject.h"

@class VIMPictureCollection;

@interface VIMUser : VIMModelObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) VIMPictureCollection *pictureCollection;
@property (nonatomic, strong) NSDictionary *uploadQuota;
@property (nonatomic, strong) NSArray *websites;

@end
```
```Objective-C
#import "VIMUser.h"
#import "VIMPictureCollection.h"
#import "VIMObjectMapper.h"

@implementation VIMUser

#pragma mark - VIMMappable // All methods are optional, implement to specify how the object should be "inflated"

- (NSDictionary *)getObjectMapping
{
	return @{@"pictures": @"pictureCollection"};
}

- (Class)getClassForCollectionKey:(NSString *)key
{
    if ([key isEqualToString:@"uploadQuota"])
    {
        return [NSDictionary class];
    }
    
    if ([key isEqualToString:@"websites"])
    {
        return [NSArray class];
    }

    return nil;
}

- (Class)getClassForObjectKey:(NSString *)key
{
    if ([key isEqualToString:@"pictures"])
    {
        return [VIMPictureCollection class];
    }
    
    return nil;
}

- (void)didFinishMapping
{
    // Do any post-parsing work you might want to do
}
```
### Get some JSON

```Objective-C
{
    user = {
        name = "Homer Simpson";
        pictures = {
            uri = "...";
            sizes = (...);
        };
        "upload_quota" = { ... };
        websites = ( ... );
    };
}
```

### Let VIMObjectMapper go to work

```Objective-C
NSDictionary *JSON = ...;

VIMObjectMapper *mapper = [[VIMObjectMapper alloc] init];

[mapper addMappingClass:[VIMUser class] forKeypath:@"user"];

VIMUser *user = [mapper applyMappingToJSON:JSON];
```

## Found an Issue?

Please file it in the git [issue tracker](https://github.com/vimeo/VIMObjectMapper/issues).

## Want to Contribute?

If you'd like to contribute, please follow our guidelines found in [CONTRIBUTING.md](CONTRIBUTING.md).

## License

`VIMObjectMapper` is available under the MIT license. See the [LICENSE](LICENSE.md) file for more info.

## Questions?

Tweet at us here: [@vimeoapi](https://twitter.com/vimeoapi).

Post on [Stackoverflow](http://stackoverflow.com/questions/tagged/vimeo-ios) with the tag `vimeo-ios`.

Get in touch [here](https://vimeo.com/help/contact).

Interested in working at Vimeo? We're [hiring](https://vimeo.com/jobs)!
