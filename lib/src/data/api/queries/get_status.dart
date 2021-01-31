/// Get Status the service
const qGetStatus = r'''
  query status {
  status
}
''';

const responseGetStatusTrue = '''
{
  "data": {
    "status": "ok"
  }
}''';

const responseGetStatusFalse = '''
{
  "data": {
    "status": "oko"
  }
}''';
