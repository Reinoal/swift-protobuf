/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/unittest_drop_unknown_fields.proto
 *
 */

// Protocol Buffers - Google's data interchange format
// Copyright 2008 Google Inc.  All rights reserved.
// https://developers.google.com/protocol-buffers/
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
//
//     * Redistributions of source code must retain the above copyright
// notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above
// copyright notice, this list of conditions and the following disclaimer
// in the documentation and/or other materials provided with the
// distribution.
//     * Neither the name of Google Inc. nor the names of its
// contributors may be used to endorse or promote products derived from
// this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _1: SwiftProtobuf.ProtobufAPIVersion_1 {}
  typealias Version = _1
}

fileprivate let _protobuf_package = "unittest_drop_unknown_fields"

struct UnittestDropUnknownFields_Foo: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".Foo"

  var int32Value: Int32 = 0

  var enumValue: UnittestDropUnknownFields_Foo.NestedEnum = UnittestDropUnknownFields_Foo.NestedEnum.foo

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum NestedEnum: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case foo // = 0
    case bar // = 1
    case baz // = 2
    case UNRECOGNIZED(Int)

    init() {
      self = .foo
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .foo
      case 1: self = .bar
      case 2: self = .baz
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .foo: return 0
      case .bar: return 1
      case .baz: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &int32Value)
      case 2: try decoder.decodeSingularEnumField(value: &enumValue)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if int32Value != 0 {
      try visitor.visitSingularInt32Field(value: int32Value, fieldNumber: 1)
    }
    if enumValue != UnittestDropUnknownFields_Foo.NestedEnum.foo {
      try visitor.visitSingularEnumField(value: enumValue, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

struct UnittestDropUnknownFields_FooWithExtraFields: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".FooWithExtraFields"

  var int32Value: Int32 = 0

  var enumValue: UnittestDropUnknownFields_FooWithExtraFields.NestedEnum = UnittestDropUnknownFields_FooWithExtraFields.NestedEnum.foo

  var extraInt32Value: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum NestedEnum: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case foo // = 0
    case bar // = 1
    case baz // = 2
    case qux // = 3
    case UNRECOGNIZED(Int)

    init() {
      self = .foo
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .foo
      case 1: self = .bar
      case 2: self = .baz
      case 3: self = .qux
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .foo: return 0
      case .bar: return 1
      case .baz: return 2
      case .qux: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &int32Value)
      case 2: try decoder.decodeSingularEnumField(value: &enumValue)
      case 3: try decoder.decodeSingularInt32Field(value: &extraInt32Value)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if int32Value != 0 {
      try visitor.visitSingularInt32Field(value: int32Value, fieldNumber: 1)
    }
    if enumValue != UnittestDropUnknownFields_FooWithExtraFields.NestedEnum.foo {
      try visitor.visitSingularEnumField(value: enumValue, fieldNumber: 2)
    }
    if extraInt32Value != 0 {
      try visitor.visitSingularInt32Field(value: extraInt32Value, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

extension UnittestDropUnknownFields_Foo: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "int32_value"),
    2: .standard(proto: "enum_value"),
  ]

  func _protobuf_generated_isEqualTo(other: UnittestDropUnknownFields_Foo) -> Bool {
    if int32Value != other.int32Value {return false}
    if enumValue != other.enumValue {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension UnittestDropUnknownFields_Foo.NestedEnum: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "FOO"),
    1: .same(proto: "BAR"),
    2: .same(proto: "BAZ"),
  ]
}

extension UnittestDropUnknownFields_FooWithExtraFields: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "int32_value"),
    2: .standard(proto: "enum_value"),
    3: .standard(proto: "extra_int32_value"),
  ]

  func _protobuf_generated_isEqualTo(other: UnittestDropUnknownFields_FooWithExtraFields) -> Bool {
    if int32Value != other.int32Value {return false}
    if enumValue != other.enumValue {return false}
    if extraInt32Value != other.extraInt32Value {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension UnittestDropUnknownFields_FooWithExtraFields.NestedEnum: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "FOO"),
    1: .same(proto: "BAR"),
    2: .same(proto: "BAZ"),
    3: .same(proto: "QUX"),
  ]
}
