.class public final Lceg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/views/x;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/views/x;)V
    .locals 0

    iput-object p1, p0, Lceg;->a:Lcom/unionpay/mpay/views/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lceg;->a:Lcom/unionpay/mpay/views/x;

    invoke-static {v0}, Lcom/unionpay/mpay/views/x;->a(Lcom/unionpay/mpay/views/x;)Lcom/unionpay/mpay_2/upview/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->b()Z

    iget-object v0, p0, Lceg;->a:Lcom/unionpay/mpay/views/x;

    iget-object v0, v0, Lcom/unionpay/mpay/views/x;->d:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lceg;->a:Lcom/unionpay/mpay/views/x;

    invoke-virtual {v1}, Lcom/unionpay/mpay/views/x;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lceg;->a:Lcom/unionpay/mpay/views/x;

    iget-object v1, p0, Lceg;->a:Lcom/unionpay/mpay/views/x;

    invoke-static {v1}, Lcom/unionpay/mpay/views/x;->b(Lcom/unionpay/mpay/views/x;)Lcom/unionpay/mpay_2/upwidget/a;

    move-result-object v1

    iget-object v1, v1, Lcom/unionpay/mpay_2/upwidget/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lceg;->a:Lcom/unionpay/mpay/views/x;

    invoke-static {v2}, Lcom/unionpay/mpay/views/x;->b(Lcom/unionpay/mpay/views/x;)Lcom/unionpay/mpay_2/upwidget/a;

    move-result-object v2

    iget-object v2, v2, Lcom/unionpay/mpay_2/upwidget/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mpay/views/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
