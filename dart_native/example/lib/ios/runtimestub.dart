import 'dart:ffi';

import 'package:dart_native/dart_native.dart';
import 'package:dart_native_example/ios/delegatestub.dart';
import 'package:dart_native_gen/dart_native_gen.dart';

@native
class RuntimeSon extends RuntimeStub {
  RuntimeSon([Class isa]) : super(Class('RuntimeSon'));
  RuntimeSon.fromPointer(Pointer<Void> ptr) : super.fromPointer(ptr);
}

@native
class RuntimeStub extends NSObject {
  RuntimeStub([Class isa]) : super(Class('RuntimeStub'));

  RuntimeStub.fromPointer(Pointer<Void> ptr) : super.fromPointer(ptr);

  bool fooBool(bool b) {
    return perform('fooBOOL:'.toSEL(), args: [b]);
  }

  int fooInt8(int int8) {
    return perform(SEL('fooInt8:'), args: [int8]);
  }

  int fooInt16(int int16) {
    return perform(SEL('fooInt16:'), args: [int16]);
  }

  int fooInt32(int int32) {
    return perform(SEL('fooInt16:'), args: [int32]);
  }

  int fooInt64(int int64) {
    return perform(SEL('fooInt64:'), args: [int64]);
  }

  int fooUInt8(int uint8) {
    return perform(SEL('fooUInt8:'), args: [uint8]);
  }

  int fooUInt16(int uint16) {
    return perform(SEL('fooUInt16:'), args: [uint16]);
  }

  int fooUInt32(int uint32) {
    return perform(SEL('fooUInt16:'), args: [uint32]);
  }

  int fooUInt64(int uint64) {
    return perform(SEL('fooUInt64:'), args: [uint64]);
  }

  double fooFloat(double f) {
    return perform(SEL('fooFloat:'), args: [f]);
  }

  double fooDouble(double d) {
    return perform(SEL('fooDouble:'), args: [d]);
  }

  String fooCharPtr(String charPtr) {
    return perform(SEL('fooCharPtr:'), args: [charPtr]);
  }

  Class fooClass(Class cls) {
    return perform(SEL('fooClass:'), args: [cls]);
  }

  SEL fooSEL(SEL sel) {
    return perform(SEL('fooSEL:'), args: [sel]);
  }

  NSObject fooObject(NSObject object) {
    return perform(SEL('fooObject:'), args: [object]);
  }

  Pointer<Void> fooPointer(Pointer<Void> p) {
    return perform(SEL('fooPointer:'), args: [p]);
  }

  void fooVoid() {
    perform(SEL('fooVoid'));
  }

  CGSize fooCGSize(CGSize size) {
    return perform(SEL('fooCGSize:'), args: [size]);
  }

  CGPoint fooCGPoint(CGPoint point) {
    return perform(SEL('fooCGPoint:'), args: [point]);
  }

  CGVector fooCGVector(CGVector vector) {
    return perform(SEL('fooCGVector:'), args: [vector]);
  }

  CGRect fooCGRect(CGRect rect) {
    return perform(SEL('fooCGRect:'), args: [rect]);
  }

  NSRange fooNSRange(NSRange range) {
    return perform(SEL('fooNSRange:'), args: [range]);
  }

  UIOffset fooUIOffset(UIOffset offset) {
    return perform(SEL('fooUIOffset:'), args: [offset]);
  }

  UIEdgeInsets fooUIEdgeInsets(UIEdgeInsets insets) {
    return perform(SEL('fooUIEdgeInsets:'), args: [insets]);
  }

  NSDirectionalEdgeInsets fooNSDirectionalEdgeInsets(
      NSDirectionalEdgeInsets insets) {
    return perform(SEL('fooNSDirectionalEdgeInsets:'), args: [insets]);
  }

  CGAffineTransform fooCGAffineTransform(CGAffineTransform transform) {
    return perform(SEL('fooCGAffineTransform:'), args: [transform]);
  }

  List fooNSArray(List list) {
    NSObject result = perform(SEL('fooNSArray:'), args: [list]);
    return NSArray.fromPointer(result.pointer).raw;
  }

  List fooNSMutableArray(List list) {
    NSMutableArray array = NSMutableArray(list);
    NSObject result = perform(SEL('fooNSMutableArray:'), args: [array]);
    return NSMutableArray.fromPointer(result.pointer).raw;
  }

  Map fooNSDictionary(Map map) {
    NSObject result = perform(SEL('fooNSDictionary:'), args: [map]);
    return NSDictionary.fromPointer(result.pointer).raw;
  }

  Map fooNSMutableDictionary(Map map) {
    NSMutableDictionary dict = NSMutableDictionary(map);
    NSObject result = perform(SEL('fooNSMutableDictionary:'), args: [dict]);
    return NSMutableDictionary.fromPointer(result.pointer).raw;
  }

  Set fooNSSet(Set set) {
    NSObject result = perform(SEL('fooNSSet:'), args: [set]);
    return NSSet.fromPointer(result.pointer).raw;
  }

  Set fooNSMutableSet(Set set) {
    NSMutableSet s = NSMutableSet(set);
    NSObject result = perform(SEL('fooNSMutableSet:'), args: [s]);
    return NSMutableSet.fromPointer(result.pointer).raw;
  }

  Block fooBlock(Function func) {
    Block result = perform(SEL('fooBlock:'), args: [func]);
    return result;
  }

  Block fooStretBlock(Function func) {
    Block result = perform(SEL('fooStretBlock:'), args: [func]);
    return result;
  }

  Block fooCStringBlock(Function func) {
    Block result = perform(SEL('fooCStringBlock:'), args: [func]);
    return result;
  }

  fooDelegate(SampleDelegate delegate) {
    perform(SEL('fooDelegate:'), args: [delegate]);
  }

  fooStructDelegate(SampleDelegate delegate) {
    perform(SEL('fooStructDelegate:'), args: [delegate]);
  }

  String fooNSString(String string) {
    NSObject result = perform(SEL('fooNSString:'), args: [string]);
    return NSString.fromPointer(result.pointer).raw;
  }

  String fooNSMutableString(String string) {
    NSMutableString s = NSMutableString(string);
    NSObject result = perform(SEL('fooNSMutableString:'), args: [s]);
    return NSMutableString.fromPointer(result.pointer).raw;
  }

  void fooWithError(NSObjectRef ref) {
    perform(SEL('fooWithError:'), args: [ref]);
  }

  TestOptions fooWithOptions(TestOptions options) {
    int result = perform(SEL('fooWithOptions:'), args: [options]);
    return TestOptions(result);
  }
}

class TestOptions extends NSOptions {
  const TestOptions(dynamic raw) : super(raw);
}

const TestOptions TestOptionsNone = TestOptions(0);
const TestOptions TestOptionsOne = TestOptions(1 << 0);
const TestOptions TestOptionsTwo = TestOptions(1 << 1);