.class public final Lcds;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/views/e;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/views/e;)V
    .locals 0

    iput-object p1, p0, Lcds;->a:Lcom/unionpay/mpay/views/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcds;->a:Lcom/unionpay/mpay/views/e;

    invoke-static {v0}, Lcom/unionpay/mpay/views/e;->a(Lcom/unionpay/mpay/views/e;)Lcom/unionpay/mpay_2/upview/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->b()Z

    iget-object v0, p0, Lcds;->a:Lcom/unionpay/mpay/views/e;

    iget-object v1, p0, Lcds;->a:Lcom/unionpay/mpay/views/e;

    invoke-static {v1}, Lcom/unionpay/mpay/views/e;->b(Lcom/unionpay/mpay/views/e;)Lcom/unionpay/mpay_2/upwidget/a;

    move-result-object v1

    iget-object v1, v1, Lcom/unionpay/mpay_2/upwidget/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcds;->a:Lcom/unionpay/mpay/views/e;

    invoke-static {v2}, Lcom/unionpay/mpay/views/e;->b(Lcom/unionpay/mpay/views/e;)Lcom/unionpay/mpay_2/upwidget/a;

    move-result-object v2

    iget-object v2, v2, Lcom/unionpay/mpay_2/upwidget/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mpay/views/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
