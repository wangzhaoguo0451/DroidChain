.class public final Lcom/unionpay/mpay/views/aj;
.super Lcom/unionpay/mpay/views/b;

# interfaces
.implements Lcom/unionpay/mpay_2/upview/a$b;


# instance fields
.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I

.field private p:Lcom/unionpay/mpay_2/upwidget/a;

.field private q:Lcom/unionpay/mpay_2/upwidget/a;

.field private r:Landroid/widget/TextView;

.field private s:Lcom/unionpay/mpay_2/upview/a;

.field private t:Z

.field private u:Z

.field private v:Landroid/view/View$OnClickListener;

.field private w:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/unionpay/mpay/views/b;-><init>(Landroid/content/Context;)V

    const-string v0, "00"

    iput-object v0, p0, Lcom/unionpay/mpay/views/aj;->l:Ljava/lang/String;

    iput v1, p0, Lcom/unionpay/mpay/views/aj;->m:I

    iput v1, p0, Lcom/unionpay/mpay/views/aj;->n:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/unionpay/mpay/views/aj;->o:I

    iput-object v2, p0, Lcom/unionpay/mpay/views/aj;->p:Lcom/unionpay/mpay_2/upwidget/a;

    iput-object v2, p0, Lcom/unionpay/mpay/views/aj;->q:Lcom/unionpay/mpay_2/upwidget/a;

    iput-object v2, p0, Lcom/unionpay/mpay/views/aj;->r:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/unionpay/mpay/views/aj;->s:Lcom/unionpay/mpay_2/upview/a;

    iput-boolean v1, p0, Lcom/unionpay/mpay/views/aj;->t:Z

    iput-boolean v1, p0, Lcom/unionpay/mpay/views/aj;->u:Z

    new-instance v0, Lcdh;

    invoke-direct {v0, p0}, Lcdh;-><init>(Lcom/unionpay/mpay/views/aj;)V

    iput-object v0, p0, Lcom/unionpay/mpay/views/aj;->v:Landroid/view/View$OnClickListener;

    new-instance v0, Lcdi;

    invoke-direct {v0, p0}, Lcdi;-><init>(Lcom/unionpay/mpay/views/aj;)V

    iput-object v0, p0, Lcom/unionpay/mpay/views/aj;->w:Landroid/view/View$OnClickListener;

    const/4 v0, 0x6

    iput v0, p0, Lcom/unionpay/mpay/views/aj;->f:I

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-boolean v0, v0, Lcfz;->z:Z

    iput-boolean v0, p0, Lcom/unionpay/mpay/views/aj;->u:Z

    const v0, -0x10406

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/aj;->setBackgroundColor(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/aj;->b(I)V

    return-void
.end method

.method public static synthetic a(Lcom/unionpay/mpay/views/aj;)Lcom/unionpay/mpay_2/upview/a;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->s:Lcom/unionpay/mpay_2/upview/a;

    return-object v0
.end method

.method public static synthetic a(Lcom/unionpay/mpay/views/aj;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/mpay/views/aj;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/unionpay/mpay/views/aj;ZLjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/unionpay/mpay/views/aj;->g:Z

    if-nez p1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/unionpay/mpay/views/aj;->n:I

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    iget-object v1, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v1, v1, Lcfz;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, v2}, Lcom/unionpay/mpay/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/unionpay/mpay/views/aj;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/unionpay/mpay/views/aj;)Lcom/unionpay/mpay_2/upwidget/a;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->q:Lcom/unionpay/mpay_2/upwidget/a;

    return-object v0
.end method

.method public static synthetic c(Lcom/unionpay/mpay/views/aj;)Lcom/unionpay/mpay_2/upwidget/a;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->p:Lcom/unionpay/mpay_2/upwidget/a;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/unionpay/mpay/views/aj;->g:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/unionpay/mpay/views/aj;->n:I

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v0, v0, Lcfz;->r:Lorg/json/JSONObject;

    invoke-static {v0}, Ld;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    const-string v3, "1"

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->p:Lcom/unionpay/mpay_2/upwidget/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->p:Lcom/unionpay/mpay_2/upwidget/a;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upwidget/a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v3, v0, p1}, Ld;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/unionpay/mpay/views/aj;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    invoke-virtual {v2, v1, v0, v4}, Lcom/unionpay/mpay/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic d(Lcom/unionpay/mpay/views/aj;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/unionpay/mpay/views/aj;->t:Z

    return v0
.end method

.method public static synthetic e(Lcom/unionpay/mpay/views/aj;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mpay/views/aj;->n:I

    return v0
.end method

.method private f(I)V
    .locals 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/unionpay/mpay/views/aj;->n:I

    iput p1, p0, Lcom/unionpay/mpay/views/aj;->m:I

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    const-string v1, "query"

    iget-object v2, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v2, v2, Lcfz;->S:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/unionpay/mpay/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/unionpay/mpay/views/aj;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/unionpay/mpay/views/aj;->o:I

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 11

    const/4 v10, 0x3

    const/4 v6, 0x1

    const/4 v9, -0x2

    const/4 v8, -0x1

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->d:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/aj;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/unionpay/mpay_2/upview/a;

    iget-object v1, p0, Lcom/unionpay/mpay/views/aj;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v2, v2, Lcfz;->o:Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/unionpay/mpay/views/aj;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    iget v3, v3, Lcom/unionpay/mpay/utils/UPPayEngine;->f:I

    iget-object v4, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v5, v4, Lcfz;->aa:Ljava/lang/String;

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/unionpay/mpay_2/upview/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;ILcom/unionpay/mpay_2/upview/a$b;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/unionpay/mpay/views/aj;->s:Lcom/unionpay/mpay_2/upview/a;

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->s:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mpay/views/aj;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v2, Lccd;->e:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/unionpay/mpay/views/aj;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/aj;->f()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v1, v1, Lcfz;->U:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v1, v1, Lcfz;->V:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v1, v1, Lcfz;->U:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/unionpay/mpay_2/upwidget/a;

    iget-object v2, p0, Lcom/unionpay/mpay/views/aj;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v3, v3, Lcfz;->U:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/unionpay/mpay/views/aj;->w:Landroid/view/View$OnClickListener;

    invoke-direct {v1, v2, v3, v4}, Lcom/unionpay/mpay_2/upwidget/a;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/unionpay/mpay/views/aj;->q:Lcom/unionpay/mpay_2/upwidget/a;

    iget-object v1, p0, Lcom/unionpay/mpay/views/aj;->q:Lcom/unionpay/mpay_2/upwidget/a;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v1, v1, Lcfz;->V:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/unionpay/mpay_2/upwidget/a;

    iget-object v2, p0, Lcom/unionpay/mpay/views/aj;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v3, v3, Lcfz;->V:Lorg/json/JSONObject;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/unionpay/mpay_2/upwidget/a;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/unionpay/mpay/views/aj;->p:Lcom/unionpay/mpay_2/upwidget/a;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lccd;->e:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/unionpay/mpay/views/aj;->p:Lcom/unionpay/mpay_2/upwidget/a;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mpay/views/aj;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mpay/views/aj;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mpay/views/aj;->r:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v2, v2, Lcfz;->r:Lorg/json/JSONObject;

    const-string v3, "label"

    invoke-static {v2, v3}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/aj;->r:Landroid/widget/TextView;

    const/high16 v2, 0x41b0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/aj;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/aj;->r:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/aj;->r:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mpay/views/aj;->s:Lcom/unionpay/mpay_2/upview/a;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/unionpay/mpay/views/aj;->s:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v2}, Lcom/unionpay/mpay_2/upview/a;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    :goto_0
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/aj;->r:Landroid/widget/TextView;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, -0x4000

    const/high16 v5, 0x6600

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    sget v1, Lccd;->j:I

    iget-object v2, p0, Lcom/unionpay/mpay/views/aj;->c:Lccn;

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3, v8, v8}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/mpay/views/aj;->r:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/aj;->r:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mpay/views/aj;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v0, Lccd;->e:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mpay/views/aj;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public final a(Lcex;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcex;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcex;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/unionpay/mpay/views/b;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sms elements:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcex;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-boolean v3, p0, Lcom/unionpay/mpay/views/aj;->g:Z

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->b:Lcem;

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcem;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    const-string v1, "sms"

    iget-object v2, p1, Lcex;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/unionpay/mpay/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/unionpay/mpay/views/aj;->n:I

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/unionpay/mpay/views/aj;->u:Z

    iget v0, p0, Lcom/unionpay/mpay/views/aj;->n:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/unionpay/mpay/views/aj;->g()V

    iput v2, p0, Lcom/unionpay/mpay/views/aj;->n:I

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->s:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->c()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/unionpay/mpay/views/aj;->g()V

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    invoke-static {v0, p1, v3}, Ld;->a(Lcfz;Lorg/json/JSONObject;Z)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/aj;->c(I)V

    :cond_1
    :goto_1
    iput v2, p0, Lcom/unionpay/mpay/views/aj;->n:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iput-boolean v3, v0, Lcfz;->z:Z

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v0, v0, Lcfz;->o:Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v0, v0, Lcfz;->o:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/aj;->e(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v0, v0, Lcfz;->s:Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v0, v0, Lcfz;->s:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/aj;->e(I)V

    goto :goto_1

    :pswitch_3
    const-string v0, "status"

    invoke-static {p1, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mpay/views/aj;->l:Ljava/lang/String;

    iget v0, p0, Lcom/unionpay/mpay/views/aj;->o:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->l:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/unionpay/mpay/views/aj;->m:I

    invoke-direct {p0, v0}, Lcom/unionpay/mpay/views/aj;->f(I)V

    goto :goto_0

    :cond_4
    iput v2, p0, Lcom/unionpay/mpay/views/aj;->n:I

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->l:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/unionpay/mpay/views/aj;->m:I

    packed-switch v0, :pswitch_data_1

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/aj;->g()V

    iput v2, p0, Lcom/unionpay/mpay/views/aj;->n:I

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    const-string v1, "result"

    invoke-static {p1, v1}, Lccx;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcfz;->w:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    const-string v1, "openupgrade_flag"

    invoke-static {p1, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcfz;->D:Ljava/lang/String;

    const-string v0, "temporary_pay_flag"

    invoke-static {p1, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    const-string v1, "temporary_pay_info"

    invoke-static {p1, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcfz;->E:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    const-string v1, "front_url"

    invoke-static {p1, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcfz;->I:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    const-string v1, "front_request"

    invoke-static {p1, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcfz;->J:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    const-string v1, "title"

    invoke-static {p1, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcfz;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    const-string v1, "succ_info"

    invoke-static {p1, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcfz;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->s:Lcom/unionpay/mpay_2/upview/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->s:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->e()V

    :cond_5
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/aj;->e(I)V

    goto/16 :goto_0

    :pswitch_4
    iput-boolean v3, p0, Lcom/unionpay/mpay/views/aj;->t:Z

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->s:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v0, v3}, Lcom/unionpay/mpay_2/upview/a;->a(Z)Lcex;

    move-result-object v0

    iget-object v0, v0, Lcex;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/unionpay/mpay/views/aj;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->l:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "fail_msg"

    invoke-static {p1, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/unionpay/mpay/views/aj;->m:I

    if-ne v1, v4, :cond_7

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/mpay/views/b;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_7
    new-instance v1, Lcdj;

    invoke-direct {v1, p0}, Lcdj;-><init>(Lcom/unionpay/mpay/views/aj;)V

    new-instance v2, Lcdk;

    invoke-direct {v2, p0}, Lcdk;-><init>(Lcom/unionpay/mpay/views/aj;)V

    iget-object v3, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-boolean v3, v3, Lcfz;->u:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/unionpay/mpay/views/aj;->b:Lcem;

    invoke-virtual {v3, v1, v2}, Lcem;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/aj;->b:Lcem;

    sget-object v2, Lccg;->ab:Lccg;

    iget-object v2, v2, Lccg;->F:Ljava/lang/String;

    sget-object v3, Lccg;->ab:Lccg;

    iget-object v3, v3, Lccg;->G:Ljava/lang/String;

    sget-object v4, Lccg;->ab:Lccg;

    iget-object v4, v4, Lccg;->H:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/unionpay/mpay/views/aj;->b:Lcem;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcem;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/aj;->b:Lcem;

    sget-object v2, Lccg;->ab:Lccg;

    iget-object v2, v2, Lccg;->F:Ljava/lang/String;

    sget-object v3, Lccg;->ab:Lccg;

    iget-object v3, v3, Lccg;->G:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/unionpay/mpay/views/aj;->o:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/unionpay/mpay/views/aj;->m:I

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v0, v0, Lcfz;->T:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/unionpay/mpay/views/aj;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v0, v0, Lcfz;->T:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/mpay/views/b;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcfz;->S:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v0, v0, Lcfz;->S:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v0, v0, Lcfz;->S:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_c

    :cond_b
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/aj;->c(I)V

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x14

    iput v0, p0, Lcom/unionpay/mpay/views/aj;->o:I

    iget v0, p0, Lcom/unionpay/mpay/views/aj;->n:I

    invoke-direct {p0, v0}, Lcom/unionpay/mpay/views/aj;->f(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unionpay/mpay/views/aj;->r:Landroid/widget/TextView;

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

.method protected final a(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mpay/views/aj;->u:Z

    return v0
.end method

.method protected final b()V
    .locals 5

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/unionpay/mpay/widgets/ag;

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/aj;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v3, v3, Lcfz;->p:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/unionpay/mpay/widgets/ag;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/aj;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/unionpay/mpay/views/aj;->g:Z

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->b:Lcem;

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcem;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "\"card\":\""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v0, v0, Lcfz;->h:Ljava/util/List;

    iget-object v2, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget v2, v2, Lcfz;->B:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/pboctransaction/model/b;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/model/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cmd:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ele:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unionpay/mpay/views/aj;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    invoke-virtual {v1, p1, v0, v3}, Lcom/unionpay/mpay/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/unionpay/mpay/views/aj;->n:I

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->s:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-boolean v0, v0, Lcfz;->z:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/unionpay/mpay/views/aj;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iput-boolean v1, v0, Lcfz;->z:Z

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v1, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iget-object v1, v1, Lcfz;->v:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Ld;->a(Lcfz;Lorg/json/JSONObject;)I

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/aj;->j()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    iput-boolean v1, v0, Lcfz;->z:Z

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->a:Lcfz;

    const/4 v1, 0x0

    iput-object v1, v0, Lcfz;->v:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/aj;->i()V

    goto :goto_0
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/unionpay/mpay/views/b;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/unionpay/mpay/views/aj;->s:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->b()Z

    return-void
.end method
