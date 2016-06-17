.class public final Lcdm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/views/ao;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/views/ao;)V
    .locals 0

    iput-object p1, p0, Lcdm;->a:Lcom/unionpay/mpay/views/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcdm;->a:Lcom/unionpay/mpay/views/ao;

    iget-object v0, v0, Lcom/unionpay/mpay/views/ao;->b:Lcem;

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcem;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcdm;->a:Lcom/unionpay/mpay/views/ao;

    invoke-virtual {v0}, Lcom/unionpay/mpay/views/ao;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcdm;->a:Lcom/unionpay/mpay/views/ao;

    invoke-virtual {v0}, Lcom/unionpay/mpay/views/ao;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcdm;->a:Lcom/unionpay/mpay/views/ao;

    iget-object v0, v0, Lcom/unionpay/mpay/views/ao;->a:Lcfz;

    iget-object v0, v0, Lcfz;->C:Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcdm;->a:Lcom/unionpay/mpay/views/ao;

    iget-object v2, v2, Lcom/unionpay/mpay/views/ao;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    iget v3, v2, Lcom/unionpay/mpay/utils/UPPayEngine;->f:I

    invoke-virtual {v2, v3, v1, v0}, Lcom/unionpay/mpay/utils/UPPayEngine;->openRuleMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v2, Lcom/unionpay/mpay/utils/UPPayEngine;->f:I

    invoke-virtual {v2, v3, v0}, Lcom/unionpay/mpay/utils/UPPayEngine;->decryptResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    invoke-virtual {v1, v0}, Lcck;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "sid"

    iget-object v3, v2, Lcom/unionpay/mpay/utils/UPPayEngine;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/unionpay/mpay/utils/UPPayEngine;->a:Lcck;

    iput-object v0, v1, Lcck;->c:Ljava/util/HashMap;

    const-string v0, "openRule"

    invoke-virtual {v2, v0}, Lcom/unionpay/mpay/utils/UPPayEngine;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "1"

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v2, "\"card\":\"%s\""

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcdm;->a:Lcom/unionpay/mpay/views/ao;

    iget-object v0, v0, Lcom/unionpay/mpay/views/ao;->a:Lcfz;

    iget-object v0, v0, Lcfz;->h:Ljava/util/List;

    iget-object v5, p0, Lcdm;->a:Lcom/unionpay/mpay/views/ao;

    iget-object v5, v5, Lcom/unionpay/mpay/views/ao;->a:Lcfz;

    iget v5, v5, Lcfz;->B:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/pboctransaction/model/b;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/model/b;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
