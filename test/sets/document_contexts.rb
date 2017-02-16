module Contexts
  module DocumentContexts
    def create_documents
      @doc = FactoryGirl.create(:document, name: "I9")
      @doc1 = FactoryGirl.create(:document, name: "W2")
      @doc2 = FactoryGirl.create(:document, name: "W4")
      @doc3 = FactoryGirl.create(:document, name: "Rent_1/2/2016")
      @doc4 = FactoryGirl.create(:document, name: "Car_repair1")
      @doc5 = FactoryGirl.create(:document, name: "Scan2")
      @doc6 = FactoryGirl.create(:document, name: "CT_Scan_Bill")
      @doc7 = FactoryGirl.create(:document, name: "MRI")

    end

    def remove_documents
      @doc.destroy
      @doc1.destroy
      @doc2.destroy
      @doc3.destroy
      @doc4.destroy
      @doc5.destroy
      @doc6.destroy
      @doc7.destroy
    end

  end
end
