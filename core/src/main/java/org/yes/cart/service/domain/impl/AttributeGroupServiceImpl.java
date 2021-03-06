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

package org.yes.cart.service.domain.impl;

import org.yes.cart.dao.GenericDAO;
import org.yes.cart.domain.entity.AttributeGroup;
import org.yes.cart.service.domain.AttributeGroupService;

/**
 * User: Igor Azarny iazarny@yahoo.com
 * Date: 09-May-2011
 * Time: 14:12:54
 */
public class AttributeGroupServiceImpl extends BaseGenericServiceImpl<AttributeGroup> implements AttributeGroupService {

    private final GenericDAO<AttributeGroup, Long> attributeGroupDao;

    /**
     * Construct attribute group service.
     * @param attributeGroupDao
     */
    public AttributeGroupServiceImpl(final GenericDAO<AttributeGroup, Long> attributeGroupDao) {
        super(attributeGroupDao);
        this.attributeGroupDao = attributeGroupDao;
    }


    /**
     * Get single attribute by given code.
     *
     * @param code given code
     * @return {@link AttributeGroup} if found, otherwise null.
     */
    public AttributeGroup getAttributeGroupByCode(final String code) {
        return attributeGroupDao.findSingleByCriteria(" where e.code = ?1", code);
    }



    /**
     * Delete  {@link AttributeGroup} by given code.
     * @param code code of {@link AttributeGroup} to delete
     */
    public void delete(final String code) {
        attributeGroupDao.delete(
                getAttributeGroupByCode(code)
        );
    }

}
