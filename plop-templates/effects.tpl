import { Injectable } from '@angular/core';
import { Actions, Effect, ofType } from '@ngrx/effects';
import { Action } from '@app/shared/action';
import { Observable } from 'rxjs';
import { Empty } from '@app/core/store/core.actions';
import { map } from 'rxjs/operators';
import { {{pascalCase targetFolder}}ActionTypes } from './{{targetFolder}}.actions';

@Injectable()
export class {{pascalCase targetFolder}}Effects {

    /**
     * on create {{lowerCase targetFolder}} succeed
     */
    @Effect()
    create{{pascalCase targetFolder}}Succeed$: Observable<Action> = this.actions$.pipe(
        ofType({{pascalCase targetFolder}}ActionTypes.Create{{pascalCase targetFolder}}Succeed),
        map((action: Action) => action.payload),
        map(payload => {
            return new Empty();
        })
    );

    constructor(private actions$: Actions) {
    }
}
