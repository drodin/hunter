import sys
import json
import re
import os

projects = set()

with open(os.environ.get('HOME') + '/files.json') as json_files:
  p = re.compile('cmake/projects/([^/]+)')
  files = json.load(json_files)
  for file in files:
    if p.match(file):
      project = p.match(file).group(1)
      if os.path.isdir('cmake/projects/' + project):
        projects.add(project)

if projects:
  include = []
  with open('.github/workflows/ci/matrix.json') as json_matrix:
    matrix = json.load(json_matrix)
    for project in projects:
      matrix_override = 'cmake/projects/' + project + '/ci/matrix.json';
      if os.path.isfile(matrix_override):
        with open(matrix_override) as json_matrix_override:
          project_matrix = json.load(json_matrix_override)
          for project_leg in project_matrix['include']:
            include.append(project_leg)
      else:
        for leg in matrix['include']:
          project_leg = leg.copy()
          project_leg['example'] = project
          include.append(project_leg)
    matrix['include'] = include
    print(json.dumps(matrix))
else:
  sys.exit('no projects')