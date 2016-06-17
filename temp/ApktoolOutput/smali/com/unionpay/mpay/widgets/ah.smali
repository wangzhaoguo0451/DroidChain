.class public abstract Lcom/unionpay/mpay/widgets/ah;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field protected d:Landroid/content/Context;

.field public e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field protected h:Z

.field protected i:Ljava/lang/String;

.field public j:Landroid/widget/TextView;

.field protected k:Landroid/widget/RelativeLayout;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 6

    const/4 v5, -0x2

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/unionpay/mpay/widgets/ah;->d:Landroid/content/Context;

    const/high16 v0, -0x100

    iput v0, p0, Lcom/unionpay/mpay/widgets/ah;->a:I

    const v0, -0x777778

    iput v0, p0, Lcom/unionpay/mpay/widgets/ah;->b:I

    iput-object v3, p0, Lcom/unionpay/mpay/widgets/ah;->e:Ljava/lang/String;

    iput-object v3, p0, Lcom/unionpay/mpay/widgets/ah;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/unionpay/mpay/widgets/ah;->l:Ljava/lang/String;

    iput-object v3, p0, Lcom/unionpay/mpay/widgets/ah;->f:Ljava/lang/String;

    iput-object v3, p0, Lcom/unionpay/mpay/widgets/ah;->m:Ljava/lang/String;

    iput-object v3, p0, Lcom/unionpay/mpay/widgets/ah;->g:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/unionpay/mpay/widgets/ah;->h:Z

    iput-object v3, p0, Lcom/unionpay/mpay/widgets/ah;->i:Ljava/lang/String;

    iput-object v3, p0, Lcom/unionpay/mpay/widgets/ah;->j:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/unionpay/mpay/widgets/ah;->k:Landroid/widget/RelativeLayout;

    iput-boolean v2, p0, Lcom/unionpay/mpay/widgets/ah;->n:Z

    iput-object p1, p0, Lcom/unionpay/mpay/widgets/ah;->d:Landroid/content/Context;

    const-string v0, "label"

    invoke-static {p2, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/ah;->f:Ljava/lang/String;

    const-string v0, "placeholder"

    invoke-static {p2, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/ah;->g:Ljava/lang/String;

    const-string v0, "tip"

    invoke-static {p2, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/ah;->m:Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p2, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/ah;->e:Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p2, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/ah;->c:Ljava/lang/String;

    const-string v0, "type"

    invoke-static {p2, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/ah;->l:Ljava/lang/String;

    const-string v0, "regexp"

    invoke-static {p2, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/ah;->i:Ljava/lang/String;

    const-string v0, "readonly"

    invoke-static {p2, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/unionpay/mpay/widgets/ah;->h:Z

    :cond_0
    const-string v0, "margin"

    invoke-static {p2, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/unionpay/mpay/widgets/ah;->n:Z

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/widgets/ah;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Lcom/unionpay/mpay/widgets/ah;->setBackgroundColor(I)V

    invoke-virtual {p0, v1}, Lcom/unionpay/mpay/widgets/ah;->setOrientation(I)V

    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/unionpay/mpay/widgets/ah;->setPadding(IIII)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/ah;->l:Ljava/lang/String;

    const-string v2, "string"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mpay/widgets/ah;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/ah;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/ah;->j:Landroid/widget/TextView;

    const/high16 v2, 0x41a0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/ah;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mpay/widgets/ah;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/ah;->j:Landroid/widget/TextView;

    iget v2, p0, Lcom/unionpay/mpay/widgets/ah;->a:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lccd;->e:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/unionpay/mpay/widgets/ah;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0}, Lcom/unionpay/mpay/widgets/ah;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/ah;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/ah;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mpay/widgets/ah;->j:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    invoke-direct {p0}, Lcom/unionpay/mpay/widgets/ah;->d()V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/ah;->m:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/ah;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_3
    :goto_1
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    new-instance v2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/ah;->d:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x4170

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget v0, p0, Lcom/unionpay/mpay/widgets/ah;->b:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/ah;->m:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {v3, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-boolean v0, p0, Lcom/unionpay/mpay/widgets/ah;->n:Z

    if-ne v0, v1, :cond_6

    sget v0, Lccd;->c:I

    :goto_2
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, v2, v3}, Lcom/unionpay/mpay/widgets/ah;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_6
    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/unionpay/mpay/widgets/ah;->d()V

    goto :goto_1
.end method

.method private d()V
    .locals 3

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/ah;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/ah;->k:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/ah;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mpay/widgets/ah;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/ah;->c:Ljava/lang/String;

    return-object v0
.end method
