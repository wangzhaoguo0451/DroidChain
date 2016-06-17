.class public final Lafo;
.super Ladx;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ladx;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 94
    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 95
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 96
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 97
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 98
    const-string v1, "right"

    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 108
    :cond_0
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    :cond_1
    return-void

    .line 100
    :cond_2
    const-string v1, "left"

    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 102
    :cond_3
    const-string v1, "center"

    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 105
    :cond_4
    if-eqz p1, :cond_0

    .line 106
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 67
    iget-boolean v0, p0, Lafo;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 68
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lafo;->e:Ljava/lang/String;

    invoke-static {v0, p2}, Lafz;->b(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v0

    .line 70
    if-nez v0, :cond_2

    .line 71
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 75
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 76
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 78
    const-string v1, "center"

    iget-object v2, p0, Lafo;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 88
    :cond_0
    :goto_2
    return-void

    .line 67
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 80
    :cond_3
    const-string v1, "left"

    iget-object v2, p0, Lafo;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    const/16 v1, 0x13

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_2

    .line 82
    :cond_4
    const-string v1, "right"

    iget-object v2, p0, Lafo;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const/16 v1, 0x15

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_2
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Ladx;->a(Lorg/json/JSONObject;)V

    .line 45
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lafo;->c:Ljava/lang/String;

    .line 46
    const-string v0, "display"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lafo;->d:Z

    .line 47
    const-string v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lafo;->e:Ljava/lang/String;

    .line 48
    const-string v0, "align"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lafo;->f:Ljava/lang/String;

    .line 49
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lafo;->g:Ljava/lang/String;

    .line 51
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 55
    const-string v0, "mini_ui_component"

    invoke-static {v0}, Lg;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lafo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Ladx;->i()V

    .line 123
    return-void
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lafo;->g:Ljava/lang/String;

    return-object v0
.end method
