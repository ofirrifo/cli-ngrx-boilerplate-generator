export interface State {

}

const initialState: State = {

};

export function reducer(state: State = initialState, action: ActionTypes.Actions): State {
  switch (action.type) {
    default: {
      return state;
    }
  }
}
