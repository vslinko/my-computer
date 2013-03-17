# My Computer Chef Solo Configuration

## Dependencies

Before using `my-computer` you should install `XCode` from `Mac App Store`.

## Usage

```shell
$ mkdir Code
$ cd Code
$ git clone git@github.com:vslinko/my-computer.git
$ cd my-computer
$ bundle install
$ librarian-chef install
$ sudo chef-solo -c solo.rb -o "role[my_computer]"
```
