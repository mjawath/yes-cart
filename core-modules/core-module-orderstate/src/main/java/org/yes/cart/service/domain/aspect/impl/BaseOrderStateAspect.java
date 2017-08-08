package org.yes.cart.service.domain.aspect.impl;

import org.apache.commons.lang.StringUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.core.task.TaskExecutor;
import org.yes.cart.domain.entity.CustomerOrder;
import org.yes.cart.domain.entity.CustomerOrderDelivery;
import org.yes.cart.domain.entity.Shop;
import org.yes.cart.service.mail.impl.MailUtils;
import org.yes.cart.service.order.OrderEvent;
import org.yes.cart.service.theme.ThemeService;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * Base class for order aspects.
 *
 * User: iazarny@yahoo.com
 * Date: 10/20/12
 * Time: 11:07 AM
 */
public abstract class BaseOrderStateAspect extends BaseNotificationAspect  {

    private final ThemeService themeService;

    /**
     * Construct base notification aspect class.
     *
     * @param taskExecutor async executor to use
     * @param themeService theme resolution
     */
    public BaseOrderStateAspect(final TaskExecutor taskExecutor,
                                final ThemeService themeService) {
        super(taskExecutor);
        this.themeService = themeService;
    }

    /**
     * Create email and sent it.
     *
     * @param pjp             join point
     * @param orderEvent      given order event
     * @param template        email template name
     * @param params          additional params
     * @param mailTo          set of email addresses
     */
    protected void sendOrderNotification(final ProceedingJoinPoint pjp,
                                         final OrderEvent orderEvent,
                                         final String template,
                                         final Map<String, Object> params,
                                         final String... mailTo) {

        if (StringUtils.isNotBlank(template)) {

            final CustomerOrder customerOrder = orderEvent.getCustomerOrder();
            final CustomerOrderDelivery customerOrderDelivery = orderEvent.getCustomerOrderDelivery();
            final Shop orderShop = customerOrder.getShop();
            final Shop shop = orderShop.getMaster() != null ? orderShop.getMaster() : orderShop;


            for (final String recipient : mailTo) {

                if (StringUtils.isNotBlank(recipient)) {

                    final HashMap<String, Object> map = new HashMap<String, Object>();

                    MailUtils.appendMethodParamaters(map, pjp.getArgs());

                    MailUtils.appendOrderEmailParameters(
                            map,
                            themeService.getMailTemplateChainByShopId(shop.getShopId()),
                            template,
                            recipient,
                            customerOrder,
                            customerOrderDelivery,
                            params);

                    sendNotification(map);
                }

            }

        }


    }

    /**
     * Create email and sent it.
     *
     * @param pjp             join point
     * @param orderEvent      given order event
     * @param template        email template name
     * @param mailTo          set of email addresses
     */
    protected void sendOrderNotification(final ProceedingJoinPoint pjp,
                                         final OrderEvent orderEvent,
                                         final String template,
                                         final String... mailTo) {

        sendOrderNotification(pjp, orderEvent, template, null, mailTo);

    }

}
