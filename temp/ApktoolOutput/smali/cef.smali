.class public final Lcef;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/views/x;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/views/x;)V
    .locals 0

    iput-object p1, p0, Lcef;->a:Lcom/unionpay/mpay/views/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcef;->a:Lcom/unionpay/mpay/views/x;

    invoke-virtual {v0}, Lcom/unionpay/mpay/views/x;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcef;->a:Lcom/unionpay/mpay/views/x;

    invoke-static {v0}, Lcom/unionpay/mpay/views/x;->a(Lcom/unionpay/mpay/views/x;)Lcom/unionpay/mpay_2/upview/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->b()Z

    iget-object v0, p0, Lcef;->a:Lcom/unionpay/mpay/views/x;

    invoke-static {v0}, Lcom/unionpay/mpay/views/x;->a(Lcom/unionpay/mpay/views/x;)Lcom/unionpay/mpay_2/upview/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/unionpay/mpay_2/upview/a;->a(Z)Lcex;

    move-result-object v0

    invoke-virtual {v0}, Lcex;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcef;->a:Lcom/unionpay/mpay/views/x;

    iget-object v0, v0, Lcex;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/mpay/views/b;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcef;->a:Lcom/unionpay/mpay/views/x;

    invoke-static {v1}, Lcom/unionpay/mpay/views/x;->b(Lcom/unionpay/mpay/views/x;)Lcom/unionpay/mpay_2/upwidget/a;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcef;->a:Lcom/unionpay/mpay/views/x;

    invoke-static {v1}, Lcom/unionpay/mpay/views/x;->b(Lcom/unionpay/mpay/views/x;)Lcom/unionpay/mpay_2/upwidget/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mpay_2/upwidget/a;->b()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcef;->a:Lcom/unionpay/mpay/views/x;

    iget-object v1, p0, Lcef;->a:Lcom/unionpay/mpay/views/x;

    invoke-static {v1}, Lcom/unionpay/mpay/views/x;->b(Lcom/unionpay/mpay/views/x;)Lcom/unionpay/mpay_2/upwidget/a;

    move-result-object v1

    iget-object v1, v1, Lcom/unionpay/mpay_2/upwidget/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mpay/views/b;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcex;->a:Ljava/lang/String;

    iget-object v1, p0, Lcef;->a:Lcom/unionpay/mpay/views/x;

    iget-object v1, v1, Lcom/unionpay/mpay/views/x;->b:Lcem;

    sget-object v2, Lccg;->ab:Lccg;

    iget-object v2, v2, Lccg;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcem;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcef;->a:Lcom/unionpay/mpay/views/x;

    iget-object v1, v1, Lcom/unionpay/mpay/views/x;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    iget v2, v1, Lcom/unionpay/mpay/utils/UPPayEngine;->f:I

    invoke-virtual {v1, v2, v0}, Lcom/unionpay/mpay/utils/UPPayEngine;->openupgradeMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    invoke-virtual {v2, v0}, Lcck;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "sid"

    iget-object v3, v1, Lcom/unionpay/mpay/utils/UPPayEngine;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    iput-object v0, v2, Lcck;->c:Ljava/util/HashMap;

    const-string v0, "openupgrade"

    invoke-virtual {v1, v0}, Lcom/unionpay/mpay/utils/UPPayEngine;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcef;->a:Lcom/unionpay/mpay/views/x;

    invoke-static {v0}, Lcom/unionpay/mpay/views/x;->c(Lcom/unionpay/mpay/views/x;)I

    goto :goto_0
.end method
