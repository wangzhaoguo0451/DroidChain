.class public final Lcom/unionpay/mpay/widgets/z;
.super Lcom/unionpay/mpay/widgets/n;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public a:Lcom/unionpay/mpay/widgets/z$a;

.field public b:Landroid/os/Handler;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x3fd

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/unionpay/mpay/widgets/n;-><init>(Landroid/content/Context;ILorg/json/JSONObject;I)V

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/z;->a:Lcom/unionpay/mpay/widgets/z$a;

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/z;->c:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/z;->b:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/unionpay/mpay/widgets/z;->d()V

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/z;->a:Lcom/unionpay/mpay/widgets/z$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;B)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x3fd

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/unionpay/mpay/widgets/n;-><init>(Landroid/content/Context;ILorg/json/JSONObject;I)V

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/z;->a:Lcom/unionpay/mpay/widgets/z$a;

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/z;->c:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/z;->b:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/unionpay/mpay/widgets/z;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/unionpay/mpay/widgets/z;)Lcom/unionpay/mpay/widgets/z$a;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/z;->a:Lcom/unionpay/mpay/widgets/z$a;

    return-object v0
.end method

.method public static synthetic b(Lcom/unionpay/mpay/widgets/z;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/z;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 8

    const/16 v7, 0xf

    const/4 v6, -0x1

    iget v0, p0, Lcom/unionpay/mpay/widgets/z;->l:I

    sget v1, Lccd;->a:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/z;->m:Lcom/unionpay/mpay/widgets/h;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/unionpay/mpay/widgets/h;->a(Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/z;->m:Lcom/unionpay/mpay/widgets/h;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/unionpay/mpay/widgets/h;->a(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mpay/widgets/z;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {v2, v1}, Lcom/unionpay/mpay/widgets/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/z;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/z;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/z;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/z;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccn;->a(Landroid/content/Context;)Lccn;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3, v6, v6}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/z;->c:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/z;->c:Landroid/widget/TextView;

    sget-object v2, Lccg;->ab:Lccg;

    iget-object v2, v2, Lccg;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/z;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/z;->c:Landroid/widget/TextView;

    const/high16 v2, 0x4180

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/z;->c:Landroid/widget/TextView;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, -0x4000

    const/high16 v5, 0x6600

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/z;->c:Landroid/widget/TextView;

    new-instance v2, Lceh;

    invoke-direct {v2, p0}, Lceh;-><init>(Lcom/unionpay/mpay/widgets/z;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/unionpay/mpay/widgets/z;->l:I

    sub-int v0, v2, v0

    sget v2, Lccd;->r:I

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    invoke-virtual {v1, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/z;->k:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mpay/widgets/z;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/z;->c:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/unionpay/mpay/widgets/z;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/z;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mpay/widgets/z;->c:Landroid/widget/TextView;

    const v1, -0x666667

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/unionpay/mpay/widgets/z;->h:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/unionpay/mpay/widgets/z;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->o:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mpay/widgets/z;->a(ZLjava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unionpay/mpay/widgets/z;->b:Landroid/os/Handler;

    goto :goto_0

    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    sget-object v2, Lccg;->ab:Lccg;

    iget-object v2, v2, Lccg;->p:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/unionpay/mpay/widgets/z;->a(ZLjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
