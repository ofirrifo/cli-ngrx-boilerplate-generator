import * as {{pascalCase targetFolder}}Actions from './{{targetFolder}}.actions';

export interface State {
  {{lowerCase targetFolder}}: any;
}

const initialState: State = {
  {{lowerCase targetFolder}}: void 0,
};

export function reducer(state: State = initialState, action: {{pascalCase targetFolder}}Actions.Actions): State {
  switch (action.type) {
    default: {
      return state;
    }
  }
}
