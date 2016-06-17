.class public final Lcom/unionpay/mpay/widgets/a;
.super Lcom/unionpay/mpay/widgets/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;)V
    .locals 3

    const/16 v0, 0x3f6

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/unionpay/mpay/widgets/n;-><init>(Landroid/content/Context;ILorg/json/JSONObject;I)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/a;->m:Lcom/unionpay/mpay/widgets/h;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/widgets/h;->a(Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/a;->m:Lcom/unionpay/mpay/widgets/h;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/widgets/h;->a(I)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
