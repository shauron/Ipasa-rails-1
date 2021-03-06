require 'spec_helper'

describe "invoices/new" do
  before(:each) do
    assign(:invoice, stub_model(Invoice,
      :folio => "MyString",
      :monto => 1.5,
      :rent_id => 1
    ).as_new_record)
  end

  it "renders new invoice form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => invoices_path, :method => "post" do
      assert_select "input#invoice_folio", :name => "invoice[folio]"
      assert_select "input#invoice_monto", :name => "invoice[monto]"
      assert_select "input#invoice_rent_id", :name => "invoice[rent_id]"
    end
  end
end
