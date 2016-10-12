/**
 * Created by John King on 11-Oct-16.
 */

package com.kennuware.sales.services;

import com.google.gson.Gson;
import com.kennuware.sales.domain.SalesOrder;
import org.hibernate.Query;
import org.hibernate.Session;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.mockito.runners.MockitoJUnitRunner;

import static com.kennuware.sales.services.OrderServices.completeSaleOrder;
import static com.kennuware.sales.services.OrderServices.sendOrder;
import static junit.framework.TestCase.assertEquals;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class OrderServicesTest {
    @Test
    public void sendOrderTest(){
        Gson gson = new Gson();
        Session mockedSession = mock(Session.class);

        SalesOrder salesOrder = new SalesOrder();
        salesOrder.setBulkDiscount(1.0);
        salesOrder.setCreditCardNumber("4485355145730911");
        salesOrder.setExpirationDate("03/20");
        salesOrder.setEmployeeID(1);
        salesOrder.setCustomerName("Joey");

        assertEquals(gson.toJson(salesOrder), sendOrder(salesOrder, mockedSession));
        assertEquals(gson.toJson(salesOrder.getOrderid()), gson.toJson(completeSaleOrder("Joey", 1, "4485355145730911", "03/20", 1.0, mockedSession)));
    }
}