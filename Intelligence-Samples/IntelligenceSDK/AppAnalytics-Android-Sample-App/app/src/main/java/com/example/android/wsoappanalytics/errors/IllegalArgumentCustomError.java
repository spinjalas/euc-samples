/*
 * Copyright 2019 Omnissa, LLC.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.example.android.wsoappanalytics.errors;

import com.crittercism.app.Crittercism;

import java.io.File;

public class IllegalArgumentCustomError extends CustomError {
    @Override
    protected void performError() throws Throwable {
        super.performError();                try {
            new File("abcd").setLastModified(-50);
        } catch (Exception e) {
            Crittercism.logHandledException(e);
        }
    }
}
