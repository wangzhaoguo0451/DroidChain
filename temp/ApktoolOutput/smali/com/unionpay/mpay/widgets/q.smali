.class public final Lcom/unionpay/mpay/widgets/q;
.super Lcom/unionpay/mpay/widgets/m;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;)V
    .locals 9

    const/16 v8, 0x30

    const/high16 v7, 0x4190

    const/4 v6, -0x2

    const/4 v5, 0x0

    invoke-direct {p0, p1, p3}, Lcom/unionpay/mpay/widgets/m;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    iput v5, p0, Lcom/unionpay/mpay/widgets/q;->a:I

    iput p2, p0, Lcom/unionpay/mpay/widgets/q;->a:I

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/q;->k:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mpay/widgets/q;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v0, 0x3ecccccd

    iget v2, p0, Lcom/unionpay/mpay/widgets/q;->a:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, p0, Lcom/unionpay/mpay/widgets/q;->a:I

    sub-int/2addr v2, v0

    sget v3, Lccd;->e:I

    sub-int/2addr v2, v3

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/unionpay/mpay/widgets/q;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/unionpay/mpay/widgets/ah;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, -0x99999a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    sget v0, Lccd;->e:I

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mpay/widgets/q;->d:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/q;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, -0xffb677

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget v3, Lccd;->f:I

    invoke-virtual {v0, v5, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    sget v2, Lccd;->f:I

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    const v4, -0x777778

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mpay/widgets/m;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    iput v3, p0, Lcom/unionpay/mpay/widgets/q;->a:I

    sget v0, Lccd;->e:I

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/ah;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mpay/widgets/q;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/unionpay/mpay/widgets/ah;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v0, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0, v1}, Lcom/unionpay/mpay/widgets/q;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/q;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mpay/widgets/q;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x4190

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/q;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0, v3, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0, v1}, Lcom/unionpay/mpay/widgets/q;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
