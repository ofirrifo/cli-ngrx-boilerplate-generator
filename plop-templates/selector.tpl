import { createFeatureSelector, createSelector } from '@ngrx/store';
import { State } from './{{lowerCase targetFolder}}.reducer';

export const get{{pascalCase targetFolder}}State = createFeatureSelector<State>('{{lowerCase targetFolder}}');

export const get{{pascalCase targetFolder}} = createSelector(get{{pascalCase targetFolder}}State, state => {
  return state.{{lowerCase targetFolder}};
});