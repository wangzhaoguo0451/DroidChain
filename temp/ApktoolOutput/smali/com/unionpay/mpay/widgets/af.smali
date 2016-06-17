.class public final Lcom/unionpay/mpay/widgets/af;
.super Lcom/unionpay/mpay/widgets/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;)V
    .locals 3

    const/16 v0, 0x3f7

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/unionpay/mpay/widgets/n;-><init>(Landroid/content/Context;ILorg/json/JSONObject;I)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/af;->m:Lcom/unionpay/mpay/widgets/h;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/widgets/h;->a(Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/af;->m:Lcom/unionpay/mpay/widgets/h;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/widgets/h;->a(I)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/af;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v2, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    rem-int/lit8 v4, v4, 0x64

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-lez v3, :cond_1

    const/16 v6, 0xc

    if-gt v3, v6, :cond_1

    if-gt v2, v4, :cond_0

    if-ne v2, v4, :cond_1

    if-lt v3, v5, :cond_1

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/af;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {v0}, Lcom/unionpay/mpay/widgets/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
