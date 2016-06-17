.class public final Lcom/unionpay/mpay/widgets/s;
.super Lcom/unionpay/mpay/widgets/n;


# instance fields
.field private a:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;)V
    .locals 6

    const/16 v4, 0x3f6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/unionpay/mpay/widgets/n;-><init>(Landroid/content/Context;ILorg/json/JSONObject;IB)V

    new-instance v0, Lcet;

    invoke-direct {v0, p0}, Lcet;-><init>(Lcom/unionpay/mpay/widgets/s;)V

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/s;->a:Landroid/text/TextWatcher;

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/s;->m:Lcom/unionpay/mpay/widgets/h;

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/s;->a:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/widgets/h;->a(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/s;->m:Lcom/unionpay/mpay/widgets/h;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/widgets/h;->a(Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/s;->m:Lcom/unionpay/mpay/widgets/h;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/widgets/h;->a(I)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/unionpay/mpay/widgets/s;->h:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/s;->b()Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0xd

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v0, v3, :cond_5

    const/16 v0, 0x13

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v0, v7, -0x2

    move v3, v2

    move v4, v0

    move v5, v2

    :goto_1
    if-ltz v4, :cond_2

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    rem-int/lit8 v8, v3, 0x2

    if-nez v8, :cond_1

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v8, v0, 0xa

    rem-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v8

    :cond_1
    add-int/2addr v5, v0

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    rem-int/lit8 v0, v5, 0xa

    if-nez v0, :cond_3

    const/16 v0, 0x30

    :goto_2
    add-int/lit8 v3, v7, -0x1

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_3
    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_3
    rem-int/lit8 v0, v5, 0xa

    rsub-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/s;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {v0}, Lcom/unionpay/mpay/widgets/h;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
