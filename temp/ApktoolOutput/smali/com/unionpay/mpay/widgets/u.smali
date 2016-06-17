.class public final Lcom/unionpay/mpay/widgets/u;
.super Lcom/unionpay/mpay/widgets/n;


# instance fields
.field public a:Lcom/unionpay/mpay/widgets/u$a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/unionpay/mpay/widgets/u;-><init>(Landroid/content/Context;ILorg/json/JSONObject;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;B)V
    .locals 9

    const/16 v8, 0xf

    const/16 v7, 0xb

    const/4 v1, 0x0

    const/4 v6, -0x1

    const/16 v0, 0x3fa

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/unionpay/mpay/widgets/n;-><init>(Landroid/content/Context;ILorg/json/JSONObject;I)V

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/u;->a:Lcom/unionpay/mpay/widgets/u$a;

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/u;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/u;->c:Ljava/lang/String;

    const-string v0, "button_label"

    invoke-static {p3, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/u;->b:Ljava/lang/String;

    const-string v0, "button_action"

    invoke-static {p3, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/u;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/u;->m:Lcom/unionpay/mpay/widgets/h;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/widgets/h;->a(Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/u;->m:Lcom/unionpay/mpay/widgets/h;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/widgets/h;->a(I)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/u;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/u;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/unionpay/mpay/widgets/u;->l:I

    sget v1, Lccd;->a:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mpay/widgets/u;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {v2, v1}, Lcom/unionpay/mpay/widgets/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/u;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/u;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccn;->a(Landroid/content/Context;)Lccn;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3, v6, v6}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/unionpay/mpay/widgets/u;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x4180

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, -0x4000

    const/high16 v5, 0x6600

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    new-instance v2, Lceu;

    invoke-direct {v2, p0}, Lceu;-><init>(Lcom/unionpay/mpay/widgets/u;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/unionpay/mpay/widgets/u;->l:I

    sub-int v0, v3, v0

    sget v3, Lccd;->r:I

    invoke-direct {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/u;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/unionpay/mpay/widgets/u;)Lcom/unionpay/mpay/widgets/u$a;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/u;->a:Lcom/unionpay/mpay/widgets/u$a;

    return-object v0
.end method

.method public static synthetic b(Lcom/unionpay/mpay/widgets/u;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/u;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/unionpay/mpay/widgets/u;->h:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/unionpay/mpay/widgets/u;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {v2}, Lcom/unionpay/mpay/widgets/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/u;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {v0}, Lcom/unionpay/mpay/widgets/h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
