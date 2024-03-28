import java.util.Scanner;

class ProductOrder {
    String productName;
    int price;
    int quantity;

    static ProductOrder CreateOrder(String productName, int price, int quantity) {
        ProductOrder order = new ProductOrder();
        order.productName = productName;
        order.price = price;
        order.quantity = quantity;
        return order;
    }

    static void printOrders(ProductOrder[] orders) {
        for (ProductOrder o : orders) {
            System.out.println("상품명: " + o.productName + ", 가격: " + o.price + ", 수량: " + o.quantity);
            System.err.println(orders.length);
        }
    }

    static int getTotalAmount(ProductOrder[] orders) {
        int result = 0;
        for (int i = 0; i < orders.length; i++) {
            ProductOrder o = orders[i];
            result += o.price * o.quantity;
        }
        return result;
    }
}

class ProductOrderMain {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("입력할 주문의 개수를 입력하세요: ");
        int orderNumber = scanner.nextInt();

        ProductOrder[] orders = new ProductOrder[orderNumber];

        System.err.println(orders.length);
        int i = 0;
        while (i < orderNumber) {
            System.out.println(i + 1 + "번째 주문 정보를 입력하세요.");
            scanner.nextLine();
            System.out.print("상품명: ");
            String productName = scanner.nextLine();
            System.out.print("가격: ");
            int price = scanner.nextInt();
            System.out.print("수량: ");
            int quantity = scanner.nextInt();

            orders[i] = ProductOrder.CreateOrder(productName, price, quantity);
            i++;
        }

        ProductOrder.printOrders(orders);
        int total = ProductOrder.getTotalAmount(orders);
        System.out.println("총 결제 금액: " + total);
    }
}