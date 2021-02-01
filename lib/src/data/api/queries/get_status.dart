/// Get Status the service
const qGetStatus = r'''
  query status {
  status
}
''';

const responseGetStatusTrue = '''
{
  "status": "ok"
}''';

const responseGetStatusFalse = '''
{
  "status": "oko"
}''';
