.class public final Lcom/unionpay/mpay/views/ao;
.super Lcom/unionpay/mpay/views/b;


# instance fields
.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/unionpay/mpay/views/b;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mpay/views/ao;->l:Landroid/widget/TextView;

    new-instance v0, Lcdl;

    invoke-direct {v0, p0}, Lcdl;-><init>(Lcom/unionpay/mpay/views/ao;)V

    iput-object v0, p0, Lcom/unionpay/mpay/views/ao;->m:Landroid/view/View$OnClickListener;

    new-instance v0, Lcdm;

    invoke-direct {v0, p0}, Lcdm;-><init>(Lcom/unionpay/mpay/views/ao;)V

    iput-object v0, p0, Lcom/unionpay/mpay/views/ao;->n:Landroid/view/View$OnClickListener;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/ao;->b(I)V

    return-void
.end method

.method public static synthetic a(Lcom/unionpay/mpay/views/ao;)V
    .locals 0

    invoke-direct {p0}, Lcom/unionpay/mpay/views/ao;->m()V

    return-void
.end method

.method public static synthetic b(Lcom/unionpay/mpay/views/ao;)Z
    .locals 1

    invoke-direct {p0}, Lcom/unionpay/mpay/views/ao;->l()Z

    move-result v0

    return v0
.end method

.method private final l()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unionpay/mpay/views/ao;->a:Lcfz;

    iget-object v1, v1, Lcfz;->D:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unionpay/mpay/views/ao;->a:Lcfz;

    iget-object v1, v1, Lcfz;->D:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mpay/views/ao;->a:Lcfz;

    iget-object v0, v0, Lcfz;->x:Lcga;

    const-string v1, "success"

    iput-object v1, v0, Lcga;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/ao;->h()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 11

    const/4 v10, 0x0

    const/high16 v9, -0x4000

    const/16 v8, 0x11

    const/4 v6, -0x2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mpay/views/ao;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v3, Lccd;->c:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sget v3, Lccd;->c:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/unionpay/mpay/views/ao;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mpay/views/ao;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    sget v3, Lccd;->c:I

    const/4 v4, 0x0

    sget v5, Lccd;->c:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/unionpay/mpay/views/ao;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/unionpay/mpay/views/ao;->l()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mpay/views/ao;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x4190

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/unionpay/mpay/views/ao;->a:Lcfz;

    iget-object v3, v3, Lcfz;->E:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, -0x99999a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/unionpay/mpay/views/ao;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v4, Lccd;->c:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v4, 0x3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/ao;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v3, Lccd;->j:I

    iget-object v0, p0, Lcom/unionpay/mpay/views/ao;->c:Lccn;

    const/16 v4, 0x7d9

    invoke-virtual {v0, v4, v1, v1}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0}, Lcom/unionpay/mpay/views/ao;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lccd;->B:I

    sget v5, Lccd;->c:I

    mul-int/lit8 v5, v5, 0x3

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    :goto_0
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/unionpay/mpay/views/ao;->d:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/unionpay/mpay/views/ao;->l:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/unionpay/mpay/views/ao;->l:Landroid/widget/TextView;

    sget-object v6, Lccg;->ab:Lccg;

    iget-object v6, v6, Lccg;->r:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/unionpay/mpay/views/ao;->l:Landroid/widget/TextView;

    const/high16 v6, 0x41b0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v5, p0, Lcom/unionpay/mpay/views/ao;->l:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/unionpay/mpay/views/ao;->l:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, p0, Lcom/unionpay/mpay/views/ao;->l:Landroid/widget/TextView;

    const/high16 v6, 0x3f80

    const/high16 v7, 0x6600

    invoke-virtual {v5, v6, v10, v9, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v5, p0, Lcom/unionpay/mpay/views/ao;->l:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/unionpay/mpay/views/ao;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/unionpay/mpay/views/ao;->l:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x9

    invoke-virtual {v5, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v6, 0xf

    invoke-virtual {v5, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v6, p0, Lcom/unionpay/mpay/views/ao;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/unionpay/mpay/views/ao;->l()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/unionpay/mpay/views/ao;->d:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v6, Lccg;->ab:Lccg;

    iget-object v6, v6, Lccg;->s:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41b0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v6, 0x3f80

    const/high16 v7, 0x6600

    invoke-virtual {v5, v6, v10, v9, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v6, p0, Lcom/unionpay/mpay/views/ao;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xf

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto/16 :goto_0
.end method

.method protected final a(I)V
    .locals 8

    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v7, -0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mpay/views/ao;->d:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mpay/views/ao;->d:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/unionpay/mpay/views/ao;->a:Lcfz;

    iget-object v3, v3, Lcfz;->q:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41c0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const v3, -0xea7568

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    sget v3, Lccd;->c:I

    invoke-virtual {v1, v5, v3, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/unionpay/mpay/views/ao;->d:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v3, -0x6a2d02

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v4, Lccd;->c:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/ao;->i:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/ao;->a:Lcfz;

    iget-object v3, v1, Lcfz;->w:Lorg/json/JSONArray;

    const/4 v1, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v1, v0, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/unionpay/mpay/views/ao;->d:Landroid/content/Context;

    invoke-static {v1, v3, v5, v0}, Ld;->a(Landroid/content/Context;Lorg/json/JSONArray;II)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    iget-object v2, p0, Lcom/unionpay/mpay/views/ao;->d:Landroid/content/Context;

    invoke-static {v2, v3, v0, v1}, Ld;->a(Landroid/content/Context;Lorg/json/JSONArray;II)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/ao;->i:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/unionpay/mpay/views/ao;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_1
    new-instance v1, Lcom/unionpay/mpay/widgets/ac;

    iget-object v2, p0, Lcom/unionpay/mpay/views/ao;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/unionpay/mpay/views/ao;->l()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/unionpay/mpay/widgets/ac;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/ao;->i:Landroid/view/ViewGroup;

    new-instance v3, Lcdn;

    invoke-direct {v3, p0, v0}, Lcdn;-><init>(Lcom/unionpay/mpay/views/ao;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/unionpay/mpay/views/ao;->i:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/ao;->g()V

    iget-object v0, p0, Lcom/unionpay/mpay/views/ao;->a:Lcfz;

    const-string v1, "open_rules"

    invoke-static {p1, v1}, Lccx;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcfz;->G:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mpay/views/ao;->a:Lcfz;

    const-string v1, "title"

    invoke-static {p1, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcfz;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/ao;->a:Lcfz;

    const-string v1, "openrules_button"

    invoke-static {p1, v1}, Lccx;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcfz;->r:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mpay/views/ao;->a:Lcfz;

    const-string v1, "service_checkbox"

    invoke-static {p1, v1}, Lccx;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcfz;->U:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mpay/views/ao;->a:Lcfz;

    const-string v1, "pan"

    invoke-static {p1, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcfz;->aa:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/ao;->a:Lcfz;

    iget-object v0, v0, Lcfz;->G:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/views/ao;->a:Lcfz;

    iget-object v0, v0, Lcfz;->G:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/ao;->c(I)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/ao;->e(I)V

    goto :goto_0
.end method

.method protected final b()V
    .locals 5

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/unionpay/mpay/widgets/ag;

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/ao;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/mpay/views/ao;->a:Lcfz;

    iget-object v3, v3, Lcfz;->p:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/unionpay/mpay/widgets/ag;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/ao;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final c()V
    .locals 0

    invoke-direct {p0}, Lcom/unionpay/mpay/views/ao;->m()V

    return-void
.end method
