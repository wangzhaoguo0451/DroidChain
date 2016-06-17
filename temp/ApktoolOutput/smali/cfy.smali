.class public final Lcfy;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcfz;

.field public b:Lcom/unionpay/mpay/utils/UPPayEngine;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcfy;->a:Lcfz;

    iput-object v0, p0, Lcfy;->b:Lcom/unionpay/mpay/utils/UPPayEngine;

    new-instance v0, Lcfz;

    invoke-direct {v0}, Lcfz;-><init>()V

    iput-object v0, p0, Lcfy;->a:Lcfz;

    new-instance v0, Lcom/unionpay/mpay/utils/UPPayEngine;

    invoke-direct {v0, p1}, Lcom/unionpay/mpay/utils/UPPayEngine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcfy;->b:Lcom/unionpay/mpay/utils/UPPayEngine;

    iget-object v0, p0, Lcfy;->b:Lcom/unionpay/mpay/utils/UPPayEngine;

    iget-object v1, p0, Lcfy;->a:Lcfz;

    iget-object v2, v0, Lcom/unionpay/mpay/utils/UPPayEngine;->e:Lcfz;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/unionpay/mpay/utils/UPPayEngine;->e:Lcfz;

    if-eq v2, v1, :cond_1

    :cond_0
    iput-object v1, v0, Lcom/unionpay/mpay/utils/UPPayEngine;->e:Lcfz;

    :cond_1
    return-void
.end method
