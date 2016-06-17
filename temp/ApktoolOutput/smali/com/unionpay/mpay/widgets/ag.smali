.class public final Lcom/unionpay/mpay/widgets/ag;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/unionpay/mpay/widgets/ag;-><init>(Landroid/content/Context;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;B)V
    .locals 6

    const/16 v5, 0xf

    const/4 v4, -0x1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/ag;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mpay/widgets/ag;->b:I

    iput-object p1, p0, Lcom/unionpay/mpay/widgets/ag;->a:Landroid/content/Context;

    sget v0, Lccd;->i:I

    iput v0, p0, Lcom/unionpay/mpay/widgets/ag;->b:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/unionpay/mpay/widgets/ag;->b:I

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/widgets/ag;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, -0xe78043

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/widgets/ag;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    iget v2, p0, Lcom/unionpay/mpay/widgets/ag;->b:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v1, Lccd;->a:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mpay/widgets/ag;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mpay/widgets/ag;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lccd;->d:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lccd;->w:I

    sget v3, Lccd;->v:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/ag;->a:Landroid/content/Context;

    invoke-static {v0}, Lccn;->a(Landroid/content/Context;)Lccn;

    move-result-object v0

    const/16 v2, 0x40a

    invoke-virtual {v0, v2, v4, v4}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/unionpay/mpay/widgets/ag;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2, v1}, Lcom/unionpay/mpay/widgets/ag;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
