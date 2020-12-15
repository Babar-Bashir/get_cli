import 'package:get_cli/commands/interface/command.dart';
import 'package:get_cli/common/utils/pubspec/pubspec_lock.dart';
import 'package:get_cli/core/locales.g.dart';
import 'package:get_cli/core/internationalization.dart';
import 'package:get_cli/functions/version/print_get_cli.dart';

class VersionCommand extends Command {
  @override
  Future<void> execute() async {
    var version = await PubspecLock.getVersionCli();
    if (version == null) return;
    printGetCli();
    print('Version: $version');
  }

  @override
  String get hint => Translation(LocaleKeys.hint_version).tr;

  @override
  bool validate() {
    return true;
  }
}
