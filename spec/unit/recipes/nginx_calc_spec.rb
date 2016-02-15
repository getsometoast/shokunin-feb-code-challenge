require_relative '../../spec_helper.rb'

describe 'nginx-calc::default' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs apt recipe' do
    expect(chef_run).to include_recipe('apt')
  end

  it 'installs openresty prereqs' do
    expect(chef_run).to install_package('libreadline-dev')
    expect(chef_run).to install_package('libncurses5-dev')
    expect(chef_run).to install_package('libpcre3-dev')
    expect(chef_run).to install_package('libssl-dev')
    expect(chef_run).to install_package('perl')
    expect(chef_run).to install_package('make')
    expect(chef_run).to install_package('build-essential')
  end

  it 'installs nginx' do
    expect(chef_run).to install_package('nginx')
  end

  it 'starts the nginx daemon' do
    expect(chef_run).to start_service('nginx')
  end
end
