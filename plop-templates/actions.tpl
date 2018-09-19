import { ApiCallAction } from '@app/core/api-call/model/api-call.action';
import { Action } from '@ngrx/store';
import { ToastMessage } from '@app/toaster/toaster.actions';
import { MessageType } from '@app/toaster/Model/message-type.enum';

export enum {{pascalCase targetFolder}}ActionTypes {
  Create{{pascalCase targetFolder}}Succeed = '[{{upperCase targetFolder}}] Create {{pascalCase targetFolder}} Succeed',
  Update{{pascalCase targetFolder}}Succeed = '[{{upperCase targetFolder}}] Update {{pascalCase targetFolder}} Succeed',
  Delete{{pascalCase targetFolder}}Succeed = '[{{upperCase targetFolder}}] Delete {{pascalCase targetFolder}} Succeed'
}

/**
 * On create {{lowerCase targetFolder}} succeed
 */
export class Create{{pascalCase targetFolder}}Succeed implements Action {
  readonly type = {{pascalCase targetFolder}}ActionTypes.Create{{pascalCase targetFolder}}Succeed;

  constructor(public payload?: any) {}
}

/**
 * On update {{lowerCase targetFolder}} succeed
 */
export class Update{{pascalCase targetFolder}}Succeed implements Action {
    readonly type = {{pascalCase targetFolder}}ActionTypes.Update{{pascalCase targetFolder}}Succeed;

    constructor(public payload?: any) {}
}

/**
 * On delete {{lowerCase targetFolder}} succeed
 */
export class Delete{{pascalCase targetFolder}}Succeed implements Action {
    readonly type = {{pascalCase targetFolder}}ActionTypes.Delete{{pascalCase targetFolder}}Succeed;

    constructor(public payload?: any) {}
}


export type Actions =
  | Create{{pascalCase targetFolder}}Succeed
  | Update{{pascalCase targetFolder}}Succeed
  | Delete{{pascalCase targetFolder}}Succeed
