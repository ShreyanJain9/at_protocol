# typed: true
module ATProto
  class Repo
    class Collection < T::Struct
      include RequestUtils
      include Enumerable
      extend T::Sig

      const(:repo, ATProto::Repo)
      const(:collection, String)

      sig { params(limit: Integer).returns(T::Array[ATProto::Record]) }

      def list(limit = 10)
        self.repo.xrpc
          .get.com_atproto_repo_listRecords(
            repo: self.repo.did,
            collection: self.collection,
            limit: limit,
          )["records"]
          .map { |record|
          ATProto::Record.from_hash(record)
        }
      end

      def list_all()
        T.must(get_paginated_data(self.repo, :com_atproto_repo_listRecords.to_s, key: "records", params: { repo: self.repo.to_s, collection: self.to_s }, cursor: nil) do |record|
          ATProto::Record.from_hash(record)
        end)
      end

      sig { returns(String) }

      def to_uri
        "at://#{self.repo.did}/#{self.collection}/"
      end

      sig { returns(String) }

      def to_s
        @collection
      end

      sig { params(rkey: String).returns(T.nilable(ATProto::Record)) }

      def [](rkey)
        ATProto::Record.from_uri(
          T.must(
            at_uri(
              "at://#{self.repo.did}/#{@collection}/#{rkey}"
            )
          ),
          self.repo.pds
        )
      end

      def each(&block)
        list_all.each(&block)
      end
    end
  end
end