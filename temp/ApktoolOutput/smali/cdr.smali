.class public final Lcdr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/views/e;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/views/e;)V
    .locals 0

    iput-object p1, p0, Lcdr;->a:Lcom/unionpay/mpay/views/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcdr;->a:Lcom/unionpay/mpay/views/e;

    invoke-virtual {v0}, Lcom/unionpay/mpay/views/e;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcdr;->a:Lcom/unionpay/mpay/views/e;

    invoke-static {v0}, Lcom/unionpay/mpay/views/e;->a(Lcom/unionpay/mpay/views/e;)Lcom/unionpay/mpay_2/upview/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->b()Z

    iget-object v0, p0, Lcdr;->a:Lcom/unionpay/mpay/views/e;

    invoke-static {v0}, Lcom/unionpay/mpay/views/e;->a(Lcom/unionpay/mpay/views/e;)Lcom/unionpay/mpay_2/upview/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay_2/upview/a;->a(Z)Lcex;

    move-result-object v0

    invoke-virtual {v0}, Lcex;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcdr;->a:Lcom/unionpay/mpay/views/e;

    iget-object v0, v0, Lcex;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/unionpay/mpay/views/b;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcdr;->a:Lcom/unionpay/mpay/views/e;

    invoke-static {v1}, Lcom/unionpay/mpay/views/e;->b(Lcom/unionpay/mpay/views/e;)Lcom/unionpay/mpay_2/upwidget/a;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcdr;->a:Lcom/unionpay/mpay/views/e;

    invoke-static {v1}, Lcom/unionpay/mpay/views/e;->b(Lcom/unionpay/mpay/views/e;)Lcom/unionpay/mpay_2/upwidget/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mpay_2/upwidget/a;->b()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcdr;->a:Lcom/unionpay/mpay/views/e;

    iget-object v1, p0, Lcdr;->a:Lcom/unionpay/mpay/views/e;

    invoke-static {v1}, Lcom/unionpay/mpay/views/e;->b(Lcom/unionpay/mpay/views/e;)Lcom/unionpay/mpay_2/upwidget/a;

    move-result-object v1

    iget-object v1, v1, Lcom/unionpay/mpay_2/upwidget/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/unionpay/mpay/views/b;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcdr;->a:Lcom/unionpay/mpay/views/e;

    iget-object v1, v1, Lcom/unionpay/mpay/views/e;->b:Lcem;

    sget-object v2, Lccg;->ab:Lccg;

    iget-object v2, v2, Lccg;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcem;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcdr;->a:Lcom/unionpay/mpay/views/e;

    invoke-static {v1}, Lcom/unionpay/mpay/views/e;->c(Lcom/unionpay/mpay/views/e;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcdr;->a:Lcom/unionpay/mpay/views/e;

    iget-object v1, v1, Lcom/unionpay/mpay/views/e;->a:Lcfz;

    iget-object v1, v1, Lcfz;->r:Lorg/json/JSONObject;

    const-string v2, "action"

    invoke-static {v1, v2}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcdr;->a:Lcom/unionpay/mpay/views/e;

    iget-object v2, v2, Lcom/unionpay/mpay/views/e;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    iget-object v0, v0, Lcex;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, v3}, Lcom/unionpay/mpay/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcdr;->a:Lcom/unionpay/mpay/views/e;

    const/16 v1, 0x66

    invoke-static {v0, v1}, Lcom/unionpay/mpay/views/e;->a(Lcom/unionpay/mpay/views/e;I)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcdr;->a:Lcom/unionpay/mpay/views/e;

    invoke-static {v0}, Lcom/unionpay/mpay/views/e;->d(Lcom/unionpay/mpay/views/e;)V

    iget-object v0, p0, Lcdr;->a:Lcom/unionpay/mpay/views/e;

    const/16 v1, 0x68

    invoke-static {v0, v1}, Lcom/unionpay/mpay/views/e;->a(Lcom/unionpay/mpay/views/e;I)I

    goto/16 :goto_0
.end method
