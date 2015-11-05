########################################################################
# storage_account_spec.rb
#
# Test suite for the Azure::Armrest::StorageAccount json model class.
########################################################################
require 'spec_helper'

describe "StorageAccount" do
  before {
    @json = '{
      "name":"vhds",
      "properties":{"etag": "12345"}
    }'
  }

  let(:storage){ Azure::Armrest::StorageAccount.new(@json) }

  context "constructor" do
    it "returns a StorageAccount class as expected" do
      expect(storage).to be_kind_of(Azure::Armrest::StorageAccount)
    end
  end

  context "storage classes" do
    it "defines container and blob classes" do
      expect(Azure::Armrest::StorageAccount::Container)
      expect(Azure::Armrest::StorageAccount::ContainerProperty)
      expect(Azure::Armrest::StorageAccount::Blob)
      expect(Azure::Armrest::StorageAccount::BlobServiceProperty)
      expect(Azure::Armrest::StorageAccount::BlobServiceStat)
      expect(Azure::Armrest::StorageAccount::BlobMetadata)
    end
  end

  context "accessors" do
    it "defines a storage_api_version accessor that defaults to 2015-02-01" do
      expect(storage).to respond_to(:storage_api_version)
      expect(storage.storage_api_version).to eq('2015-02-21')
    end
  end

  context "custom methods" do
    it "defines a containers method" do
      expect(storage).to respond_to(:containers)
    end

    it "defines a container_properties method" do
      expect(storage).to respond_to(:container_properties)
    end

    it "defines a container_acl method" do
      expect(storage).to respond_to(:container_acl)
    end

    it "defines a blobs method" do
      expect(storage).to respond_to(:blobs)
    end

    it "defines an all_blobs method" do
      expect(storage).to respond_to(:all_blobs)
    end

    it "defines a blob_properties method" do
      expect(storage).to respond_to(:blob_properties)
    end

    it "defines a blob_service_properties method" do
      expect(storage).to respond_to(:blob_service_properties)
    end

    it "defines a blob_metadata method" do
      expect(storage).to respond_to(:blob_metadata)
    end

    it "defines a blob_service_stats method" do
      expect(storage).to respond_to(:blob_service_stats)
    end

    it "defines a copy_blob method" do
      expect(storage).to respond_to(:copy_blob)
    end

    it "defines a delete_blob method" do
      expect(storage).to respond_to(:delete_blob)
    end
  end
end
