require_relative '../../spec_helper.rb'

describe 'nginx-calc::default' do
  let (:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs nginx' do
    expect(chef_run).to install_package('nginx')
  end
end

