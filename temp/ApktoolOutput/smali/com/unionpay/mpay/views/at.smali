.class public final Lcom/unionpay/mpay/views/at;
.super Lcom/unionpay/mpay/views/b;

# interfaces
.implements Lcom/unionpay/mpay_2/upview/b$a;


# instance fields
.field private l:Lcom/unionpay/mpay_2/upview/b;

.field private m:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/unionpay/mpay/views/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mpay/views/at;->l:Lcom/unionpay/mpay_2/upview/b;

    iput-object v0, p0, Lcom/unionpay/mpay/views/at;->m:Landroid/view/ViewGroup;

    const/16 v0, 0xe

    iput v0, p0, Lcom/unionpay/mpay/views/at;->f:I

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/at;->e()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mpay/views/at;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/at;->b()V

    invoke-virtual {p0}, Lcom/unionpay/mpay/views/at;->d()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method protected final b()V
    .locals 5

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/unionpay/mpay/widgets/ag;

    iget-object v2, p0, Lcom/unionpay/mpay/views/at;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/unionpay/mpay/views/at;->a:Lcfz;

    iget-object v3, v3, Lcfz;->Q:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/unionpay/mpay/widgets/ag;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/at;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final d()V
    .locals 8

    const/16 v7, 0xc

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, -0x2

    const/4 v3, -0x1

    invoke-super {p0}, Lcom/unionpay/mpay/views/b;->d()V

    new-instance v0, Lcom/unionpay/mpay_2/upview/b;

    iget-object v1, p0, Lcom/unionpay/mpay/views/at;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/unionpay/mpay_2/upview/b;-><init>(Landroid/content/Context;Lcom/unionpay/mpay_2/upview/b$a;)V

    iput-object v0, p0, Lcom/unionpay/mpay/views/at;->l:Lcom/unionpay/mpay_2/upview/b;

    iget-object v0, p0, Lcom/unionpay/mpay/views/at;->l:Lcom/unionpay/mpay_2/upview/b;

    new-instance v1, Lcdo;

    invoke-direct {v1}, Lcdo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay_2/upview/b;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/at;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/at;->j:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mpay/views/at;->l:Lcom/unionpay/mpay_2/upview/b;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mpay/views/at;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mpay/views/at;->m:Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lccd;->n:I

    sget v2, Lccd;->i:I

    sub-int/2addr v1, v2

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mpay/views/at;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mpay/views/at;->j:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mpay/views/at;->m:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/unionpay/mpay/views/at;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mpay/views/at;->m:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/at;->l:Lcom/unionpay/mpay_2/upview/b;

    iget-object v1, p0, Lcom/unionpay/mpay/views/at;->a:Lcfz;

    iget-object v1, v1, Lcfz;->R:Ljava/lang/String;

    iget-object v2, v0, Lcom/unionpay/mpay_2/upview/b;->a:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, v0, Lcom/unionpay/mpay_2/upview/b;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mpay/views/at;->l:Lcom/unionpay/mpay_2/upview/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay_2/upview/b;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/at;->m:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mpay/views/at;->l:Lcom/unionpay/mpay_2/upview/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay_2/upview/b;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mpay/views/at;->m:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
