.class public final Lcem;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/app/Dialog;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View$OnClickListener;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View$OnClickListener;

.field private g:I

.field private h:Lccn;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcem;->b:Landroid/content/Context;

    iput-object v1, p0, Lcem;->c:Landroid/widget/TextView;

    iput-object v1, p0, Lcem;->d:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lcem;->e:Landroid/widget/TextView;

    iput-object v1, p0, Lcem;->f:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput v0, p0, Lcem;->g:I

    iput-object v1, p0, Lcem;->h:Lccn;

    iput-object v1, p0, Lcem;->a:Landroid/app/Dialog;

    iput-object v1, p0, Lcem;->i:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcem;->j:Landroid/content/DialogInterface$OnDismissListener;

    iput-object p1, p0, Lcem;->b:Landroid/content/Context;

    iput-object p2, p0, Lcem;->j:Landroid/content/DialogInterface$OnDismissListener;

    invoke-static {p1}, Lccn;->a(Landroid/content/Context;)Lccn;

    move-result-object v0

    iput-object v0, p0, Lcem;->h:Lccn;

    sget v0, Lccd;->B:I

    sget v1, Lccd;->a:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    iput v0, p0, Lcem;->g:I

    iget v0, p0, Lcem;->g:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcem;->h:Lccn;

    const/16 v2, 0x409

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v0, v3}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcem;->i:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 6

    const/16 v5, 0xfa4

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcem;->b()V

    new-instance v0, Lcen;

    invoke-direct {v0, p1}, Lcen;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcem;->a:Landroid/app/Dialog;

    iget-object v0, p0, Lcem;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcem;->j:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcem;->a:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcem;->a:Landroid/app/Dialog;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcem;->a:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcem;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcem;->h:Lccn;

    invoke-virtual {v1, v5, v4, v4}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcem;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcem;->h:Lccn;

    invoke-virtual {v2, v5, v4, v4}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcem;->g:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcem;->a:Landroid/app/Dialog;

    invoke-virtual {v2, v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcem;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcem;->d:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcem;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 9

    const/16 v8, 0x11

    const/4 v7, -0x1

    const/4 v6, -0x2

    iget-object v0, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcem;->a(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget v2, Lccd;->h:I

    iget v3, p0, Lcem;->g:I

    shl-int/lit8 v4, v2, 0x1

    sub-int/2addr v3, v4

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcem;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    shl-int/lit8 v3, v2, 0x1

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x4190

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const v4, -0xcccccd

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget v3, Lccd;->l:I

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v2, Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcem;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcem;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcem;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcem;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x4190

    const/16 v6, 0x11

    const/4 v4, -0x2

    const/4 v5, -0x1

    iget-object v0, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcem;->a(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    sget v1, Lccd;->a:I

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41a0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const v3, -0xffb677

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    shl-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const v3, -0xcccccd

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1, v1, v1, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v3, Lccd;->a:I

    shl-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcem;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcem;->c:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcem;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcem;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcem;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    sget v2, Lccd;->k:I

    iget-object v3, p0, Lcem;->h:Lccn;

    const/16 v4, 0x7d5

    invoke-virtual {v3, v4, v5, v5}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcem;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcem;->d:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcem;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcem;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcem;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/unionpay/mpay/widgets/g;

    iget-object v2, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v5}, Lcom/unionpay/mpay/widgets/g;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lccd;->A:I

    invoke-direct {v2, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcem;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcem;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcem;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcem;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v6, 0x1

    const/high16 v9, 0x4190

    const/16 v8, 0x11

    const/4 v4, -0x2

    const/4 v7, -0x1

    iget-object v0, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcem;->a(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    sget v1, Lccd;->a:I

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41a0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const v3, -0xffb677

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    shl-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const v3, -0xcccccd

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v1, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v3, Lccd;->a:I

    shl-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget v2, p0, Lcem;->g:I

    sget v3, Lccd;->A:I

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcem;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcem;->c:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcem;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcem;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcem;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    sget v3, Lccd;->k:I

    iget-object v4, p0, Lcem;->h:Lccn;

    const/16 v5, 0x7d1

    invoke-virtual {v4, v5, v7, v7}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcem;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcem;->d:Landroid/view/View$OnClickListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcem;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lcem;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcem;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/unionpay/mpay/widgets/g;

    iget-object v5, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v4, v5, v7, v6}, Lcom/unionpay/mpay/widgets/g;-><init>(Landroid/content/Context;II)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    sget v6, Lccd;->A:I

    invoke-direct {v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcem;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lcem;->e:Landroid/widget/TextView;

    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcem;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcem;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcem;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lcem;->h:Lccn;

    const/16 v5, 0x7d2

    invoke-virtual {v4, v5, v7, v7}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcem;->e:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcem;->f:Landroid/view/View$OnClickListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcem;->e:Landroid/widget/TextView;

    iget-object v5, p0, Lcem;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcem;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/unionpay/mpay/widgets/g;

    iget-object v2, p0, Lcem;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v7}, Lcom/unionpay/mpay/widgets/g;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lccd;->A:I

    invoke-direct {v2, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcem;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcem;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcem;->c()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcem;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcem;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcem;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcem;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcem;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcem;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcem;->a:Landroid/app/Dialog;

    :cond_0
    return-void
.end method
