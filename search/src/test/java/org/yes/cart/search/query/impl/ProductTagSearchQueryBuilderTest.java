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
 *    See the License for the specific nulluage governing permissions and
 *    limitations under the License.
 */

package org.yes.cart.search.query.impl;

import org.apache.lucene.search.Query;
import org.jmock.Expectations;
import org.jmock.Mockery;
import org.jmock.integration.junit4.JUnit4Mockery;
import org.junit.Test;
import org.yes.cart.search.ShopSearchSupportService;
import org.yes.cart.search.dto.NavigationContext;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import static org.junit.Assert.*;

/**
 * User: denispavlov
 * Date: 18/11/2014
 * Time: 00:12
 */
public class ProductTagSearchQueryBuilderTest {

    private final Mockery context = new JUnit4Mockery();

    @Test
    public void testCreateQueryChainNull() throws Exception {

        final ShopSearchSupportService shopSearchSupportService = context.mock(ShopSearchSupportService.class, "shopSearchSupportService");

        final List<Query> query = new ProductTagSearchQueryBuilder(shopSearchSupportService).createQueryChain(null, "tag", null);
        assertNull(query);

        this.context.assertIsSatisfied();

    }

    @Test
    public void testCreateQueryChainBlank() throws Exception {

        final ShopSearchSupportService shopSearchSupportService = context.mock(ShopSearchSupportService.class, "shopSearchSupportService");

        final List<Query> query = new ProductTagSearchQueryBuilder(shopSearchSupportService).createQueryChain(null, "tag", "  ");
        assertNull(query);

        this.context.assertIsSatisfied();

    }

    @Test
    public void testCreateQueryChainTag() throws Exception {

        final ShopSearchSupportService shopSearchSupportService = context.mock(ShopSearchSupportService.class, "shopSearchSupportService");

        final List<Query> query = new ProductTagSearchQueryBuilder(shopSearchSupportService).createQueryChain(null, "tag", "tag1");
        assertNotNull(query);
        assertEquals(1, query.size());
        assertEquals("(tag:tag1)^20.0", query.get(0).toString());

        this.context.assertIsSatisfied();

    }

    @Test
    public void testCreateQueryChainTagMulti() throws Exception {

        final ShopSearchSupportService shopSearchSupportService = context.mock(ShopSearchSupportService.class, "shopSearchSupportService");

        final List<Query> query = new ProductTagSearchQueryBuilder(shopSearchSupportService).createQueryChain(null, "tag", Arrays.asList("tag1", "tag2"));
        assertNotNull(query);
        assertEquals(1, query.size());
        assertEquals("(tag:tag1)^20.0 (tag:tag2)^20.0", query.get(0).toString());

        this.context.assertIsSatisfied();

    }

    @Test
    public void testCreateQueryChainTagMultiWithEmpty() throws Exception {

        final ShopSearchSupportService shopSearchSupportService = context.mock(ShopSearchSupportService.class, "shopSearchSupportService");

        final List<Query> query = new ProductTagSearchQueryBuilder(shopSearchSupportService).createQueryChain(null, "tag", Arrays.asList("tag1", ""));
        assertNotNull(query);
        assertEquals(1, query.size());
        assertEquals("(tag:tag1)^20.0", query.get(0).toString());

        this.context.assertIsSatisfied();

    }

    @Test
    public void testCreateQueryChainNewArrivalShop() throws Exception {

        final ShopSearchSupportService shopSearchSupportService = context.mock(ShopSearchSupportService.class, "shopSearchSupportService");

        final SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
        final Date earliest = formatter.parse("20141118000000");

        final NavigationContext<Query> navigationContext = this.context.mock(NavigationContext.class, "navigationContext");

        context.checking(new Expectations() {{
            oneOf(shopSearchSupportService).getCategoryNewArrivalDate(0L, 10L); will(returnValue(earliest));
            oneOf(navigationContext).getCategories(); will(returnValue(null));
            oneOf(navigationContext).getShopId(); will(returnValue(10L));
        }});


        final List<Query> query = new ProductTagSearchQueryBuilder(shopSearchSupportService).createQueryChain(navigationContext, "tag", "newarrival");
        assertNotNull(query);
        assertEquals(1, query.size());
        assertEquals("(tag:newarrival)^20.0 createdTimestamp:[" + earliest.getTime() + " TO 9223372036854775807]", query.get(0).toString());

        this.context.assertIsSatisfied();

    }

    @Test
    public void testCreateQueryChainNewArrivalCategory() throws Exception {

        final ShopSearchSupportService shopSearchSupportService = context.mock(ShopSearchSupportService.class, "shopSearchSupportService");

        final SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
        final Date earliest = formatter.parse("20141118000000");

        final NavigationContext<Query> navigationContext = this.context.mock(NavigationContext.class, "navigationContext");

        context.checking(new Expectations() {{
            oneOf(shopSearchSupportService).getCategoryNewArrivalDate(123L, 10L); will(returnValue(earliest));
            atLeast(2).of(navigationContext).getCategories(); will(returnValue(Collections.singletonList(123L)));
            oneOf(navigationContext).getShopId(); will(returnValue(10L));
        }});


        final List<Query> query = new ProductTagSearchQueryBuilder(shopSearchSupportService).createQueryChain(navigationContext, "tag", "newarrival");
        assertNotNull(query);
        assertEquals(1, query.size());
        assertEquals("(tag:newarrival)^20.0 createdTimestamp:[" + earliest.getTime() + " TO 9223372036854775807]", query.get(0).toString());

        this.context.assertIsSatisfied();

    }

    @Test
    public void testCreateQueryChainNewArrivalCategoryMulti() throws Exception {

        final ShopSearchSupportService shopSearchSupportService = context.mock(ShopSearchSupportService.class, "shopSearchSupportService");

        final NavigationContext<Query> navigationContext = this.context.mock(NavigationContext.class, "navigationContext");

        final SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
        final Date earliest123 = formatter.parse("20141118000000");
        final Date earliest234 = formatter.parse("20141218000000");

        context.checking(new Expectations() {{
            oneOf(shopSearchSupportService).getCategoryNewArrivalDate(123L, 10L); will(returnValue(earliest123));
            oneOf(shopSearchSupportService).getCategoryNewArrivalDate(234L, 10L); will(returnValue(earliest234));
            atLeast(2).of(navigationContext).getCategories(); will(returnValue(Arrays.asList(123L, 234L)));
            atLeast(2).of(navigationContext).getShopId(); will(returnValue(10L));
        }});


        final List<Query> query = new ProductTagSearchQueryBuilder(shopSearchSupportService).createQueryChain(navigationContext, "tag", "newarrival");
        assertNotNull(query);
        assertEquals(1, query.size());
        assertEquals("(tag:newarrival)^20.0 createdTimestamp:[" + earliest123.getTime() + " TO 9223372036854775807]", query.get(0).toString());

        this.context.assertIsSatisfied();

    }

}
