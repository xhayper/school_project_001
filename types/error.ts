export type SupabaseErrorValue =
  | {
      type: 'UNAUTHORIZED';
      msg?: any;
    }
  | {
      type: 'NOT_LOGGED_IN';
      msg?: any;
    }
  | {
      type: 'NOT_ADMIN';
      msg?: any;
    }
  | {
      type: 'NOT_TEACHER';
      msg?: any;
    }
  | {
      type: 'USER_NOT_FOUND';
      msg?: any;
    };

export type GenericError<S, E> = { error: true; value: E } | { error: false; value: S };

export type SupabaseError<S> = GenericError<S, SupabaseErrorValue>;
