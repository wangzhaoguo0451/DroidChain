.class public final Lccp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/unionpay/pboctransaction/model/b;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/unionpay/mpay/se/a;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/se/a;Lcom/unionpay/pboctransaction/model/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lccp;->c:Lcom/unionpay/mpay/se/a;

    iput-object p2, p0, Lccp;->a:Lcom/unionpay/pboctransaction/model/b;

    iput-object p3, p0, Lccp;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lccp;->c:Lcom/unionpay/mpay/se/a;

    invoke-static {v0}, Lcom/unionpay/mpay/se/a;->i(Lcom/unionpay/mpay/se/a;)Lcfz;

    move-result-object v0

    iget-object v2, v0, Lcfz;->Z:Lcfg;

    iget-object v0, p0, Lccp;->a:Lcom/unionpay/pboctransaction/model/b;

    iget-object v3, p0, Lccp;->b:Ljava/lang/String;

    iget-object v4, p0, Lccp;->c:Lcom/unionpay/mpay/se/a;

    invoke-static {v4}, Lcom/unionpay/mpay/se/a;->h(Lcom/unionpay/mpay/se/a;)Lcfz;

    move-result-object v4

    iget-object v4, v4, Lcfz;->g:Ljava/util/HashMap;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lccp;->c:Lcom/unionpay/mpay/se/a;

    invoke-static {v2}, Lcom/unionpay/mpay/se/a;->j(Lcom/unionpay/mpay/se/a;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lccp;->c:Lcom/unionpay/mpay/se/a;

    invoke-static {v3}, Lcom/unionpay/mpay/se/a;->j(Lcom/unionpay/mpay/se/a;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    :goto_1
    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/unionpay/pboctransaction/model/b;->d()I

    move-result v5

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/model/b;->e()I

    move-result v6

    if-ne v6, v8, :cond_4

    new-instance v6, Lcom/unionpay/pboctransaction/AppIdentification;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/model/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lcom/unionpay/pboctransaction/AppIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/model/b;->e()I

    move-result v0

    if-ne v0, v8, :cond_1

    const-string v0, "2"

    :goto_2
    const/16 v7, 0x8

    if-ne v5, v7, :cond_2

    iget-object v2, v2, Lcfg;->b:Lcfo;

    invoke-virtual {v2, v6, v3, v0, v4}, Lcfo;->a(Lcom/unionpay/pboctransaction/AppIdentification;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "1"

    goto :goto_2

    :cond_2
    const/4 v7, 0x4

    if-ne v5, v7, :cond_3

    iget-object v2, v2, Lcfg;->c:Lcfo;

    invoke-virtual {v2, v6, v3, v0, v4}, Lcfo;->a(Lcom/unionpay/pboctransaction/AppIdentification;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v7, 0x10

    if-ne v5, v7, :cond_6

    iget-object v2, v2, Lcfg;->e:Lcfo;

    invoke-virtual {v2, v6, v3, v0, v4}, Lcfo;->a(Lcom/unionpay/pboctransaction/AppIdentification;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    if-ne v6, v4, :cond_6

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/model/b;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lcfg;->b:Lcfo;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0, v3}, Lcfo;->b(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method
