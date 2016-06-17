.class public final Lcom/unionpay/mpay/views/v;
.super Lcom/unionpay/mpay/views/b;


# instance fields
.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/unionpay/mpay/views/b;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mpay/views/v;->l:Landroid/widget/TextView;

    new-instance v0, Lcee;

    invoke-direct {v0, p0}, Lcee;-><init>(Lcom/unionpay/mpay/views/v;)V

    iput-object v0, p0, Lcom/unionpay/mpay/views/v;->m:Landroid/view/View$OnClickListener;

    const/16 v0, 0xb

    iput v0, p0, Lcom/unionpay/mpay/views/v;->f:I

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/v;->e()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mpay/views/v;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/v;->b()V

    invoke-super {p0}, Lcom/unionpay/mpay/views/b;->d()V

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/v;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/unionpay/mpay/views/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/unionpay/mpay/views/v;->l()V

    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mpay/views/v;->a:Lcfz;

    iget-object v0, v0, Lcfz;->x:Lcga;

    const-string v1, "success"

    iput-object v1, v0, Lcga;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/v;->h()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 9

    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v7, -0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    sget v0, Lccd;->c:I

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mpay/views/v;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v2, -0x110002

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v4, v0, v4, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mpay/views/v;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/unionpay/mpay/views/v;->a:Lcfz;

    iget-object v3, v3, Lcfz;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41c0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const v3, -0xea7568

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/unionpay/mpay/views/v;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v3, -0x6a2d02

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x2

    invoke-direct {v3, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v4, Lccd;->c:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/unionpay/mpay/views/v;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/unionpay/mpay/views/v;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/v;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mpay/views/v;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/v;->a:Lcfz;

    iget-object v1, v1, Lcfz;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, -0x99999a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mpay/views/v;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mpay/views/v;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/mpay/views/v;->l:Landroid/widget/TextView;

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/v;->l:Landroid/widget/TextView;

    const/high16 v1, 0x41b0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/v;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/v;->l:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/v;->l:Landroid/widget/TextView;

    const/high16 v1, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, -0x4000

    const/high16 v5, 0x6600

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/v;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mpay/views/v;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lccd;->j:I

    iget-object v1, p0, Lcom/unionpay/mpay/views/v;->c:Lccn;

    const/16 v3, 0x7d9

    invoke-virtual {v1, v3, v6, v6}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v3, p0, Lcom/unionpay/mpay/views/v;->l:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v1, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xc

    invoke-virtual {v1, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v0, Lccd;->a:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sget v0, Lccd;->a:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sget v0, Lccd;->c:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/unionpay/mpay/views/v;->j:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mpay/views/v;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/v;->g()V

    iget-object v0, p0, Lcom/unionpay/mpay/views/v;->a:Lcfz;

    const-string v1, "open_rules"

    invoke-static {p1, v1}, Lccx;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcfz;->G:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mpay/views/v;->a:Lcfz;

    iget-object v0, v0, Lcfz;->G:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/views/v;->a:Lcfz;

    iget-object v0, v0, Lcfz;->G:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/v;->c(I)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/v;->e(I)V

    goto :goto_0
.end method

.method protected final b()V
    .locals 5

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/unionpay/mpay/widgets/ag;

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/v;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/mpay/views/v;->a:Lcfz;

    iget-object v3, v3, Lcfz;->p:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/unionpay/mpay/widgets/ag;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/v;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final c()V
    .locals 0

    invoke-direct {p0}, Lcom/unionpay/mpay/views/v;->l()V

    return-void
.end method
