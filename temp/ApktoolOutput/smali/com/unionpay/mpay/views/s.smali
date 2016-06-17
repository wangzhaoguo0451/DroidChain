.class public final Lcom/unionpay/mpay/views/s;
.super Lcom/unionpay/mpay/views/b;

# interfaces
.implements Lcom/unionpay/mpay_2/upview/a$b;


# instance fields
.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Lcom/unionpay/mpay_2/upview/a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/unionpay/mpay/views/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mpay/views/s;->l:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/mpay/views/s;->m:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/unionpay/mpay/views/s;->n:Lcom/unionpay/mpay_2/upview/a;

    const/16 v0, 0xc

    iput v0, p0, Lcom/unionpay/mpay/views/s;->f:I

    new-instance v0, Lcec;

    invoke-direct {v0, p0}, Lcec;-><init>(Lcom/unionpay/mpay/views/s;)V

    iput-object v0, p0, Lcom/unionpay/mpay/views/s;->m:Landroid/view/View$OnClickListener;

    const v0, -0x10406

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/s;->setBackgroundColor(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/s;->b(I)V

    return-void
.end method

.method public static synthetic a(Lcom/unionpay/mpay/views/s;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unionpay/mpay/views/s;->n:Lcom/unionpay/mpay_2/upview/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay_2/upview/a;->a(Z)Lcex;

    move-result-object v0

    invoke-virtual {v0}, Lcex;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/unionpay/mpay/views/s;->g:Z

    iget-object v1, p0, Lcom/unionpay/mpay/views/s;->b:Lcem;

    sget-object v2, Lccg;->ab:Lccg;

    iget-object v2, v2, Lccg;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcem;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/s;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    iget-object v0, v0, Lcex;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/unionpay/mpay/utils/UPPayEngine;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, v0, Lcex;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/mpay/views/b;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 8

    const/4 v7, 0x3

    const/4 v0, 0x1

    const/4 v5, -0x2

    const/4 v6, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v2, Lcom/unionpay/mpay_2/upview/a;

    iget-object v3, p0, Lcom/unionpay/mpay/views/s;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/unionpay/mpay/views/s;->a:Lcfz;

    iget-object v4, v4, Lcfz;->K:Lorg/json/JSONArray;

    invoke-direct {v2, v3, v4, p0}, Lcom/unionpay/mpay_2/upview/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;Lcom/unionpay/mpay_2/upview/a$b;)V

    iput-object v2, p0, Lcom/unionpay/mpay/views/s;->n:Lcom/unionpay/mpay_2/upview/a;

    iget-object v2, p0, Lcom/unionpay/mpay/views/s;->n:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v2, v0}, Lcom/unionpay/mpay_2/upview/a;->setOrientation(I)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/s;->n:Lcom/unionpay/mpay_2/upview/a;

    iget-object v3, p0, Lcom/unionpay/mpay/views/s;->n:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/unionpay/mpay_2/upview/a;->setId(I)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/s;->j:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/unionpay/mpay/views/s;->n:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/s;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/unionpay/mpay/views/s;->a:Lcfz;

    iget-object v2, v2, Lcfz;->L:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/unionpay/mpay/views/s;->c:Lccn;

    const/16 v4, 0x3f9

    invoke-virtual {v3, v4, v6, v6}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/unionpay/mpay_2/upwidget/d;->a(Landroid/content/Context;Lorg/json/JSONObject;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mpay_2/upwidget/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unionpay/mpay_2/upwidget/d;->setId(I)V

    iget-object v2, v1, Lcom/unionpay/mpay_2/upwidget/d;->a:Ljava/lang/String;

    new-instance v3, Lced;

    invoke-direct {v3, p0, v2}, Lced;-><init>(Lcom/unionpay/mpay/views/s;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/unionpay/mpay_2/upwidget/d;->a(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/unionpay/mpay/views/s;->n:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v3}, Lcom/unionpay/mpay_2/upview/a;->getId()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v3, Lccd;->c:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sget v3, Lccd;->c:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/unionpay/mpay/views/s;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mpay/views/s;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mpay/views/s;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mpay/views/s;->l:Landroid/widget/TextView;

    sget-object v3, Lccg;->ab:Lccg;

    iget-object v3, v3, Lccg;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/s;->l:Landroid/widget/TextView;

    const/high16 v3, 0x41b0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/s;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/s;->l:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/s;->l:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mpay/views/s;->n:Lcom/unionpay/mpay_2/upview/a;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/unionpay/mpay/views/s;->n:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v3}, Lcom/unionpay/mpay_2/upview/a;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/s;->l:Landroid/widget/TextView;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, -0x4000

    const/high16 v5, 0x6600

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    sget v0, Lccd;->j:I

    iget-object v2, p0, Lcom/unionpay/mpay/views/s;->c:Lccn;

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3, v6, v6}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/mpay/views/s;->l:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/s;->l:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mpay/views/s;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/unionpay/mpay_2/upwidget/d;->getId()I

    move-result v0

    :goto_1
    invoke-virtual {v2, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v0, Lccd;->e:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/unionpay/mpay/views/s;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mpay/views/s;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/unionpay/mpay/views/s;->n:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->getId()I

    move-result v0

    goto :goto_1
.end method

.method public final a(Lcex;)V
    .locals 0

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/views/s;->b:Lcem;

    invoke-virtual {v0}, Lcem;->b()V

    iget-object v0, p0, Lcom/unionpay/mpay/views/s;->a:Lcfz;

    invoke-static {v0, p1}, Ld;->b(Lcfz;Lorg/json/JSONObject;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/s;->c(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mpay/views/s;->n:Lcom/unionpay/mpay_2/upview/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mpay/views/s;->n:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->e()V

    :cond_1
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/s;->e(I)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mpay/views/s;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unionpay/mpay/views/s;->l:Landroid/widget/TextView;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()V
    .locals 5

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->h:Ljava/lang/String;

    new-instance v2, Lcom/unionpay/mpay/widgets/ag;

    iget-object v3, p0, Lcom/unionpay/mpay/views/s;->d:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/unionpay/mpay/widgets/ag;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/s;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
