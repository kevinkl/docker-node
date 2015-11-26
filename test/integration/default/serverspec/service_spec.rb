require 'serverspec'

# required by serverspec
set :backend, :exec

describe 'Docker Daemon' do
  it 'should be enabled' do
    expect(service('docker')).to be_enabled
  end

  it 'should be running' do
    expect(service('docker')).to be_running
  end
end
