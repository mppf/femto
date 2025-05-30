/*
  2025 Michael Ferguson <michaelferguson@acm.org>

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU Lesser General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.

  femto/src/ssort_chpl/TestStackTrace.chpl
*/

module TestStackTrace {

config param EXTRA_CHECKS=false;

use StackTrace;

proc baz() {
  var s = stackTraceAsString(b"|");
  writeln(s);
}

proc bar() {
  baz();
}
proc foo() {
  bar();
}

proc main() { 
  foo();
  writeln("OK");
}


}
