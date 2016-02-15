require_relative '../../spec_helper.rb'

describe 'nginx-calc::default' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs apt recipe' do
    expect(chef_run).to include_recipe('apt')
  end

  it 'installs nginx' do
    expect(chef_run).to install_package('nginx')
  end

  it 'starts the nginx daemon' do
    expect(chef_run).to run_execute('/etc/init.d/nginx start')
  end
end
