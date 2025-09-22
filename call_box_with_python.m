loadenv(".env")
token = getenv("token")

pyenv(Version="env\Scripts\python.exe",...
    ExecutionMode="OutOfProcess");

box_sdk_gen = py.importlib.import_module('box_sdk_gen');
auth = box_sdk_gen.BoxDeveloperTokenAuth(token=token);
client = box_sdk_gen.BoxClient(auth=auth);

% List files
items = client.folders.get_folder_items(folder_id="0")
entries = items.entries
entries{1}.id
entries{1}.name