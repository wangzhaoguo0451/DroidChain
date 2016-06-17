.class public final Lcom/unionpay/mpay_2/upview/listview/d;
.super Landroid/widget/RelativeLayout;


# instance fields
.field public a:Landroid/widget/ImageView;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    const/16 v6, 0xf

    const/4 v5, 0x0

    const/4 v4, -0x2

    const/4 v0, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/d;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/d;->c:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/d;->a:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/unionpay/mpay_2/upview/listview/d;->b:Landroid/content/Context;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/unionpay/mpay_2/upview/listview/d;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget v1, Lccd;->a:I

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/unionpay/mpay_2/upview/listview/d;->setPadding(IIII)V

    if-nez p3, :cond_1

    if-eqz p4, :cond_4

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    if-eqz p4, :cond_2

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    if-eqz p3, :cond_3

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/unionpay/mpay_2/upview/listview/d;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mpay_2/upview/listview/d;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/unionpay/mpay_2/upview/listview/d;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v1, Lccd;->z:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lccd;->b:I

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/unionpay/mpay_2/upview/listview/d;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lccd;->s:I

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v2, Lccd;->a:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mpay_2/upview/listview/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lccd;->s:I

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_5
    invoke-virtual {v1, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v0, Lccd;->b:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/d;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/d;->c:Landroid/widget/TextView;

    const/high16 v2, 0x41a0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/d;->c:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/d;->c:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/d;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/d;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mpay_2/upview/listview/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/d;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/d;->c:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
