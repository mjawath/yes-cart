/*
 * Copyright 2009 Denys Pavlov, Igor Azarnyi
 *
 *    Licensed under the Apache License, Version 2.0 (the "License");
 *    you may not use this file except in compliance with the License.
 *    You may obtain a copy of the License at
 *
 *        http://www.apache.org/licenses/LICENSE-2.0
 *
 *    Unless required by applicable law or agreed to in writing, software
 *    distributed under the License is distributed on an "AS IS" BASIS,
 *    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *    See the License for the specific language governing permissions and
 *    limitations under the License.
 */

package org.yes.cart.domain.dto.adapter.impl;

import com.inspiresoftware.lib.dto.geda.adapter.BeanFactory;
import com.inspiresoftware.lib.dto.geda.adapter.ValueConverter;
import org.yes.cart.domain.dto.StoredAttributesDTO;
import org.yes.cart.domain.i18n.I18NModel;
import org.yes.cart.domain.misc.Pair;
import org.yes.cart.domain.ro.ProductSearchResultAttributeRO;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * User: denispavlov
 * Date: 06/11/2015
 * Time: 08:05
 */
public class StoredAttributesConverter implements ValueConverter {

    /** {@inheritDoc} */
    public Object convertToDto(final Object object, final BeanFactory beanFactory) {
        if (object instanceof StoredAttributesDTO) {
            final StoredAttributesDTO attributes = (StoredAttributesDTO) object;
            final List<ProductSearchResultAttributeRO> ros = new ArrayList<ProductSearchResultAttributeRO>();
            for (final Map.Entry<String, Pair<String, I18NModel>> storedAttribute : attributes.getAllValues().entrySet()) {
                final ProductSearchResultAttributeRO ro = new ProductSearchResultAttributeRO();
                ro.setCode(storedAttribute.getKey());
                ro.setValue(storedAttribute.getValue().getFirst());
                final I18NModel i18n = storedAttribute.getValue().getSecond();
                if (i18n != null) {
                    ro.setDisplayValue(i18n.getAllValues());
                }
                ros.add(ro);
            }
            return ros;
        }
        return null;
    }

    /** {@inheritDoc} */
    public Object convertToEntity(final Object object, final Object oldEntity, final BeanFactory beanFactory) {
        throw new UnsupportedOperationException();
    }
}
