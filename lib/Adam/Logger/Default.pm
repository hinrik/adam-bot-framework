package Adam::Logger;
use Moose;

with qw(
  Adam::Logging::API
  MooseX::LogDispatch::Levels
);

1;
__END__