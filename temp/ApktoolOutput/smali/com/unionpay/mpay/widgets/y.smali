.class public final Lcom/unionpay/mpay/widgets/y;
.super Lcom/unionpay/mpay/widgets/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;)V
    .locals 2

    const/16 v0, 0x3fc

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/unionpay/mpay/widgets/n;-><init>(Landroid/content/Context;ILorg/json/JSONObject;I)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/y;->m:Lcom/unionpay/mpay/widgets/h;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/widgets/h;->a(I)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/y;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
