import * as {{pascalCase targetFolder}}Actions from './{{targetFolder}}.actions';
export interface State {

}

const initialState: State = {

};

export function reducer(state: State = initialState, action: {{pascalCase targetFolder}}Actions.Actions): State {
  switch (action.type) {
    default: {
      return state;
    }
  }
}
