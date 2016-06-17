.class public final Lcom/unionpay/mpay/views/x;
.super Lcom/unionpay/mpay/views/b;

# interfaces
.implements Lcom/unionpay/mpay_2/upview/a$b;


# instance fields
.field private l:I

.field private m:I

.field private n:Lcom/unionpay/mpay_2/upwidget/a;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/unionpay/mpay_2/upview/a;

.field private q:Landroid/view/View$OnClickListener;

.field private r:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/unionpay/mpay/views/b;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/unionpay/mpay/views/x;->l:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/unionpay/mpay/views/x;->m:I

    iput-object v1, p0, Lcom/unionpay/mpay/views/x;->n:Lcom/unionpay/mpay_2/upwidget/a;

    iput-object v1, p0, Lcom/unionpay/mpay/views/x;->o:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/unionpay/mpay/views/x;->p:Lcom/unionpay/mpay_2/upview/a;

    new-instance v0, Lcef;

    invoke-direct {v0, p0}, Lcef;-><init>(Lcom/unionpay/mpay/views/x;)V

    iput-object v0, p0, Lcom/unionpay/mpay/views/x;->q:Landroid/view/View$OnClickListener;

    new-instance v0, Lceg;

    invoke-direct {v0, p0}, Lceg;-><init>(Lcom/unionpay/mpay/views/x;)V

    iput-object v0, p0, Lcom/unionpay/mpay/views/x;->r:Landroid/view/View$OnClickListener;

    const/16 v0, 0xa

    iput v0, p0, Lcom/unionpay/mpay/views/x;->f:I

    const v0, -0x10406

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/x;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/x;->e()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mpay/views/x;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/x;->b()V

    invoke-super {p0}, Lcom/unionpay/mpay/views/b;->d()V

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/x;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/unionpay/mpay/views/x;)Lcom/unionpay/mpay_2/upview/a;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/views/x;->p:Lcom/unionpay/mpay_2/upview/a;

    return-object v0
.end method

.method public static synthetic b(Lcom/unionpay/mpay/views/x;)Lcom/unionpay/mpay_2/upwidget/a;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/views/x;->n:Lcom/unionpay/mpay_2/upwidget/a;

    return-object v0
.end method

.method public static synthetic c(Lcom/unionpay/mpay/views/x;)I
    .locals 1

    const/16 v0, 0x66

    iput v0, p0, Lcom/unionpay/mpay/views/x;->l:I

    return v0
.end method

.method private l()V
    .locals 4

    const/16 v0, 0x67

    iput v0, p0, Lcom/unionpay/mpay/views/x;->l:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/unionpay/mpay/views/x;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/unionpay/mpay/views/x;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    const-string v1, "query"

    iget-object v2, p0, Lcom/unionpay/mpay/views/x;->a:Lcfz;

    iget-object v2, v2, Lcfz;->S:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/unionpay/mpay/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/unionpay/mpay/views/x;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/unionpay/mpay/views/x;->m:I

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, -0x2

    const/4 v6, 0x1

    const/4 v8, -0x1

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/unionpay/mpay/views/x;->d:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v1, Lccd;->e:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/unionpay/mpay/views/x;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/unionpay/mpay_2/upview/a;

    iget-object v1, p0, Lcom/unionpay/mpay/views/x;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/unionpay/mpay/views/x;->a:Lcfz;

    iget-object v2, v2, Lcfz;->G:Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/unionpay/mpay/views/x;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    iget v3, v3, Lcom/unionpay/mpay/utils/UPPayEngine;->f:I

    iget-object v4, p0, Lcom/unionpay/mpay/views/x;->a:Lcfz;

    iget-object v5, v4, Lcfz;->aa:Ljava/lang/String;

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/unionpay/mpay_2/upview/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;ILcom/unionpay/mpay_2/upview/a$b;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/unionpay/mpay/views/x;->p:Lcom/unionpay/mpay_2/upview/a;

    iget-object v0, p0, Lcom/unionpay/mpay/views/x;->p:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mpay/views/x;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v2, Lccd;->c:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sget v2, Lccd;->c:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/x;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/unionpay/mpay_2/upwidget/a;

    iget-object v2, p0, Lcom/unionpay/mpay/views/x;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/unionpay/mpay/views/x;->a:Lcfz;

    iget-object v3, v3, Lcfz;->U:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/unionpay/mpay/views/x;->r:Landroid/view/View$OnClickListener;

    invoke-direct {v1, v2, v3, v4}, Lcom/unionpay/mpay_2/upwidget/a;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/unionpay/mpay/views/x;->n:Lcom/unionpay/mpay_2/upwidget/a;

    iget-object v1, p0, Lcom/unionpay/mpay/views/x;->n:Lcom/unionpay/mpay_2/upwidget/a;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mpay/views/x;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mpay/views/x;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mpay/views/x;->o:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mpay/views/x;->a:Lcfz;

    iget-object v2, v2, Lcfz;->r:Lorg/json/JSONObject;

    const-string v3, "label"

    invoke-static {v2, v3}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/x;->o:Landroid/widget/TextView;

    const/high16 v2, 0x41b0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/x;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/x;->o:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/x;->o:Landroid/widget/TextView;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, -0x4000

    const/high16 v5, 0x6600

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    sget v1, Lccd;->j:I

    iget-object v2, p0, Lcom/unionpay/mpay/views/x;->c:Lccn;

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3, v8, v8}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/mpay/views/x;->o:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/x;->o:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mpay/views/x;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/x;->o:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mpay/views/x;->p:Lcom/unionpay/mpay_2/upview/a;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/unionpay/mpay/views/x;->p:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v3}, Lcom/unionpay/mpay_2/upview/a;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v1, Lccd;->c:I

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sget v1, Lccd;->c:I

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/x;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mpay/views/x;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
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
    iput-boolean v3, p0, Lcom/unionpay/mpay/views/x;->g:Z

    const/16 v0, 0x65

    iput v0, p0, Lcom/unionpay/mpay/views/x;->l:I

    iget-object v0, p0, Lcom/unionpay/mpay/views/x;->b:Lcem;

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcem;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sms elements:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcex;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/unionpay/mpay/views/x;->e:Lcom/unionpay/mpay/utils/UPPayEngine;

    const-string v1, "sms"

    iget-object v2, p1, Lcex;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/unionpay/mpay/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 6

    const/16 v5, 0x64

    const/16 v4, 0x14

    iget v0, p0, Lcom/unionpay/mpay/views/x;->l:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/unionpay/mpay/views/x;->p:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->c()V

    iget-object v0, p0, Lcom/unionpay/mpay/views/x;->b:Lcem;

    invoke-virtual {v0}, Lcem;->b()V

    iput v5, p0, Lcom/unionpay/mpay/views/x;->l:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/unionpay/mpay/views/x;->a:Lcfz;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcfz;->S:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mpay/views/x;->a:Lcfz;

    iget-object v0, v0, Lcfz;->S:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mpay/views/x;->a:Lcfz;

    iget-object v0, v0, Lcfz;->S:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/x;->c(I)V

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/unionpay/mpay/views/x;->m:I

    invoke-direct {p0}, Lcom/unionpay/mpay/views/x;->l()V

    goto :goto_0

    :pswitch_2
    const-string v0, "status"

    invoke-static {p1, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail_msg"

    invoke-static {p1, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mpay/views/x;->a:Lcfz;

    const-string v3, "open_info"

    invoke-static {p1, v3}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcfz;->F:Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/mpay/views/x;->a:Lcfz;

    const-string v3, "title"

    invoke-static {p1, v3}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcfz;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/mpay/views/x;->a:Lcfz;

    const-string v3, "succ_info"

    invoke-static {p1, v3}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcfz;->q:Ljava/lang/String;

    iget v2, p0, Lcom/unionpay/mpay/views/x;->m:I

    if-lez v2, :cond_3

    const-string v2, "01"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/unionpay/mpay/views/x;->l()V

    goto :goto_0

    :cond_3
    iput v5, p0, Lcom/unionpay/mpay/views/x;->l:I

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/x;->g()V

    const-string v2, "00"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/views/x;->e(I)V

    goto/16 :goto_0

    :cond_4
    const-string v2, "03"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lccz;

    invoke-direct {v0, p0}, Lccz;-><init>(Lcom/unionpay/mpay/views/x;)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/x;->b:Lcem;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcem;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/x;->b:Lcem;

    sget-object v2, Lccg;->ab:Lccg;

    iget-object v2, v2, Lccg;->F:Ljava/lang/String;

    sget-object v3, Lccg;->ab:Lccg;

    iget-object v3, v3, Lccg;->G:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Lcem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/unionpay/mpay/views/x;->m:I

    if-gtz v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/unionpay/mpay/views/x;->c(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mpay/views/x;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unionpay/mpay/views/x;->o:Landroid/widget/TextView;

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

    new-instance v1, Lcom/unionpay/mpay/widgets/ag;

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/x;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/mpay/views/x;->a:Lcfz;

    iget-object v3, v3, Lcfz;->p:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/unionpay/mpay/widgets/ag;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/x;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/views/x;->p:Lcom/unionpay/mpay_2/upview/a;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/unionpay/mpay/views/x;->j()V

    goto :goto_0
.end method
