# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: false
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/ATProto/all/ATProto.rbi
#
# ATProto-0.0.4

module ATProto
end
module ATProto::DID
end
class ATProto::DID::Document
  def alsoKnownAs; end
  def context; end
  def id; end
  def initialize(*args, **, &blk); end
  def service; end
  def verificationMethod; end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class ATProto::DID::VerificationMethod
  def controller; end
  def id; end
  def initialize(*args, **, &blk); end
  def publicKeyMultibase; end
  def type; end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class ATProto::DID::Service
  def id; end
  def id=(arg0); end
  def initialize(data); end
  def serviceEndpoint; end
  def serviceEndpoint=(arg0); end
  def type; end
  def type=(arg0); end
end
class ATProto::DID::PLC < T::Struct
  def __t_props_generated_deserialize(*args, **); end
  def __t_props_generated_serialize(*args, **); end
  def did; end
  def document; end
  def plc_dir; end
  def repo; end
  def self.inherited(s); end
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
end
