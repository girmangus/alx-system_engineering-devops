# installs the package flask

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'gem',
}