import { Injectable } from '@angular/core';
import { Actions, Effect, ofType } from '@ngrx/effects';
import { Action } from '@app/shared/action';
import { Observable } from 'rxjs';
import { Empty } from '@app/core/store/core.actions';
import { map } from 'rxjs/operators';
import { ActionTypes } from './actions';

@Injectable()
export class Effects {

    /**
     * on create succeed
     */
    @Effect()
    createSucceed$: Observable<Action> = this.actions$.pipe(
        ofType(ActionTypes.CreateSucceed),
        map((action: Action) => action.payload),
        map(payload => {
            return new Empty();
        })
    );

    constructor(private actions$: Actions) {
    }
}
