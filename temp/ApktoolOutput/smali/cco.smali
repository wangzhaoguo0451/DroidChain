.class public final Lcco;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/se/a;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/se/a;)V
    .locals 0

    iput-object p1, p0, Lcco;->a:Lcom/unionpay/mpay/se/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcco;->a:Lcom/unionpay/mpay/se/a;

    invoke-static {v0}, Lcom/unionpay/mpay/se/a;->a(Lcom/unionpay/mpay/se/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcco;->a:Lcom/unionpay/mpay/se/a;

    invoke-static {v0}, Lcom/unionpay/mpay/se/a;->b(Lcom/unionpay/mpay/se/a;)Lcom/unionpay/mpay_2/upview/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->b()Z

    iget-object v0, p0, Lcco;->a:Lcom/unionpay/mpay/se/a;

    invoke-static {v0}, Lcom/unionpay/mpay/se/a;->b(Lcom/unionpay/mpay/se/a;)Lcom/unionpay/mpay_2/upview/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->a()Lcex;

    move-result-object v0

    invoke-virtual {v0}, Lcex;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcco;->a:Lcom/unionpay/mpay/se/a;

    iget-object v0, v0, Lcex;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/unionpay/mpay/se/a;->a(Lcom/unionpay/mpay/se/a;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcco;->a:Lcom/unionpay/mpay/se/a;

    invoke-static {v0}, Lcom/unionpay/mpay/se/a;->c(Lcom/unionpay/mpay/se/a;)Lcom/unionpay/mpay_2/upwidget/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcco;->a:Lcom/unionpay/mpay/se/a;

    invoke-static {v0}, Lcom/unionpay/mpay/se/a;->c(Lcom/unionpay/mpay/se/a;)Lcom/unionpay/mpay_2/upwidget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upwidget/a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcco;->a:Lcom/unionpay/mpay/se/a;

    iget-object v1, p0, Lcco;->a:Lcom/unionpay/mpay/se/a;

    invoke-static {v1}, Lcom/unionpay/mpay/se/a;->c(Lcom/unionpay/mpay/se/a;)Lcom/unionpay/mpay_2/upwidget/a;

    move-result-object v1

    iget-object v1, v1, Lcom/unionpay/mpay_2/upwidget/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unionpay/mpay/se/a;->b(Lcom/unionpay/mpay/se/a;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcco;->a:Lcom/unionpay/mpay/se/a;

    invoke-static {v0}, Lcom/unionpay/mpay/se/a;->d(Lcom/unionpay/mpay/se/a;)Lcom/unionpay/mpay_2/upwidget/a;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcco;->a:Lcom/unionpay/mpay/se/a;

    invoke-static {v0}, Lcom/unionpay/mpay/se/a;->d(Lcom/unionpay/mpay/se/a;)Lcom/unionpay/mpay_2/upwidget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upwidget/a;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcco;->a:Lcom/unionpay/mpay/se/a;

    iget-object v1, p0, Lcco;->a:Lcom/unionpay/mpay/se/a;

    invoke-static {v1}, Lcom/unionpay/mpay/se/a;->d(Lcom/unionpay/mpay/se/a;)Lcom/unionpay/mpay_2/upwidget/a;

    move-result-object v1

    iget-object v1, v1, Lcom/unionpay/mpay_2/upwidget/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unionpay/mpay/se/a;->c(Lcom/unionpay/mpay/se/a;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcco;->a:Lcom/unionpay/mpay/se/a;

    invoke-static {v0}, Lcom/unionpay/mpay/se/a;->e(Lcom/unionpay/mpay/se/a;)Lcem;

    move-result-object v0

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcem;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcco;->a:Lcom/unionpay/mpay/se/a;

    invoke-static {v0}, Lcom/unionpay/mpay/se/a;->b(Lcom/unionpay/mpay/se/a;)Lcom/unionpay/mpay_2/upview/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay_2/upview/a;->a(Z)Lcex;

    iget-object v1, p0, Lcco;->a:Lcom/unionpay/mpay/se/a;

    iget-object v0, p0, Lcco;->a:Lcom/unionpay/mpay/se/a;

    invoke-static {v0}, Lcom/unionpay/mpay/se/a;->g(Lcom/unionpay/mpay/se/a;)Lcfz;

    move-result-object v0

    iget-object v0, v0, Lcfz;->h:Ljava/util/List;

    iget-object v2, p0, Lcco;->a:Lcom/unionpay/mpay/se/a;

    invoke-static {v2}, Lcom/unionpay/mpay/se/a;->f(Lcom/unionpay/mpay/se/a;)Lcfz;

    move-result-object v2

    iget v2, v2, Lcfz;->B:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/pboctransaction/model/b;

    iget-object v2, p0, Lcco;->a:Lcom/unionpay/mpay/se/a;

    invoke-static {v2}, Lcom/unionpay/mpay/se/a;->b(Lcom/unionpay/mpay/se/a;)Lcom/unionpay/mpay_2/upview/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unionpay/mpay_2/upview/a;->a()Lcex;

    move-result-object v2

    iget-object v2, v2, Lcex;->a:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/unionpay/mpay/se/a;->a(Lcom/unionpay/mpay/se/a;Lcom/unionpay/pboctransaction/model/b;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
