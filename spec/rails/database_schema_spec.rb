require "rails_helper"

RSpec.describe "Database schema" do
  it "has an active database connection" do
    expect(ActiveRecord::Base.connection).to be_active
  end

  it "has no pending migrations" do
    expect(ActiveRecord::Base.connection_pool.migration_context.needs_migration?).to be(false)
  end
end
