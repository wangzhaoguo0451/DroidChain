.class public Lcom/sina/weibo/sdk/component/view/AttentionComponentView;
.super Landroid/widget/FrameLayout;
.source "AttentionComponentView.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private volatile b:Z

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->b:Z

    .line 62
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->b:Z

    .line 57
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x11

    const/4 v3, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 66
    .line 67
    const-string v0, "common_button_white.9.png"

    .line 68
    const-string v1, "common_button_white_highlighted.9.png"

    .line 66
    invoke-static {p1, v0, v1}, Lbwf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 70
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    .line 71
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lbwf;->a(Landroid/content/Context;I)I

    move-result v0

    .line 73
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lbwf;->a(Landroid/content/Context;I)I

    move-result v1

    .line 74
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lbwf;->a(Landroid/content/Context;I)I

    move-result v2

    .line 75
    iget-object v3, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5, v0, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 76
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 77
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x42

    invoke-static {v2, v3}, Lbwf;->a(Landroid/content/Context;I)I

    move-result v2

    .line 78
    invoke-direct {v1, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->addView(Landroid/view/View;)V

    .line 81
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 83
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 84
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    const/high16 v1, 0x4150

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 85
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 88
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 89
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 92
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x1010079

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->e:Landroid/widget/ProgressBar;

    .line 93
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->e:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 94
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 97
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 98
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    new-instance v1, Lbvn;

    invoke-direct {v1, p0}, Lbvn;-><init>(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-direct {p0, v5}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a(Z)V

    .line 109
    return-void
.end method

.method public static synthetic a(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 188
    new-instance v0, Lbvk;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbvk;-><init>(Landroid/content/Context;)V

    const-string v1, "http://widget.weibo.com/relationship/followsdk.php"

    invoke-virtual {v0, v1}, Lbvk;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    const-string v1, "Follow"

    const-string v2, "\u5173\u6ce8"

    const-string v3, "\u95dc\u6ce8"

    invoke-static {v1, v2, v3}, Lbwf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbvb;->g:Ljava/lang/String;

    iput-object v4, v0, Lbvk;->j:Ljava/lang/String;

    iput-object v4, v0, Lbvk;->k:Ljava/lang/String;

    iput-object v4, v0, Lbvk;->a:Lbuv;

    iput-object v4, v0, Lbvk;->i:Ljava/lang/String;

    new-instance v1, Lbvl;

    invoke-direct {v1, p0}, Lbvl;-><init>(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;)V

    iput-object v1, v0, Lbvk;->c:Lbvl;

    invoke-virtual {v0}, Lbvk;->a()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic a(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 131
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->e:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 132
    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    .line 134
    const-string v1, "Following"

    const-string v2, "\u5df2\u5173\u6ce8"

    const-string v3, "\u5df2\u95dc\u6ce8"

    .line 133
    invoke-static {v1, v2, v3}, Lbwf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 137
    const-string v1, "timeline_relationship_icon_attention.png"

    .line 136
    invoke-static {v0, v1}, Lbwf;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 149
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    .line 142
    const-string v1, "Follow"

    const-string v2, "\u5173\u6ce8"

    const-string v3, "\u95dc\u6ce8"

    .line 141
    invoke-static {v1, v2, v3}, Lbwf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    const/16 v1, -0x7e00

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 145
    const-string v1, "timeline_relationship_icon_addattention.png"

    .line 144
    invoke-static {v0, v1}, Lbwf;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->b:Z

    return-void
.end method


# virtual methods
.method public setAttentionParam$37a7b272(Laf;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 112
    invoke-static {}, Laf;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->b:Z

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v0, Lbvy;

    invoke-direct {v0, v2}, Lbvy;-><init>(Ljava/lang/String;)V

    const-string v1, "access_token"

    invoke-virtual {v0, v1, v2}, Lbvy;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "target_id"

    invoke-virtual {v0, v1, v2}, Lbvy;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "target_screen_name"

    invoke-virtual {v0, v1, v2}, Lbvy;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "https://api.weibo.com/2/friendships/show.json"

    const-string v3, "GET"

    new-instance v4, Lbvo;

    invoke-direct {v4, p0}, Lbvo;-><init>(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;)V

    new-instance v5, Lbvs;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v5, v1}, Lbvs;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2, v0, v3, v4}, Lbvs;->a(Ljava/lang/String;Lbvy;Ljava/lang/String;Lbvx;)V

    .line 116
    :cond_0
    return-void
.end method
