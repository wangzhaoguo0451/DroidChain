.class public Lcom/sina/weibo/sdk/component/view/CommentComponentView;
.super Landroid/widget/FrameLayout;
.source "CommentComponentView.java"


# instance fields
.field private a:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->a(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->a(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/16 v4, 0x14

    const/16 v7, 0x10

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 48
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->a:Landroid/widget/LinearLayout;

    .line 49
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->a:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 52
    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 56
    const-string v1, "sdk_weibo_logo.png"

    .line 55
    invoke-static {p1, v1}, Lbwf;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 58
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lbwf;->a(Landroid/content/Context;I)I

    move-result v2

    .line 59
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lbwf;->a(Landroid/content/Context;I)I

    move-result v3

    .line 57
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 65
    const-string v2, "Comment"

    .line 66
    const-string v3, "\u5fae\u535a\u70ed\u8bc4"

    .line 67
    const-string v4, "\u5fae\u535a\u71b1\u8a55"

    .line 64
    invoke-static {v2, v3, v4}, Lbwf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const/16 v2, -0x7e00

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    const/4 v2, 0x2

    const/high16 v3, 0x4170

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 70
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 71
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 75
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lbwf;->a(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 76
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->addView(Landroid/view/View;)V

    .line 82
    new-instance v0, Lbvq;

    invoke-direct {v0, p0}, Lbvq;-><init>(Lcom/sina/weibo/sdk/component/view/CommentComponentView;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method public static synthetic a(Lcom/sina/weibo/sdk/component/view/CommentComponentView;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 95
    new-instance v0, Lbvk;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbvk;-><init>(Landroid/content/Context;)V

    const-string v1, "http://widget.weibo.com/distribution/socail_comments_sdk.php"

    invoke-virtual {v0, v1}, Lbvk;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    const-string v1, "Comment"

    const-string v2, "\u5fae\u535a\u70ed\u8bc4"

    const-string v3, "\u5fae\u535a\u71b1\u8a55"

    invoke-static {v1, v2, v3}, Lbwf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbvb;->g:Ljava/lang/String;

    iput-object v4, v0, Lbvk;->j:Ljava/lang/String;

    iput-object v4, v0, Lbvk;->m:Ljava/lang/String;

    iput-object v4, v0, Lbvk;->l:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbvk;->n:Ljava/lang/String;

    iput-object v4, v0, Lbvk;->a:Lbuv;

    iput-object v4, v0, Lbvk;->i:Ljava/lang/String;

    invoke-virtual {v0}, Lbvk;->a()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public setCommentParam$45b49d2f(Lvp;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    return-void
.end method
